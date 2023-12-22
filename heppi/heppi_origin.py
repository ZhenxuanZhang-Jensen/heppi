# -*- coding: utf-8 -*-
import io
try:
    import ROOT
    from ROOT import TGaxis, gPad
except ImportError:
    raise ImportError(
        """
        ROOT is not in your environement, or not intsalled.
        Please check!
        """)
try:
    from termcolor    import colored
    from jsmin        import jsmin
    from progressbar  import ProgressBar, Bar, Percentage, ETA
    from jsonmerge    import merge
    from tabulate     import tabulate

except ImportError:
    raise ImportError(
        """please install termcolor and jsmin, and try again.
        Suggestion: pip install requirement.txt --user
        """)
import  glob, json, re, logging, collections, math, parser
from    collections        import OrderedDict
import  settings
from os import system, path #FIXME

logging.basicConfig(format=colored('%(levelname)s:',attrs = ['bold'])
                    + colored('%(name)s:','blue') + ' %(message)s')
logger = logging.getLogger('heppi')
logger.setLevel(level=logging.INFO)

class utils:
    @staticmethod
    def find_between( s, first, last ):
        try:
            start = s.index( first ) + len( first )
            end = s.index( last, start )
            return s[start:end]
        except ValueError:
            return ""
    @staticmethod
    def fformat(num, unit):
        """
        Formating the float number to string :
            1.0     --> '' # only if there is a unit
            2.0     --> 2
            0.21    --> 0.21
            0.32112 --> 0.32
        """
        if num != 1:
            s = ('%g'% (num)).rstrip('0').rstrip('.')
        else :
            s = ('' if unit else '1')
        return s
    @staticmethod
    def draw_cut_line(hist, variable, axis=''):
        if len(variable.cut) != 0:
            ymin  = hist.GetMinimum()
            ymax  = hist.GetMaximum()
            cuttt = variable.cut.replace('(','').replace(')','')
            for cut in  cuttt.split('&&'):
                stmp = cut.split('>')
                if len(stmp) == 1:
                    stmp = cut.split('<')
                print 'ED DEBUG stmp %s'%stmp
                #cut = eval(parser.expr(stmp[1]).compile()) #ED DEBUG
                cut = float(stmp[1])
                line = ROOT.TLine()
                line.SetLineColor(settings.cut_line_color)
                line.SetLineStyle(settings.cut_line_style)
                if axis == 'x':
                    ymin = hist.GetYaxis().GetXmin()
                    ymax = hist.GetYaxis().GetXmax()
                    if cut > hist.GetXaxis().GetXmin() or cut < hist.GetXaxis().GetXmax():
                        line.DrawLine(cut,ymin,cut,ymax)
                elif axis == 'y':
                    xmin = hist.GetXaxis().GetXmin()
                    xmax = hist.GetXaxis().GetXmax()
                    if cut > hist.GetYaxis().GetXmin() or cut < hist.GetYaxis().GetXmax():
                        line.DrawLine(xmin,cut,xmax,cut)
                else:
                    line.DrawLine(xmin,cut,xmax,cut)
    @staticmethod
    def draw_labels(label, position='top'):
        t = ROOT.TLatex()
        t.SetTextAlign(12)
        t.SetTextFont (settings.text_font)
        t.SetTextSize (settings.text_size)
        shift = 0
        lines = []
        ystart = 0.95
        if position == 'top'    : ystart = 0.95
        if position == 'bottom' : ystart = 0.6

        if type(label) == type(''):
            lines = label.split('\\')
        elif type(label) == type([]):
            lines = label
        else:
            raise ImportError("Label format is not supported: please enter a string or a table of strings!")

        for s in lines:
            t.DrawLatexNDC((0.04   + ROOT.gStyle.GetPadLeftMargin()),
                           (ystart - shift - ROOT.gStyle.GetPadTopMargin()),s)
            shift = shift + settings.label_shift
    @staticmethod
    def draw_cms_headlabel(label_left  ='#scale[1.2]{#bf{CMS}} #it{Preliminary}',
                           label_right ='#sqrt{s} = 13 TeV, L = 2.56 fb^{-1}'):
        tex_left  = ROOT.TLatex()
        tex_left.SetTextAlign (11);
        tex_left.SetTextFont  (42);
        tex_left.SetTextSize  (0.036);
        tex_right = ROOT.TLatex()
        tex_right.SetTextAlign(31);
        tex_right.SetTextFont (42);
        tex_right.SetTextSize (0.036);
        tex_left.DrawLatexNDC (0.14,
                               1.01 - ROOT.gStyle.GetPadTopMargin(),label_left)
        tex_right.DrawLatexNDC(1-0.05,
                               1.01 - ROOT.gStyle.GetPadTopMargin(),label_right)
    @staticmethod
    def scatter_cms_headlabel(label_left  ='#scale[1.2]{#bf{CMS}} #it{Preliminary}',
                              label_right ='#sqrt{s} = 13 TeV, L = 2.56 fb^{-1}'):
        tex_left  = ROOT.TLatex()
        tex_left.SetTextAlign (11);
        tex_left.SetTextFont  (42);
        tex_left.SetTextSize  (0.036);
        tex_right = ROOT.TLatex()
        tex_right.SetTextAlign(31);
        tex_right.SetTextFont (42);
        tex_right.SetTextSize (0.036);
        tex_left.DrawLatexNDC (0.15,
                               1.01 - ROOT.gStyle.GetPadTopMargin(),label_left)
        tex_right.DrawLatexNDC(1-0.11,
                               1.01 - ROOT.gStyle.GetPadTopMargin(),label_right)
class variable(object):
    """
    variable class contains all the infmation
    and options related to the desired plot :
    * name :
    * hist : definition of the histogram
        * Example:
            ```"hist" :[100,0,100]```
    * cut     :
    * blind   :
    * formula :
    * log     :
    * norm    :
    * title   :
    * unit    :
    * boundaries :
    """
    def __init__(self, name="", options = {}):
        self.__template__ = {
            "name"    : "",
            "hist"    : "(100,0,100)",
            "cut"     : "",
            "blind"   : "",
            "formula"    : "",
            "log"        : False,
            "norm"       : False,
            "title"      : "",
            "unit"       : "",
            "boundaries" : [],
            "range"      : [],
            "nbin"       : 100,
            # internal methods
            "root_legend"  : None,
            "root_cutflow" : '',
            "root_histos"     : None,
            "root_stack"      : None,
        }
        self.__dict__ = self.__template__
        self.__dict__.update(options)
        self.name     = name
        self.formula  = self.name
        if ':=' in self.formula:
            self.name     = self.formula.split(':=')[0]
            self.formula  = self.formula.split(':=')[1]
        if type(self.hist) == type([]) or type(self.hist) == type(()):
            self.nbin  = self.hist[0]
            self.range = self.hist[1:]
            self.hist = '(%s)' % (', '.join(map(str, self.hist)))
        else:
            self.range = re.findall("[-+]?\d+[\.]?\d*",self.hist)
            self.nbin  = int(self.range[0])
            self.range = [float(x) for x in self.range[1:]]
        if (self.unit == '') and ('[' and ']' in self.title):
                self.unit = utils.find_between( self.title , "[", "]" )

        self.root_histos = []
    def clear(self):
        self.root_histos  = []
        self.root_stack   = None
        self.root_cutflow = ''
    def __str__(self):
        return " -- variable :: %20s %18s %12s" % (self.name, self.hist, self.unit)
class systematic(object):
    """
    object type containing Heppi options:
    * ratio_range : the range in the ratio plots
    """
    def __init__(self, options = {}):
        self.__template__ = {
            "up_tree"      : [],
            "down_tree"    : [],
            "up_root_tree"  : None,
            "down_root_tree": None,
            "up_histo"  : None,
            "down_histo": None
        }
        self.__dict__  = self.__template__
        self.__dict__.update(options)
    def append_tree(self, tree=None, level='up'):
        if tree  == None: return
        if level == 'up':
            if self.up_root_tree == None :
                self.up_root_tree = tree
            else:
                self.up_root_tree.Add(tree)
        elif level == 'down':
            if self.down_root_tree == None :
                self.down_root_tree = tree
            else:
                self.down_root_tree.Add(tree)
        else:
            logger.error('systematic level does not exist, please use up or down')
    def append_hist(self, histo=None, level='down'):
        if histo  == None: return
        if level == 'up':
            if self.up_histo == None :
                self.up_histo = histo
            else:
                self.up_histo.Add(histo)
        elif level == 'down':
            if self.down_histo == None :
                self.down_histo = histo
            else:
                self.down_histo.Add(histo)
        else:
            logger.error('systematic level does not exist, please use up or down')
    def clear_histograms(self):
        self.up_histo       = None
        self.down_histo     = None

class sample  (object):
    """
    object type for sample and options :
    * files : represents the name of the input files you can give a string or a combination
              of string to match the files name.
              You can declare a single string or an array if you want to combine many files all together.
    * cut   : string cut appied only on this sample
    * tree  : tree string name of the sample. The tree name can be specified also in the for each input file by putting ':' after the file name followed by the tree name
    * color : the color that will be displayed on the rendered plot for this sample
    * order : stacking order
    * title : string title that will be displayed in the plot legend
    * label : tree type of labling are supported by `Heppi` :
        * signal    : this sample will be not stacked in final plot.
        * spectator : not stacked in the final plots
        * background: will be stacked in the final plot
        * data      : will be drawn on top of the stacked and, signal and spectator histograms
    """
    def __init__(self, name="", options = {}):
        self.__template__ = {
            "color"  : 0 ,
            "order"  : 0 ,
            "files"  : "",
            "title"  : "",
            "cut"    : "",
            "tree"   : "",
            "label"  : "",
            "kfactor": 1.0,
            "systematics"   : {}
        }
        self.__dict__  = self.__template__
        self.__dict__.update(options)
        self.name      = name
        self.label     = self.label.lower()
        self.root_tree = ROOT.TChain()
    def set_root_tree(self,tree):
        """
        return: ROOT tree
        """
        self.root_tree = tree
    def set_syst_tree(self, syst ,tree_up, tree_dw):
        if self.systematics.get(syst,None) == None:
            _syst_ = {
                "up_root_tree"   : tree_up,
                "down_root_tree" : tree_dw
            }
            self.systematics[syst] = systematic(_syst_)
        else:
            self.systematics[syst].up_root_tree   = tree_up
            self.systematics[syst].down_root_tree = tree_dw
    def __str__(self):
        return " -- sample :: %20s %12i" % (self.name, self.root_tree.GetEntries())
class options (object):
    """
    object type containing Heppi options:
    * ratio_range : the range in the ratio plots
    * ratio_plot  : make the ratio plot
    * legend      : list of lignes that you want to be displayed as legend on your plot
    * treename    :  Gloabl tree name :
    """
    def __init__(self,options = {}):
        self.__template__ = {
            "ratio_range"   : [0.5,1.5],
            "ratioplot"     : True,
            "legend"        : [ "" ],
            "treename"      :   "",
            "output_label"  :   "",
            "kfactor"       :  1.0,
            "intlumi"       :  1.0,
            "cutflow"       : [ "" ],
            "weight_branch" : "",
            "categories"    : []
        }
        self.__dict__  = self.__template__
        self.__dict__.update(options)
    def __str__(self):
        string = " -- Heppi options :\n"
        for opt in self.__dict__:
             string += "    + %15s : %20s \n" % ( opt , str(self.__dict__[opt]))
        return string
class scatter_opt(object):
    """
    object type containing Heppi options:
    * ratio_range : the range in the ratio plots
    """
    def __init__(self, options = {}):
        self.__template__ = {
            "xlist"   : [""],
            "ylist"   : [""],
            "profile" : True,
            "scatter" : True,
            "logz"    : False,
            "normz"   : True
        }
        self.__dict__  = self.__template__
        self.__dict__.update(options)
    def __str__(self):
        string = " -- Heppi scatter plots :\n"
        for opt in self.__dict__:
             string += "  -- %15s : %20s \n" % ( opt , str(self.__dict__[opt]))
        return string

class instack ():
    def __init__(self, plotcard, cutcard = '', sampledir = '{PWD}',outdir="plots"):
        self.plotcard    = plotcard
        self.samples     = collections.OrderedDict()
        self.variables   = {}
        self.scatter_opt = {}
        self.rootfile    = {}
        self.cutflow     = []
        self.sig_hist    = {}
        self.bkg_his     = {}
        self.cutcard     = cutcard
        self.selection   = {}
        self.options     = None
        self.systematics = {}
        self.sampledir   = sampledir
        self.sig_root_tree  = ROOT.TChain('sig_data')
        self.bkg_root_tree  = ROOT.TChain('bkg_data')
        self.outdir = outdir
        if self.outdir.endswith('/'): self.outdir = self.outdir[:-1]
        if not path.isdir(self.outdir): system('mkdir -p %s'%self.outdir)
    def set_samples_directory(self,directory = "{PWD}"):
        self.sampledir = directory
    def read_plotcard(self):
        _config_ = None
        with io.open(self.plotcard) as f:
            _config_ = json.loads(jsmin(f.read()))
        if self.cutcard != '':
            logger.info(' ---- cut card is specified ----')
            logger.info(' -- %20s ' % ( self.cutcard )    )
            with io.open(self.cutcard) as f:
                _cuts_   = json.loads(jsmin(f.read()))
                _config_ = merge(config, cuts)
        for key in _config_:
            if 'variables' in key.lower():
                logger.info(' ----------------------------- ')
                for var in _config_[key]:
                    v = variable(var,_config_[key][var])
                    self.variables[v.name] = v
                    logger.info ( v )
            if 'processes' in key.lower():
                _samples_ = {}
                for proc in _config_[key]:
                    p = sample(proc,_config_[key][proc])
                    _samples_[p.name] = p
                self.samples = OrderedDict(sorted(_samples_.items(), key=lambda x: x[1].order ))
            if 'options' in key.lower():
                logger.info(' ----------------------------- ')
                self.options = options(_config_[key])
                logger.info( self.options )
            if 'scatter' in key.lower():
                logger.info(' ----------------------------- ')
                self.scatter_opt = scatter_opt(_config_[key])
                logger.info( self.scatter_opt )
            if 'systematics' in key.lower():
                logger.info(' ----------------------------- ')
                for syst in _config_[key]:
                    self.systematics[syst] = systematic(_config_[key][syst])
        logger.info(' ----------------------------- ')
    def get_signal_tree(self):
        return self.sig_root_tree
    def get_background_tree(self):
        return self.bkg_root_tree
    def get_data_tree(self):
        if 'data' in self.samples:
            return self.samples['data'].root_tree
    def book_trees(self, make_sig_bkg_trees = False):
        _samples_ = []
        for proc,sample in self.samples.items():
            print "SCZ",sample,sample.files
            print("sample.tree=", sample.tree)
            chainName = ""
            if sample.tree == "":
                chainName = str(self.options.treename).format(sampleid = sample.name)
            else:
                print "chainName=",sample.tree
                print "chainName=",self.options
                chainName = str(self.options.treename).format(sampleid = sample.tree)
            chain = ROOT.TChain(chainName)
            _chain_up_list_ = []
            _chain_dw_list_ = []
            if type(sample.files) == type([]):
                for sam in sample.files:
                    _sam_ = sam
                    _tre_ = chainName
                    print "SCZ3",_sam_,_tre_
                    if ':' in sam:
                        _sam_ = sam.split(':')[0]
                        _tre_ = sam.split(':')[1]
                    print "SCZ4",_sam_,_tre_
                    for f in glob.glob( self.sampledir + '/*'+ _sam_ +'*.root'):
                        print "Adding %s for sample %s" % (f + '/' + _tre_,_sam_)
                        chain.Add( f + '/' + _tre_ )
                        logger.debug("[a][%s] = [%s/%s]" % ( sample.name, f , _tre_ ) )
                # preliminary systematics handling
                print "sample.label.lower", sample.label.lower
                if 'background' in sample.label.lower()  :
                    for systkey, syst in self.systematics.items() :
                        _ch_ = {}
                        for level in ['up','down']:
                            # debug print sample.tree
                            print "sample.tree=", sample.tree
                            _syst_chain_ = ROOT.TChain(syst.__dict__[level+'_tree'].format(sampleid = sample.tree))
                            for sam in sample.files:
                                _sam_ = sam
                                for f in glob.glob( self.sampledir + '/*'+ _sam_ +'*.root'):
                                    _syst_chain_.Add(f)
                            self.systematics[systkey].append_tree(_syst_chain_, level)
                            _ch_[level] = _syst_chain_
                            # debug print systkey
                            print "systkey=", systkey
                            print "syst=", syst
                            print "level=", level
                            print "_ch_[level]=", _ch_[level]
                        self.samples[proc].set_syst_tree(systkey,
                                                         _ch_['up'],
                                                         _ch_['down'])
            else:
                _sam_ = sample.files
                _tre_ = chainName
                print "SCZ1",_sam_,_tre_
                if ':' in _sam_:
                    _sam_ = sam.split(':')[0]
                    _tre_ = sam.split(':')[1]
                print "SCZ2",_sam_,_tre_
                if len(_sam_) == 0:
                    raise Exception,"sample name has length 0"
                for f in glob.glob( self.sampledir + '/*'+ _sam_ +'*.root'):
                    print "Adding %s for sample %s" % (f + '/' + _tre_,_sam_)
                    chain.Add( f + '/' + _tre_ )
                    logger.debug("[b][%s] = [%s/%s]" % ( sample.name, f , _tre_ ) )
                print("sample.label.lower", sample.label.lower())
                print("sample.name", sample.name)
                if 'background' in sample.label.lower()  :
                    for systkey, syst in self.systematics.items() :

                        _ch_ = {}
                        for level in ['up','down']:
                            print "sample.tree upper", sample.tree
                            print "syst.__dict__[level+'_tree']", syst.__dict__[level+'_tree']
                            print "syskey", systkey
                            print "syst", syst
                            _syst_chain_ = ROOT.TChain(syst.__dict__[level+'_tree'])
                            print("_syst_chain_ entries=", _syst_chain_.GetEntries())
                            print self.sampledir + '/*'+ _sam_ +'*.root'
                            for f in glob.glob( self.sampledir + '/*'+ _sam_ +'*.root'):
                                _syst_chain_.Add(f)
                            
                            self.systematics[systkey].append_tree(_syst_chain_, level)
                            _ch_[level] = _syst_chain_
                            print "systkey", systkey
                            # print "syst", syst
                            # print "level", level
                            print "_ch_[level]", _ch_[level]

                        self.samples[proc].set_syst_tree(systkey,
                                                         _ch_['up'],
                                                         _ch_['down'])
            self.samples[proc].set_root_tree(chain)
            if 'signal'     in sample.label and make_sig_bkg_trees:
                self.sig_root_tree.AddFriend(chain)
            if 'background' in sample.label and make_sig_bkg_trees:
                self.bkg_root_tree.AddFriend(chain)
            _samples_.append([  self.samples[proc].order   ,
                                self.samples[proc].name    ,
                                self.samples[proc].tree    ,
                                self.samples[proc].kfactor ,
                                self.samples[proc].label   ,
                                self.samples[proc].cut     ,
                                self.samples[proc].root_tree.GetEntries()])
        logger.info("\n" + tabulate(_samples_,
                                    ["","sample","tree","kfactor","label","cut","events"],
                                    tablefmt="psql"))
    # ---- create a cut flow except the considered variables
    def variable_cutflow(self, variable, select=''):
        cutflow = ''
        for key,var in self.variables.items():
            if (len(var.cut) == 0) or (var.name == variable): continue
            if  len(cutflow) == 0 : cutflow = '(' + var.cut + ')'
            else: cutflow  = cutflow + '&&' + '(' + var.cut + ')'
        if select  != '':
            cutflow = cutflow + '&&' + select
        return cutflow
    #---------------------------------------------------------
    def variable_cutflow_2D(self, variable_x, variable_y, select=''):
        cutflow = ''
        for key,var in self.variables.items():
            if (len(var.cut) == 0) or (var.name == variable_x) or (var.name == variable_y): continue
            if  len(cutflow) == 0 : cutflow = '(' + var.cut + ')'
            else: cutflow  = cutflow + '&&' + '(' + var.cut + ')'
        if select  != '':
            cutflow = cutflow + '&&' + select
        return cutflow
    #---------------------------------------------------------
    def print_cuts(self):
        _tab_cuts_ = []
        for key,var in self.variables.items():
            if var.cut == "" : continue
            _tab_cuts_.append([key, var.cut])
        logger.info("\n" + tabulate(_tab_cuts_,
                    ["variable","cuts"],
                    tablefmt="psql"))
    #---------------------------------------------------------
    def print_systematics(self):
        for key,sample in self.samples.items():
            if len(sample.systematics)==0: continue
            _tab_cuts_ = []
            for sys in sample.systematics:
                up = 0
                dw = 0
                if sample.systematics[sys].up_root_tree   != None:
                    up = sample.systematics[sys].up_root_tree.GetEntries()
                if sample.systematics[sys].down_root_tree != None:
                    dw = sample.systematics[sys].down_root_tree.GetEntries()
                _tab_cuts_.append([ sys,
                                    key,
                                    up ,
                                    dw
                                   ])
            logger.info("\n" + tabulate(_tab_cuts_,
                        ["sys: ", "sample","Nevt up", "Nevt down"],
                        tablefmt="psql"))
    #---------------------------------------------------------
    def print_cutflow(self, format="psql" ):
        _header_  = ["cutflow"]
        _table_   = []
        _noselec_ = []
        _noselec_.append("no cut")
        _total_   = {}
        for proc,sample in self.samples.items():
            _header_.append("N : "+sample.name )
            _header_.append("eff(%)")
            _total_[sample.name] = sample.root_tree.GetEntries(sample.cut)
            _noselec_.append(sample.root_tree.GetEntries(sample.cut))
            _noselec_.append(str(100))
        _table_.append(_noselec_)
        _cutflow_ = ''
        for var in self.variables:
            if (len(self.variables[var].cut) !=0):
                _selec_ = []
                if 'latex' not in format :
                    _selec_.append(self.variables[var].cut)
                else:
                    _cut_ = self.variables[var].cut.replace(var,self.variables[var].title)
                    _selec_.append(_cut_.replace('#',''))

                if len(_cutflow_) == 0:
                    _cutflow_ =  '&&'.join([self.variables[var].cut])
                else:
                    _cutflow_ =  '&&'.join([_cutflow_, self.variables[var].cut])
                for proc,sample in self.samples.items():
                    tot_events = sample.root_tree.GetEntries(sample.cut)
                    _cut_ = _cutflow_
                    if len(sample.cut) != 0:
                        _cut_ =  '&&'.join([_cut_, sample.cut])
                    _selec_.append(sample.root_tree.GetEntries(_cut_))
                    _selec_.append(100*sample.root_tree.GetEntries(_cut_)/float(tot_events))
                _table_.append(_selec_)
        logger.info("\n" + tabulate(_table_, _header_,tablefmt=format,floatfmt=".2f"))
    #---------------------------------------------------------
    def makeRatioCanvas(name='_ratio_'):
        """returns a divided canvas for ratios"""
        Rcanv = ROOT.TCanvas("Rcanv","Rcanv",650,750+210)
        Rcanv.cd()
        padup = ROOT.TPad("pad1","pad1",0,0.3,1,1)
        padup.SetNumber(1)
        paddw = ROOT.TPad("pad2","pad2",0,0,1,0.3)
        paddw.SetNumber(2)

        padup.Draw()
        paddw.Draw()
        Rcanv.cd()
        ROOT.SetOwnership(padup,0)
        ROOT.SetOwnership(paddw,0)
        return Rcanv
    #---------------------------------------------------------
    def draw_categories(self,categories = [], miny=0, maxy=100):
        for cat in categories:
            line = ROOT.TLine()
            line.SetLineColor(129)
            line.SetLineStyle(7)
            line.SetLineWidth(2)
            line.DrawLine(cat,miny,cat,maxy)
    #---------------------------------------------------------
    def make_stat_progression(self,myHisto,systematics={},
                            systematic_only=True,
                            combine_with_systematic=True):
        """
        This function returns a function with
        the statistical precision in each bin
        """

        statPrecision = myHisto.Clone('_ratioErrors_')
        systPrecision = myHisto.Clone('_ratioSysErrors_')
        statPrecision.SetFillColorAlpha(settings.ratio_error_band_color,settings.ratio_error_band_opacity)
        statPrecision.SetFillStyle(settings.ratio_error_band_style)
        statPrecision.SetMarkerColorAlpha(0,0)

        systPrecision.SetFillColorAlpha(settings.ratio_syst_band_color,settings.ratio_error_band_opacity)
        systPrecision.SetFillStyle(settings.ratio_syst_band_style)
        systPrecision.SetMarkerColorAlpha(0,0)


        if len(self.systematics)==0 : systematic_only = False
        for ibin in range(myHisto.GetNbinsX()+1):
            y    = statPrecision.GetBinContent(ibin)
            stat = statPrecision.GetBinError(ibin)
            if( y > 0 ):
                statPrecision.SetBinContent(ibin,      1 )
                statPrecision.SetBinError  (ibin, stat/y )
            else:
                statPrecision.SetBinContent(ibin,   1 )
                statPrecision.SetBinError  (ibin,   0 )
            if systematic_only:
                up_err_sum2 = 0
                dw_err_sum2 = 0
                if( y > 0 ):
                    # debug
                    # print "bin ",ibin," y ",y," stat ",stat
                    up_err_sum2 = (stat/y)*(stat/y)
                    dw_err_sum2 = (stat/y)*(stat/y)
                    for key,syst in systematics.items():
                        up_diff   = (syst.up_histo.GetBinContent(ibin)- y)/y
                        dw_diff   = (syst.down_histo.GetBinContent(ibin)- y)/y
                       # debug

                        print "up_diff",  up_diff
                        print "dw_diff",  dw_diff
                        print "up_err_sum2", up_err_sum2
                        print "dw_err_sum2", dw_err_sum2
                        #FIXME ed changing systematics treatment
                        #if( up_diff > 0 ):
                        #    up_err_sum2  += up_diff*up_diff
                        if( up_diff > 0 ):
                            up_err_sum2  += up_diff*up_diff##AL test
                        else:
                            dw_err_sum2  += up_diff*up_diff
                        if( dw_diff < 0 ):
                            dw_err_sum2  += dw_diff*dw_diff
                        else:
                           up_err_sum2  += dw_diff*dw_diff
                up_error = math.sqrt(up_err_sum2)
                dw_error = math.sqrt(dw_err_sum2)
                band_max   = 1 + up_error
                band_min   = 1 - dw_error
                print('AL DEBUG: for bin number %f \n'%ibin)

                print('AL DEBUG: max band error is %f \n'%band_max)
                print('AL DEBUG: min band error is %f \n'%band_min)
                if (abs(band_max/band_min) < 10):
                   systPrecision.SetBinContent(ibin, (band_max + band_min)/2.0);
                   systPrecision.SetBinError  (ibin, (band_max - band_min)/2.0);
                else:
                   print('AL hack: make sure ratio plot syst errors are coherent with distribution errors !\n');
                   if ( (band_max - band_min)/2.0 > ( self.options.ratio_range[1] - self.options.ratio_range[0])/2.0):
                      systPrecision.SetBinContent(ibin, 1.0);
                      systPrecision.SetBinError(ibin,( self.options.ratio_range[1] - self.options.ratio_range[0])/2.0);
                   else:
                      systPrecision.SetBinContent(ibin, (band_max + band_min)/2.0);
                      systPrecision.SetBinError  (ibin, (band_max - band_min)/2.0);
        statPrecision.GetYaxis().SetRangeUser(self.options.ratio_range[0], self.options.ratio_range[1])
        systPrecision.GetYaxis().SetRangeUser(self.options.ratio_range[0], self.options.ratio_range[1])
        return (statPrecision, systPrecision)
    #---------------------------------------------------------
    def draw_error_band(self,myHisto,systematics={},systematic_only=True, combine_with_systematic=True):
        """
        Draw this histogram with the statistical
        precision error in each bin
        """

        statPrecision = myHisto.Clone('_statErrors_')
        ROOT.SetOwnership(statPrecision,0)
        statPrecision.SetFillColorAlpha(settings.error_band_color,settings.error_band_opacity)
        statPrecision.SetFillStyle(settings.error_band_style)
        statPrecision.SetMarkerColorAlpha(0,0)

        systPrecision = myHisto.Clone('_systErrors_')
        ROOT.SetOwnership(systPrecision,0)
        systPrecision.SetFillColorAlpha(settings.syst_error_band_color,settings.syst_error_band_opacity)
        systPrecision.SetFillStyle(settings.syst_error_band_style)
        systPrecision.SetMarkerColorAlpha(0,0)


        if combine_with_systematic : systematic_only = True
        if systematic_only:
            for ibin in range(myHisto.GetNbinsX()+1):
                y = statPrecision.GetBinContent(ibin);
               # print('AL DEBUG: y value is %f \n'%y)
                stat = statPrecision.GetBinError(ibin);
                #print('AL DEBUG: stat value is %f \n'%stat)
                up_err_sum2 = stat**2
                dw_err_sum2 = stat**2
                for key, syst in systematics.items():
                    up_diff   = (syst.up_histo.GetBinContent(ibin))   - y
                    print("draw_error_band y", y)
                    print("draw_error_band syst.up_histo.GetBinContent(ibin)", syst.up_histo.GetBinContent(ibin))
                    print("draw_error_band up_diff", up_diff)
                  #  print('AL DEBUG: syst up is %f \n'%syst.up_histo.GetBinContent(ibin))
                    dw_diff   = (syst.down_histo.GetBinContent(ibin)) - y
                   # print('AL DEBUG: syst down is %f \n'%syst.down_histo.GetBinContent(ibin))
                    #FIXME ed changing error handling (once again......)
                    #if up_diff > 0 :
                    #    up_err_sum2 += up_diff*up_diff
                    if( up_diff > 0 ):
                        up_err_sum2  += up_diff*up_diff##AL test
                    else:
                       dw_err_sum2  += up_diff*up_diff
                    #if( dw_diff < 0 ):
                    #    dw_err_sum2  += dw_diff*dw_diff
                    if( dw_diff < 0 ):
                        dw_err_sum2  += dw_diff*dw_diff
                    else:
                        up_err_sum2  += dw_diff*dw_diff
                print ("draw_error_band")
                print("sample.name",)
                print ("up_err_sum2", up_err_sum2)
                print ("dw_err_sum2", dw_err_sum2)
                up_error = math.sqrt(up_err_sum2)
                dw_error = math.sqrt(dw_err_sum2)
                print("y", y)
                print("up_error", up_error)
                print("dw_error", dw_error)
                band_max   = y + up_error
                band_min   = y - dw_error

                print(" band_max ", band_max)
                print(" band_min ", band_min)
                print("final result", (band_max + band_min)/2.0)
                print("final result", (band_max - band_min)/2.0)
                systPrecision.SetBinContent(ibin, (band_max + band_min)/2.0);
                systPrecision.SetBinError  (ibin, (band_max - band_min)/2.0);
    
                statPrecision.SetBinContent(ibin,   y    )
                statPrecision.SetBinError  (ibin,   stat )
                # ------
        return (statPrecision, systPrecision)
    #---------------------------------------------------------
    def makeRatioPlotCanvas(self, name=''):
        """
        returns a divided canvas for ratios

        """
        canv  = ROOT.TCanvas("c_" + name, name,settings.canvas_width,settings.canvas_height)
        canv.cd()
        #padup = ROOT.TPad("padup", "padup", 0, 0.4, 1, 1.0)
        padup = ROOT.TPad("padup", "padup", 0, 0.28, 1, 1.0)
        padup.SetNumber(1)
        #paddw = ROOT.TPad("paddw", "paddw", 0, 0.0, 1, 0.4)
        paddw = ROOT.TPad("paddw", "paddw", 0, 0.0, 1, 0.28)
        paddw.SetNumber(2)
        padup.Draw()
        padup.SetTopMargin(0.08)
        padup.SetBottomMargin(0.00)
        padup.SetLeftMargin(0.14)
        padup.SetRightMargin(0.05)
        padup.SetFrameBorderMode(0)
        padup.SetFrameBorderMode(0)
        paddw.Draw()
        paddw.SetTopMargin(0.00)
        paddw.SetBottomMargin(0.37)
        paddw.SetLeftMargin(0.14)
        paddw.SetRightMargin(0.05)
        paddw.SetFrameBorderMode(0)
        canv.cd()
        ROOT.SetOwnership(padup,0)
        ROOT.SetOwnership(paddw,0)
        return canv
    #---------------------------------------------------------
    def makeRatio(self, hist1,hist2,ymax=2.1,ymin=0,norm=False, isdata =False):
        """returns the ratio plot hist2/hist1
        if one of the histograms is a stack put it in as argument 2!"""
        if norm:
            try:
                hist1.Scale(1/hist1.Integral())
                hist2.Scale(1/hist2.Integral())
            except(ZeroDivisionError):
                pass
        retH = hist1.Clone()
        retH.Divide(hist2)
        if isdata:
            for ibin in range(hist2.GetNbinsX()+1):
                ymc  = hist2.GetBinContent(ibin);
                stat = hist1.GetBinError  (ibin);
                #print('AL DEBUG: for bin number %f \n'%ibin)
                #print('AL DEBUG: bin content is %f \n'%ymc)
                #print('AL DEBUG:  error is %f \n'%stat)
                #print('AL DEBUG: min band error is %f \n'%band_min)
                if (ymc>0):
                   retH.SetBinError  (ibin,stat/ymc);
                else:
                   retH.SetBinError  (ibin,0);
        ROOT.SetOwnership(retH,0)
        return retH
    #---------------------------------------------------------
    def DataMCratio(self, histMC,histData,
                    log=False,
                    xTitle="",
                    yTitle="",
                    drawMCOpt="",
                    drawDataOpt="",
                    norm=False,
                    ratioMin=0.7,
                    ratioMax=1.3):
        """Takes two histograms as inputs and returns a canvas with a ratio plot of the two.
        The two optional arguments are for the x Axis and y Axis titles"""

        c = makeRatioPlotCanvas()
        pad1 = c.cd(1)
        pad2 = c.cd(2)
        c.cd(1)

        if log: pad1.SetLogy()
        yMax = max(histData.GetMaximum(),histMC.GetMaximum())
        yMin = 0

        if log: yMin = min(histData.GetMinimum(),histMC.GetMinimum())
        else  : yMin = 0
        if log: yMax = yMax
        else  : yMax = 1.1*yMax

        try:
            histData.GetYaxis().SetRangeUser(0,1.2*yMax)
        except(ReferenceError):
            h = pad1.DrawFrame(histMC.GetXaxis().GetXmin(),yMin,histMC.GetXaxis().GetXmax(),yMax)
            ROOT.SetOwnership(h,0)
        if not norm:
            drawStatErrBand(histMC,drawMCOpt)
            histData.Draw  ('same,'+drawDataOpt)
        else:
            histMC   = histMC.DrawNormalized(drawMCOpt)
            histData = histData.DrawNormalized("same"+ drawDataOpt)

        histData.GetYaxis().SetRangeUser(yMin,yMax)
        c.cd()
        c.cd(2)

        (errorHist,systHist) = self.make_stat_progression(histMC)
        ROOT.SetOwnership(errorHist,0)
        ROOT.SetOwnership(systHist ,0)
        errorHist.GetXaxis().SetTitle(xTitle)
        errorHist.GetYaxis().SetTitle(yTitle)
        print('AL is even used ?')
        errorHist.Draw('E2')
        systHist.Draw('E2,same')
        ratioHist = self.makeRatio(histData,histMC,ymax= ratioMax,ymin=ratioMin,norm=norm)
        ROOT.SetOwnership(ratioHist,0)
        ratioHist.GetXaxis().SetTitle(xTitle)
        ratioHist.GetYaxis().SetTitle(yTitle)

        line = ROOT.TLine(ratioHist.GetXaxis().GetXmin(),1,ratioHist.GetXaxis().GetXmax(),1)
        line.SetLineColor(4)
        line.Draw()
        ROOT.SetOwnership(line,0)
        ratioHist.Draw('same')
        c.cd()
        return c
    #---------------------------------------------------------
    def customizeHisto(self, hist, ratioplot = True):
        hist.GetYaxis().SetTitleSize  (21)
        hist.GetYaxis().SetTitleFont  (43)
        hist.GetYaxis().SetTitleOffset(1.8)
        hist.GetYaxis().SetLabelFont  (43)
        hist.GetYaxis().SetLabelSize  (18)
        if ratioplot :
            hist.GetXaxis().SetTitleSize  (21)
            hist.GetXaxis().SetTitleFont  (43)
            hist.GetXaxis().SetTitleOffset(3.5)
            hist.GetXaxis().SetLabelOffset(0.02)
            hist.GetXaxis().SetLabelFont  (43)
            hist.GetXaxis().SetLabelSize  (18)
        else:
            hist.GetXaxis().SetTitleSize  (21)
            hist.GetXaxis().SetTitleFont  (43)
            hist.GetXaxis().SetTitleOffset(1.5)
            hist.GetXaxis().SetLabelOffset(0.01)
            hist.GetXaxis().SetLabelFont  (43)
            hist.GetXaxis().SetLabelSize  (18)
    #---------------------------------------------------------
    def test_tree_book():
        for sam in samples:
            logger.info('nominal::'+ sam +' tree: '+ samples[sam].get('_root_tree_',ROOT.TChain()).GetName()
                        + ' nEvent:' + str(samples[sam].get('_root_tree_',ROOT.TChain()).GetEntries()))
    #---------------------------------------------------------
    def draw(self, varkey, label='UntaggedTag', select=''):
        variable = None
        try:
            variable = self.variables[varkey]
        except KeyError:
            logger.error(colored(" Variable not registred on the plotcard. Please check !","red"))
            return
        histname = ('stack_histogram_' +
                    variable.name + '_' + label + ''
                    '')
        print('check')
        print(variable.name)
        variable.root_legend = None

        for proc in self.samples:
            for sys in self.samples[proc].systematics:
                self.samples[proc].systematics[sys].clear_histograms()
        for sys in self.systematics:
            self.systematics[sys].clear_histograms()

        if settings.two_colomn_legend:
            _size_ = (len(self.samples) / 2) * 0.08
            variable.root_legend  = ROOT.TLegend(0.45, (0.96 - ROOT.gStyle.GetPadTopMargin()) - _size_,
                                        (1.00 - ROOT.gStyle.GetPadRightMargin()),
                                        (0.96 - ROOT.gStyle.GetPadTopMargin()))
            variable.root_legend.SetNColumns(2)
            variable.root_legend.SetColumnSeparation(0)
        else:
            variable.root_legend  = ROOT.TLegend(0.6, 0.62,
                                        (1.00 - ROOT.gStyle.GetPadRightMargin()),
                                        (0.96 - ROOT.gStyle.GetPadTopMargin()))

        variable.root_cutflow = self.variable_cutflow(variable.name,'')
        hstack = ROOT.THStack('hs_' + variable.name,'')
        hstack.SetName('hs_'+ variable.name)
        hstack.SetTitle(";" + variable.title+";entries")

        _hist_syst_ = {}

        if len(variable.root_cutflow)!=0:
            _cutflow_ = [self.options.weight_branch]
            if len(select) > 0:
                _cutflow_.append('('+'&&'.join([variable.root_cutflow,select])+')')
            else:
                _cutflow_.append('('+ variable.root_cutflow +')')
            variable.root_cutflow = '*'.join(_cutflow_)
        else:
            variable.root_cutflow = self.options.weight_branch

        bar = ProgressBar(widgets=[colored(' -- variable :: %20s   ' % ((variable.name[:18] + '..') if len(variable.name)>20 else variable.name), 'green'),
                          Percentage(),'  ' ,Bar('>'), ' ', ETA()], term_width=100)
        for proc,sample in bar(self.samples.items()):
            _cutflow_ = variable.root_cutflow
            print('ED DEBUG initial cutflow is \n%s'%_cutflow_)
            if len(sample.cut) != 0:
                #_cutflow_ = '&&'.join([variable.root_cutflow[:-1],sample.cut+')'])
                _cutflow_ = '*('.join([variable.root_cutflow,sample.cut+')']) #FIXME ED DEBUG
            print('ED DEBUG now cutflow is \n%s'%_cutflow_)
            if len(variable.blind) != 0 and sample.label == 'data':
                _cutflow_ = '&&'.join([variable.root_cutflow[:-1],variable.blind+')'])
            print('ED DEBUG now cutflow is \n%s'%_cutflow_)
            print("cutflow is :::::: ", _cutflow_)
            if sample.label != 'data':
                print('ED DEBUG starting projection for proc %s sample %s'%(proc,sample))
                print('ED DEBUG variable formula is %s'%variable.formula)
                print("cutflow is :::::: ", _cutflow_)
                tempStr = '*'.join(
                                  [   _cutflow_,
                                      "%f" % self.options.kfactor,
                                      "%f" % self.options.intlumi,
                                      "%f" % sample.kfactor
                                  ]
                              )
                print('ED DEBUG full cutflow is \n%s'%tempStr)
                sample.root_tree.Project(
                    'h_' + variable.name + variable.hist,
                    variable.formula,
                    '*'.join(
                        [   _cutflow_,
                            "%f" % self.options.kfactor,
                            "%f" % self.options.intlumi,
                            "%f" % sample.kfactor
                        ]
                    )
                
                )
                print('ED DEBUG done projection for proc %s sample %s'%(proc,sample))
            
            elif sample.label == 'data':
                sample.root_tree.Project(
                    'h_' + variable.name + variable.hist,
                    variable.formula,
                    _cutflow_.replace('weight_central','1.') #ED FIXME FIXME
                    #_cutflow_
                )

            else:
                logger.error(' -- the label of the sample "%s" is not recognised by Heepi' % sample.name )
                return

            ROOT.gDirectory.ls()
            print('checkcheck')
            print(sample.root_tree)
            print(variable.name)
            print('checkcheck')
            print('start check 2')
            print('h_' + variable.name)
            print('end check 2')
            hist = ROOT.gDirectory.Get('h_' + variable.name )
            #hist = sample.root_tree
            print('start check 3')
            # print(hist)
            print('end check 3')
            print('start check 4')
            print(ROOT.gDirectory.ls())
            print('end check 4')
            print('start check 5')
#            sample.root_tree.Print()
            
            print('end check 5')
            #me
            #histogram = hist.ReadObj()
            #me
            #histogram.SetDirectory(0)
            try:
                hist.SetDirectory(0)
            except Exception:
                raise Exception,"missing histogram for variable.name %s" % variable.name
            
            if variable.norm and hist.Integral()!=0:
                hist.Sumw2()
                hist.Scale(1.0/hist.Integral())
            if hist.Integral() == 0 : logger.warning(' The Integral of the histogram is null, please check this variable: %s' % varkey)
            else: print 'integral of this hist is %1.3f'%hist.Integral()
            if 'background' in sample.label.lower():
                for key,syst in sample.systematics.items() :
                    for _sys_flip_ in ['up','down']:
                        print "[yacine]", _sys_flip_ + '_root_tree' ," " , syst.__dict__[_sys_flip_ + '_root_tree'].GetEntries()
                        # debug
                        print "key ", key
                        print "variable.name ", variable.name
                        print "variable.formula ", variable.formula
                        print "syst" , syst
                        print "_cutflow_ ", _cutflow_
                        print "sample.kfactor ", sample.kfactor
                        print "self.options.kfactor ", self.options.kfactor
                        print "self.options.intlumi ", self.options.intlumi
                        syst.__dict__[_sys_flip_ + '_root_tree'].Project(
                            '_'.join(['h',key, _sys_flip_, variable.name]) + variable.hist,
                            variable.formula,
                            '*'.join(
                                [   _cutflow_,
                                    "%f" % self.options.kfactor,
                                    "%f" % self.options.intlumi,
                                    "%f" % sample.kfactor
                                ]
                            )
                        )
                        _h_syst = ROOT.gDirectory.Get('_'.join(['h',key, _sys_flip_, variable.name]))
                        _h_syst.SetDirectory(0)
                        print "_h_syst_ ", _h_syst.GetEntries()
                        if variable.norm and _h_syst.Integral()!=0:
                            _h_syst.Sumw2()
                            _h_syst.Scale(1.0/_h_syst.Integral())
                        print("sample.name ", sample.name)
                        print("ED DEBUG draw syst hist")
                        print("_h_syst_ ", _h_syst.GetEntries())
                        print("hist ", hist.GetEntries())
                        print("-sys_flip- ", _sys_flip_)
                        self.systematics[key].append_hist(_h_syst,_sys_flip_)

            hist.SetTitle(";" + variable.title + ";entries")
            if ('signal'==sample.label) or ('spectator'==sample.label):
                hist.SetLineColor(sample.color)
                hist.SetLineStyle(1)
                hist.SetLineWidth(2)
                hist.SetFillStyle(0)
                hist.SetName(hist.GetName() + '_' + sample.label)
                variable.root_histos.append(hist)
                if sample.kfactor != 1:
                    variable.root_legend.AddEntry(hist,
                                    sample.title + ("#times%i" % sample.kfactor ),
                                    "l" );
                else:
                    variable.root_legend.AddEntry( hist, sample.title, "l" );
            if 'data' in sample.label:
                hist.SetMarkerColor(sample.color)
                hist.SetLineColor  (sample.color)
                hist.SetMarkerStyle(20)
                hist.SetMarkerSize (0.8) # fixme
                hist.SetFillColorAlpha(0,0)
                hist.SetLineWidth(2)
                hist.SetBinErrorOption(ROOT.TH1.kPoisson)
                hist.SetName(hist.GetName() + '_data')
                variable.root_legend.AddEntry( hist, sample.title, "lep" )
                variable.root_histos.append(hist)
            if 'background' in sample.label:
                hist.SetLineColor(ROOT.kBlack)
                hist.SetFillColor(sample.color)
                hist.SetLineWidth(2)
                hist.SetName(hist.GetName() + '_background')
                hstack.Add(hist)
                variable.root_histos.append(hist)
                variable.root_legend.AddEntry( hist, sample.title, "f" )
                # drawing

        c = None
        print 'making a ratio plot ? ::', self.options.ratioplot
        if self.options.ratioplot :
            c = self.makeRatioPlotCanvas(name = variable.name)
            c.cd(1)
        else:
            print 'making a cnavas without ratio plot .... '
            print settings.canvas_width , settings.canvas_height-150.0
            c = ROOT.TCanvas("c_normal_" + variable.name  , variable.name,
                             settings.canvas_width ,
                             settings.canvas_height-150)
            c.cd()

        _htmp_ = variable.root_histos[0].Clone('__htmp__')
        ROOT.SetOwnership(_htmp_,0)
        bounds = [float(s) for s in re.findall('[-+]?\d*\.\d+|\d+',variable.hist )]
        _htmp_.SetTitle(';' + variable.title
                       + (';events / %s %s '% (utils.fformat((bounds[2]-bounds[1])/bounds[0], variable.unit != ""),
                                               variable.unit) ))
        TGaxis.SetExponentOffset(-0.06,0.00,"y")
        _htmp_.Reset()
        _ymax_ = max([x.GetMaximum() for x in variable.root_histos])
        _ymin_ = min([x.GetMinimum() for x in variable.root_histos]) #AL

        if variable.log:
            if variable.norm :
                _ymin_ = 1e-4 if _ymin_ <= 0 else _ymin_
                _ymax_ = 75 * hstack.GetMaximum()
            else:
                _ymin_ = 0.1
                _ymax_ = 1000

            _htmp_.GetYaxis().SetRangeUser(_ymin_,_ymax_)
            ROOT.gPad.SetLogy()
        else:
            _ymin_ = 0
            _ymax_ = _ymax_ + _ymax_ * 0.5
            _htmp_.GetYaxis().SetRangeUser(_ymin_,_ymax_)
        # _htmp_.GetYaxis().SetMoreLogLabels(True)
        # _htmp_.GetYaxis().SetNoExponent(True)


        self.customizeHisto(_htmp_, self.options.ratioplot)
        _htmp_.Draw('hist')
        hstack.Draw('hist,same')
        print 'ED DEBUG hstack'
        print hstack
        print 'ED DEBUG hstack.GetStack()'
        print hstack.GetStack()
        print 'ED DEBUG hstack.GetStack().Last()'
        print hstack.GetStack().Last()
        print 'ED DEBUG systematics'
        print self.systematics
        (herrstat, herrsyst) = self.draw_error_band(hstack.GetStack().Last(),self.systematics)
        herrstat.Draw('E2,same')
        # debug herrstat entries
        print 'ED DEBUG herrstat.GetEntries()'
        print herrstat.GetEntries()
        # get bin content of herrstat
        # debug herrsyst entries
        print 'ED DEBUG herrsyst.GetEntries()'
        print herrsyst.GetEntries()
        # get bin content of herrsyst
        print 'ED DEBUG herrsyst.GetBinContent(0)'
        print herrsyst.GetBinContent(0)
        print 'ED DEBUG herrsyst.GetBinContent(1)'
        print herrsyst.GetBinContent(1)
        print 'ED DEBUG herrsyst.GetBinContent(2)'
        print herrsyst.GetBinContent(2)
        print 'ED DEBUG herrsyst.GetBinContent(3)'
        print herrsyst.GetBinContent(3)
        print 'ED DEBUG herrsyst.GetBinContent(4)'
        print herrsyst.GetBinContent(4)
        print 'ED DEBUG herrsyst.GetBinContent(5)'
        print herrsyst.GetBinContent(5)
        print 'ED DEBUG herrsyst.GetBinContent(6)'
        print herrsyst.GetBinContent(6)
        print 'ED DEBUG herrsyst.GetBinContent(7)'
        print herrsyst.GetBinContent(7)
        # set herrsyst bin content to 0
        herrsyst.SetBinContent(0,0)
        herrsyst.SetBinContent(1,20)
        # herrsyst color to red for debug
        herrsyst.SetFillColor(ROOT.kRed)
        if len(self.systematics)!=0:herrsyst.Draw('E2,same')
        hdata = None
        for h in variable.root_histos:
            print '::' , h.GetName()
            if 'data' in h.GetName():
                h.SetFillStyle(0)
                h.Draw('E,same')
                hdata = h
            if 'signal' in h.GetName() or 'spectator' in h.GetName():
                h.Draw('hist,same')
        if len(self.systematics)>0:
            variable.root_legend.AddEntry(herrsyst, "Stat #oplus Syst", "f" )
            # variable.root_legend.AddEntry(herrstat, "Stat Uncert", "f" )

        else:
            variable.root_legend.AddEntry(herrstat, "Stat Uncert", "f" )

        # cosmetics
        utils.draw_cut_line(_htmp_,variable,'x')
        self.draw_categories(variable.boundaries, miny=_htmp_.GetMinimum(),maxy=_htmp_.GetMaximum())
        ROOT.gPad.RedrawAxis()
        # this is for the legend
        variable.root_legend.SetTextAlign( 12 )
        variable.root_legend.SetTextFont ( 43 )
        variable.root_legend.SetTextSize ( 18 )
        variable.root_legend.SetLineColor( 0 )
        variable.root_legend.SetFillColor( 0 )
        variable.root_legend.SetFillStyle( 0 )
        variable.root_legend.SetLineColorAlpha(0,0)
        variable.root_legend.SetShadowColor(0)
        variable.root_legend.Draw()
        # draw labels
        # if (self.systematics.keys())>0 : self.options.label.append('+'.join(self.systematics.keys()))
        utils.draw_labels(self.options.label)
        # if (self.systematics.keys())>0 : self.options.label.pop()
        # utils.draw_cms_headlabel(label_right='#sqrt{s} = 13 TeV, L = %1.1f fb^{-1}' % self.options.intlumi )
        # utils.draw_cms_headlabel( label_right='#sqrt{s} = 13 TeV, L = 19.5 fb^{-1}' ) #AL hard coded lumi preVFP
        # utils.draw_cms_headlabel( label_right='#sqrt{s} = 13 TeV, L = 16.8 fb^{-1}' ) #AL hard coded lumi postVFP
        utils.draw_cms_headlabel( label_right='#sqrt{s} = 13 TeV, L = 41.5 fb^{-1}' ) #AL hard coded lumi
        # utils.draw_cms_headlabel( label_right='#sqrt{s} = 13 TeV, L = 59.8 fb^{-1}' ) #AL hard coded lumi
        # utils.draw_cms_headlabel( label_right='#sqrt{s} = 13 TeV, L = 59.8 fb^{-1}' ) #AL hard coded lumi
        #
        c.cd()
        if self.options.ratioplot :
            print ('option1')
            c.cd(2)
            (errorHist,systHist) = self.make_stat_progression(hstack.GetStack().Last(),self.systematics)
            ROOT.SetOwnership(errorHist,0)
            ROOT.SetOwnership(systHist ,0)
            errorHist.GetXaxis().SetTitle(_htmp_.GetXaxis().GetTitle())
            errorHist.GetYaxis().SetTitle('Data/MC')
            errorHist.GetYaxis().CenterTitle(True)
            systHist.GetXaxis().SetTitle(_htmp_.GetXaxis().GetTitle())
            systHist.GetYaxis().SetTitle('Data/MC')
            systHist.GetYaxis().CenterTitle(True)
            # print each bin content
            for i in range(1,errorHist.GetNbinsX()+1):
                print 'errorHist bin %d: %f' % (i,errorHist.GetBinContent(i))
            # print each bin error
            for i in range(1,errorHist.GetNbinsX()+1):
                print 'errorHist bin error %d: %f' % (i,errorHist.GetBinError(i))
            # print each bin error
            for i in range(1,systHist.GetNbinsX()+1):
                print 'systHist bin %d: %f' % (i,systHist.GetBinContent(i))
            # print each bin error
            for i in range(1,systHist.GetNbinsX()+1):
                print 'systHist bin error %d: %f' % (i,systHist.GetBinError(i))
            self.customizeHisto(errorHist)
            if settings.ratio_plot_grid :
                print('checkratio1')
        	ROOT.gPad.SetGridy()
        	ROOT.gPad.SetGridx()
        	errorHist.Draw('E2')
            if len(self.systematics)!=0: systHist.Draw('E2,same')
            ratioHist = None
            print('checkratio2')
            sig_and_bkg_ratio = []

            if hdata==None:
                print('checkratio3')
                ratioHist = hstack.GetStack().Last().Clone('_temp_')
                ratioHist.Clear()
                ratioHist.SetLineColorAlpha(0,0)
                ratioHist.SetMarkerColorAlpha(0,0)
                ROOT.SetOwnership(ratioHist,0)
                ratioHist.GetXaxis().SetTitle(_htmp_.GetXaxis().GetTitle())
                ratioHist.GetYaxis().SetTitle(_htmp_.GetYaxis().GetTitle())
                if settings.ratio_draw_signal:
                    for sig in variable.root_histos:
                        sig_and_bkg = hstack.GetStack().Last().Clone('_temp_bkg_' + sig.GetName())
                        sig_and_bkg.Add(sig)
                        sig_and_bkg_ratio_ = self.makeRatio(sig_and_bkg,hstack.GetStack().Last())
                        ROOT.SetOwnership(sig_and_bkg_ratio_,0)
                        sig_and_bkg_ratio_.GetXaxis().SetTitle(_htmp_.GetXaxis().GetTitle())
                        sig_and_bkg_ratio_.GetYaxis().SetTitle(_htmp_.GetYaxis().GetTitle())
                        sig_and_bkg_ratio_.SetFillColorAlpha(0,0)
                        sig_and_bkg_ratio_.SetLineColor(sig.GetLineColor())
                        sig_and_bkg_ratio.append(sig_and_bkg_ratio_)
            else:
                print('checkratio4')
                ratioHist = self.makeRatio(hist1 = hdata, hist2 = hstack.GetStack().Last(), isdata = True)
                ROOT.SetOwnership(ratioHist,0)
                ratioHist.GetXaxis().SetTitle(_htmp_.GetXaxis().GetTitle())
                ratioHist.GetYaxis().SetTitle(_htmp_.GetYaxis().GetTitle())
                if settings.ratio_draw_signal:
                    for sig in variable.root_histos:
                        sig_and_bkg = hstack.GetStack().Last().Clone('_temp_bkg_' + sig.GetName())
                        sig_and_bkg.Add(sig)
                        sig_and_bkg_ratio_ = self.makeRatio(sig_and_bkg,hstack.GetStack().Last())
                        ROOT.SetOwnership(sig_and_bkg_ratio_,0)
                        sig_and_bkg_ratio_.GetXaxis().SetTitle(_htmp_.GetXaxis().GetTitle())
                        sig_and_bkg_ratio_.GetYaxis().SetTitle(_htmp_.GetYaxis().GetTitle())
                        sig_and_bkg_ratio_.SetFillColorAlpha(0,0)
                        sig_and_bkg_ratio_.SetLineColor(sig.GetLineColor())
                        sig_and_bkg_ratio.append(sig_and_bkg_ratio_)

            # concidence
            line = ROOT.TLine(ratioHist.GetXaxis().GetXmin(),1,ratioHist.GetXaxis().GetXmax(),1)
            line.SetLineColor(1)
            line.SetLineStyle(7)
            line.Draw()
            ROOT.SetOwnership(line,0)
            ratioHist.Draw('same')
            print 'forgetting the ratio plot ....'
        # concidence
        self.draw_categories(variable.boundaries,
                    miny=_htmp_.GetMinimum(),
                    maxy=_htmp_.GetMaximum())

        c.cd()
        if variable.norm == True:
            histname = histname + '_norm'

        for form in settings.plot_formats :
            c.SaveAs( self.outdir + '/' + histname + '.' + form)

        variable.clear()
        # if len(self.systematics.keys())>0: self.options.label.pop()
    def histogram(self, variable, type='signal', cut="", label=""):
        _cutflow_ = self.variable_cutflow(variable.name,'')
        _hist_ = ROOT.TH1F( 'htot_tree_' + type + '_' + variable.name +'_'+ label,
                            variable.title + ';events',
                            int(variable.nbin),
                            float(variable.range[0]),
                            float(variable.range[1])
            )
        for proc,sample in self.samples.items():
            if type.lower() not in proc.lower(): continue
            if sample.cut != '':
                _cutflow_ = _cutflow_ + '&&' + sample.cut
            if cut != "":
                _cutflow_ = _cutflow_ + '&& (' + cut + ')'
            sample.root_tree.Project(
                'h_' + sample.name + variable.name +'_'+label + variable.hist,
                variable.formula,
                '*'.join(
                    [   '(' + _cutflow_ + ')',
                        "%f" % self.options.kfactor,
                        "%f" % self.options.intlumi,
                        self.options.weight_branch
                    ]
                )
            )
            h = ROOT.gDirectory.Get('h_' + sample.name + variable.name + '_' + label)
            h.SetDirectory(0)
            _hist_.Add(h)
        return _hist_

    def make_eff(self, varkey,selection, sample, label='',allsel=''):
        variable = None
        try:
            variable = self.variables[varkey]
        except KeyError:
            logger.error(colored('ERROR: Variable (%s) not defined !!'% varkey ,'red'))
            return
        selection = "(%s)&&(%s)" % (allsel, selection)
        hsel = self.histogram(variable, type=sample, label = 'sel_' + label, cut=selection)
        htot = self.histogram(variable, type=sample, label = 'all_' + label, cut=allsel   )
        _gr_ = ROOT.TGraphAsymmErrors(hsel,htot)
        _gr_.SetName('gr_' + hsel.GetName())

        return _gr_
    def make_cdf(self, varkey, sample, selection, label=''):
            variable = None
            try:
                variable = self.variables[varkey]
            except KeyError:
                logger.error(colored('ERROR: Variable (%s) not defined !!'% varkey ,'red'))
                return

            _h_ = self.histogram(variable, type=sample, label = label, cut=selection)
            _gr_ = ROOT.TGraph()
            for ibin in range(0, _h_.GetNbinsX()+1):
                eff = _h_.Integral(ibin,_h_.GetNbinsX())/float(_h_.Integral())
                _gr_.SetPoint (ibin,_h_.GetBinCenter(ibin), eff)
            _gr_.SetName('eff_' + label)

            return _gr_

    def make_roc(self, varkey,sig_sample, bkg_sample, label='', wp = [], selection=""):
        variable = None
        try:
            variable = self.variables[varkey]
        except KeyError:
            logger.error(colored('ERROR: Variable (%s) not defined !!'% varkey ,'red'))
            return
        histname = ('roc_' + variable.name + '_' + label + '_')
        _cutflow_ = self.variable_cutflow(variable.name,'')
        if selection != "" :
            _cutflow_ = _cutflow_ + "&&" + selection
        self.samples[sig_sample].root_tree.Project(
            'hsig_' + variable.name + ','.join( ['(1000', ','.join(variable.hist.split(',')[1:])]),
            variable.formula,
            '*'.join(
                [   "(" + _cutflow_ + ")",
                    "%f" % self.options.kfactor,
                    "%f" % self.options.intlumi,
                    self.options.weight_branch
                ]
            )
        )
        if self.samples[bkg_sample].cut != "":
            _cutflow2_ = _cutflow_ + "&&" + self.samples[bkg_sample].cut
        else:
            _cutflow2_ = _cutflow_
        self.samples[bkg_sample].root_tree.Project(
            'hbkg_' + variable.name + ','.join( ['(1000', ','.join(variable.hist.split(',')[1:])]),
            variable.formula,
            '*'.join(
                [   "(" + _cutflow2_ + ")",
                    "%f" % self.options.kfactor,
                    "%f" % self.options.intlumi,
                    self.options.weight_branch
                ]
            )
        )
        hsig = ROOT.gDirectory.Get('hsig_'+variable.name)
        hbkg = ROOT.gDirectory.Get('hbkg_'+variable.name)

        print variable.name,  " --> sig: ",hsig.GetNbinsX(), ' Integral:', hsig.Integral(), ' N:', hsig.GetEntries()
        print variable.name,  " --> bkg: ",hbkg.GetNbinsX(), ' Integral:', hbkg.Integral(), ' N:', hbkg.GetEntries()

        roc   = ROOT.TGraph()
        roc.SetName ('ROC_'+varkey+'_'+sig_sample+'_'+bkg_sample)
        roc.SetTitle( ';'+self.samples[sig_sample].title+';'+self.samples[bkg_sample].title)
        roc.SetPoint (0,1,1)
        point = []
        for ibin in range(0, hsig.GetNbinsX()+1):
            beff = hbkg.Integral(ibin,hsig.GetNbinsX())/float(hbkg.Integral())
            seff = hsig.Integral(ibin,hsig.GetNbinsX())/float(hsig.Integral())
            roc.SetPoint (ibin+1,beff,seff)
        roc.SetPoint (hsig.GetNbinsX()+2,0,0)
        roc.GetYaxis().SetTitleSize(25)
        roc.GetXaxis().SetTitleSize(25)
        roc.GetYaxis().SetTitleOffset (1)
        roc.GetXaxis().SetTitleOffset (1)
        roc.SetLineColor(129)
        roc.SetLineWidth(3)
        roc.GetYaxis().SetRangeUser(0,1)
        roc.GetXaxis().SetRangeUser(0,1)
        return roc
    def scatter(self, varkey_x,varkey_y, label='', select='', make_profiles = True, save_in_rootfile=True):
        variable_x = None
        variable_y = None
        histos = []
        try:
            variable_x = self.variables.get(varkey_x)
            variable_y = self.variables.get(varkey_y)
        except KeyError:
            print "ERROR:scatter: check your variables !!"

        histname = ('scatter_histogram_' +
                    variable_x.name + '_vs_' + variable_y.name
                    + label + '_'
                    '')

        variable_x.root_legend  = ROOT.TLegend(0.6, 0.75,
                                    (1.00 - ROOT.gStyle.GetPadRightMargin()),
                                    (0.96 - ROOT.gStyle.GetPadTopMargin()))

        variable_x.root_cutflow = self.options.weight_branch
        variable_y.root_cutflow = self.options.weight_branch

        exec("""scatter_sig = ROOT.TH2F('scatter_sig_' + variable_x.name + '_' + variable_y.name,
                                ';' + variable_x.title +';'+variable_y.title+';entries',""" +
                                (variable_x.hist + variable_y.hist).replace(')(',',').replace(')','').replace('(','')+")"
            )
        exec("""scatter_bkg = ROOT.TH2F('scatter_bkg_' + variable_x.name + '_' + variable_y.name,
                                ';' + variable_x.title +';'+variable_y.title+';entries',""" +
                                (variable_x.hist + variable_y.hist).replace(')(',',').replace(')','').replace('(','')+")"
            )
        exec("""scatter_data = ROOT.TH2F('scatter_data_' + variable_x.name + '_' + variable_y.name,
                                ';' + variable_x.title +';'+variable_y.title+';entries',""" +
                                (variable_x.hist + variable_y.hist).replace(')(',',').replace(')','').replace('(','')+")"
            )
        _cutflow_ = self.variable_cutflow_2D(variable_x.name,variable_y,'')

        for proc,sample in self.samples.items():
            if sample.label.lower() in ['signal','background','data'] :
                print '-----------------------'
                print '++ ',sample.label
                _cutflow_here_ = _cutflow_
                if sample.cut != '':
                    _cutflow_here_ = _cutflow_ + '&&' + sample.cut
                if select != "":
                    _cutflow_here_ = _cutflow_here_ + '&& (' + select + ')'
                _weight_ = self.options.weight_branch if 'data' not in sample.label.lower() else '1'

                sample.root_tree.Project(
                        '_h_' + variable_x.name +"_"+variable_y.name +"_"+proc
                        +(variable_x.hist + variable_y.hist).replace(")(",","),
                          variable_y.formula +":"+variable_x.formula,
                          '*'.join(
                                [   "(" + _cutflow_here_ + ")",
                                    "%f" % self.options.kfactor,
                                    "%f" % self.options.intlumi,
                                    _weight_
                                ]
                            )
                        )
                h = ROOT.gDirectory.Get('_h_' + variable_x.name +"_"+variable_y.name +"_"+proc)
                h.SetDirectory(0)

                print '::', proc
                print '::', self.options.weight_branch if 'data' not in sample.label.lower() else '1'
                print '::', '*'.join(
                      [   "("+ _cutflow_here_+")",
                          "%f" % self.options.kfactor,
                          "%f" % self.options.intlumi,
                          self.options.weight_branch if 'data' not in sample.label.lower() else '1'
                      ]
                  )
                print ':: N=', h.GetEntries()
                print ':: I=', h.Integral()
                print
                if 'signal' in sample.label.lower():
                    scatter_sig.Add(h)
                if 'background' in sample.label.lower():
                    scatter_bkg.Add(h)
                if 'data' in sample.label.lower():
                    scatter_data.Add(h)
        print
        # scatter_sig = ROOT.gDirectory.Get('hsig_'+variable_x.name +"_"+variable_y.name)

        print scatter_sig
        if make_profiles:
            ymin = scatter_sig.GetYaxis().GetXmin()
            ymax = scatter_sig.GetYaxis().GetXmax()
            scatter_sig = scatter_sig.ProfileX(scatter_sig.GetName() + '_px', 1,-1,'')
            scatter_sig.SetMarkerColor(132)
            scatter_sig.SetMarkerStyle(20)
            scatter_sig.SetMarkerSize (0.8)
            scatter_sig.SetMaximum(ymax)
            scatter_sig.SetMinimum(ymin)

        scatter_sig.SetDirectory(0)
        scatter_sig.SetFillColor(0)
        scatter_sig.SetLineColor(ROOT.kRed+2)

        if make_profiles:
            ymin = scatter_bkg.GetYaxis().GetXmin()
            ymax = scatter_bkg.GetYaxis().GetXmax()
            scatter_bkg = scatter_bkg.ProfileX(scatter_bkg.GetName() + '_px', 1,-1,'')
            scatter_bkg.SetLineColor  (ROOT.kAzure + 1)
            scatter_bkg.SetMarkerColor(ROOT.kAzure + 1)
            scatter_bkg.SetMarkerStyle(20)
            scatter_bkg.SetMarkerSize (0.8)
            scatter_bkg.SetMaximum(ymax)
            scatter_bkg.SetMinimum(ymin)
        scatter_bkg.SetDirectory(0)
        scatter_bkg.SetFillColor(ROOT.kAzure + 1)

        if scatter_data!=None:
            scatter_data.SetDirectory(0)
            ymin = scatter_data.GetYaxis().GetXmin()
            ymax = scatter_data.GetYaxis().GetXmax()
            if make_profiles :
                scatter_data = scatter_data.ProfileX(scatter_data.GetName() + '_px', 1,-1,'')
                scatter_data.SetMaximum(ymax)
                scatter_data.SetMinimum(ymin)
            scatter_data.SetLineColor  (ROOT.kBlack)
            scatter_data.SetMarkerColor(ROOT.kBlack)
            scatter_data.SetMarkerStyle(20)
            scatter_data.SetMarkerSize (0.8)
        scatter_bkg.SetDirectory(0)
        scatter_bkg.SetFillColor(ROOT.kAzure + 1)
        xunit = variable_x.unit
        yunit = variable_y.unit
        if variable_x.unit != "" : xunit = "("+xunit+")"
        if variable_y.unit != "" : yunit = "("+yunit+")"
        _yaxistitle_ = variable_y.title

        if make_profiles:
            _yaxistitle_ = '#LT' + variable_y.title + '#GT'
        scatter_bkg.SetTitle(';%s %s;%s %s' % (variable_x.title, xunit, _yaxistitle_, yunit) )
        scatter_bkg.GetXaxis().SetTitleOffset(0.01)
        scatter_bkg.GetYaxis().SetTitleOffset(0.01)
        scatter_sig.GetXaxis().SetTitleOffset(0.01)
        scatter_sig.GetYaxis().SetTitleOffset(0.01)
        
        if make_profiles:
            leg_s = variable_x.root_legend.AddEntry( scatter_sig , "signal"    , "lep" )
            leg_b = variable_x.root_legend.AddEntry( scatter_bkg , "background", "lep" )
        else:
            leg_s = variable_x.root_legend.AddEntry( scatter_sig , "signal"    , "f" )
            leg_b = variable_x.root_legend.AddEntry( scatter_bkg , "background", "f" )

        if scatter_data!=None:
            leg_b = variable_x.root_legend.AddEntry( scatter_data , "data", "lep" if make_profiles else "f" )


        c = ROOT.TCanvas("c_" + histname,"c_" + histname,settings.canvas_width-50,settings.canvas_width-100)
        c.cd()

        self.customizeHisto(scatter_bkg)
        self.customizeHisto(scatter_sig)
        scatter_sig.GetXaxis().SetTitleOffset(1.4)
        scatter_bkg.GetXaxis().SetTitleOffset(1.4)

        c.SetFixedAspectRatio()
        c.SetRightMargin(0.15)
        if make_profiles:
            scatter_bkg.Draw("")
            scatter_sig.Draw("same")
            if scatter_data: scatter_data.Draw("same")
        else:
            scatter_bkg.DrawNormalized("colz")
            scatter_sig.DrawNormalized("box,same")
            if scatter_data:
                scatter_data.SetMarkerSize(0.5)
                scatter_data.SetMarkerColorAlpha(1,0.5)
                scatter_data.DrawNormalized("box,same")



        utils.draw_labels( self.options.label)
        utils.scatter_cms_headlabel( label_right='#sqrt{s} = 13 TeV, L = 41.5 fb^{-1}' ) #AL hard code lumi

        utils.draw_cut_line(scatter_sig,variable_x, axis='x')
        utils.draw_cut_line(scatter_sig,variable_y, axis='y')

        variable_x.root_legend.SetTextAlign( 12 )
        variable_x.root_legend.SetTextFont ( 43 )
        variable_x.root_legend.SetTextSize ( 18 )
        variable_x.root_legend.SetLineColor( 0 )
        variable_x.root_legend.SetFillColor( 0 )
        variable_x.root_legend.SetFillStyle( 0 )
        variable_x.root_legend.SetLineColorAlpha(0,0)
        variable_x.root_legend.SetShadowColor(0)
        variable_x.root_legend.Draw()
        f = ROOT.TFile(self.outdir + '/scatter/' + histname + ".root","recreate");
        for form in settings.plot_formats:
            if make_profiles:
                c.SaveAs(self.outdir + '/scatter/' + histname + '_profile.' + form )
            else:
                c.SaveAs(self.outdir + '/scatter/' + histname + '.' + form )
            if scatter_data!=None: scatter_data.Write()
            if scatter_bkg !=None: scatter_bkg.Write()
            if scatter_sig !=None: scatter_sig.Write()
            c.Write()
        f.Close()
