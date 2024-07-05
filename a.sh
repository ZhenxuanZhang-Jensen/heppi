OBJ: TStyle	YacineStyle	Yacine Style : 0 at: 0x4e94a20
('_samples_.items()', [(u'Z -> ee', <heppi.heppi.sample object at 0x7fa0e176e910>), (u'Data', <heppi.heppi.sample object at 0x7fa0e176e950>)])
('self.samples', OrderedDict([(u'Data', <heppi.heppi.sample object at 0x7fa0e176e950>), (u'Z -> ee', <heppi.heppi.sample object at 0x7fa0e176e910>)]))
SCZ  -- sample ::                 Data            0 SingleEleData_preVFP_Zee_BDT_tran_UL16_preVFP_all_samples_mass_window
SCZ1 SingleEleData_preVFP_Zee_BDT_tran_UL16_preVFP_all_samples_mass_window Data_13TeV_UntaggedTag
SCZ2 SingleEleData_preVFP_Zee_BDT_tran_UL16_preVFP_all_samples_mass_window Data_13TeV_UntaggedTag
Adding /eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/SingleEleData_preVFP_Zee_BDT_tran_UL16_preVFP_all_samples_mass_window.root/Data_13TeV_UntaggedTag for sample SingleEleData_preVFP_Zee_BDT_tran_UL16_preVFP_all_samples_mass_window
SCZ  -- sample ::              Z -> ee            0 DYMC_2016_PreVFP_Summer20UL_Zee_Syst_BDT_Tran_no_masswindow_msweight_no_sigmarv_all
SCZ1 DYMC_2016_PreVFP_Summer20UL_Zee_Syst_BDT_Tran_no_masswindow_msweight_no_sigmarv_all DYToLL_13TeV_UntaggedTag
SCZ2 DYMC_2016_PreVFP_Summer20UL_Zee_Syst_BDT_Tran_no_masswindow_msweight_no_sigmarv_all DYToLL_13TeV_UntaggedTag
Adding /eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/DYMC_2016_PreVFP_Summer20UL_Zee_Syst_BDT_Tran_no_masswindow_msweight_no_sigmarv_all.root/DYToLL_13TeV_UntaggedTag for sample DYMC_2016_PreVFP_Summer20UL_Zee_Syst_BDT_Tran_no_masswindow_msweight_no_sigmarv_all
check
CMS_hgg_mass
ED DEBUG initial cutflow is 
weight
ED DEBUG now cutflow is 
weight*(((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0)) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1))))
ED DEBUG now cutflow is 
weight*(((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0)) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1))))
('cutflow is :::::: ', u'weight*(((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0)) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1))))')
 OBJ: TH1F	h_CMS_hgg_mass	CMS_hgg_mass {weight*(((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0)) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1))))} : 0 at: 0x5777310
('samples.label', u'data')
checkcheck
<ROOT.TChain object ("Data_13TeV_UntaggedTag") at 0x4f700e0>
CMS_hgg_mass
checkcheck
start check 2
h_CMS_hgg_mass
end check 2
start check 3
end check 3
start check 4
 OBJ: TH1F	h_CMS_hgg_mass	CMS_hgg_mass {weight*(((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0)) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1))))} : 0 at: 0x5777310
 OBJ: TH1F	data_hist_clone	CMS_hgg_mass {weight*(((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0)) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1))))} : 0 at: 0x58e2070
None
end check 4
start check 5
end check 5
integral of this hist is 1449318.000
ED DEBUG initial cutflow is 
weight
ED DEBUG now cutflow is 
weight*(PTWeight*((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0) ) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1))))
ED DEBUG now cutflow is 
weight*(PTWeight*((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0) ) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1))))
('cutflow is :::::: ', u'weight*(PTWeight*((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0) ) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1))))')
ED DEBUG starting projection for proc Z -> ee sample  -- sample ::              Z -> ee      6062163
ED DEBUG variable formula is CMS_hgg_mass
('cutflow is :::::: ', u'weight*(PTWeight*((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0) ) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1))))')
ED DEBUG full cutflow is 
(weight*(PTWeight*((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0) ) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1)))))*20.042124*1.000000*1.000000
ED DEBUG done projection for proc Z -> ee sample  -- sample ::              Z -> ee      6062163
 OBJ: TH1F	data_hist_clone	CMS_hgg_mass {weight*(((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0)) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1))))} : 0 at: 0x58e2070
 OBJ: TH1F	h_CMS_hgg_mass	CMS_hgg_mass {(weight*(PTWeight*((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0) ) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1)))))*20.042124*1.000000*1.000000} : 0 at: 0x5984f60
('samples.label', u'background')
checkcheck
<ROOT.TChain object ("DYToLL_13TeV_UntaggedTag") at 0x5171480>
CMS_hgg_mass
checkcheck
start check 2
h_CMS_hgg_mass
end check 2
start check 3
end check 3
start check 4
 OBJ: TH1F	data_hist_clone	CMS_hgg_mass {weight*(((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0)) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1))))} : 0 at: 0x58e2070
 OBJ: TH1F	h_CMS_hgg_mass	CMS_hgg_mass {(weight*(PTWeight*((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0) ) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1)))))*20.042124*1.000000*1.000000} : 0 at: 0x5984f60
None
end check 4
start check 5
end check 5
integral of this hist is 1449319.309
[yacine] up_root_tree   6125646
key  MVA
variable.name  CMS_hgg_mass
variable.formula  CMS_hgg_mass
syst <heppi.heppi.systematic object at 0x7fa0e176eb90>
_cutflow_  weight*(PTWeight*((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0) ) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1))))
sample.kfactor  1.0
self.options.kfactor  20.042124
self.options.intlumi  1
_h_syst_  1144362.0
('sample.name ', u'Z -> ee')
ED DEBUG draw syst hist
('_h_syst_ ', 1144362.0)
('hist ', 1133734.0)
('-sys_flip- ', 'up')
[yacine] down_root_tree   5965806
key  MVA
variable.name  CMS_hgg_mass
variable.formula  CMS_hgg_mass
syst <heppi.heppi.systematic object at 0x7fa0e176eb90>
_cutflow_  weight*(PTWeight*((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0) ) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1))))
sample.kfactor  1.0
self.options.kfactor  20.042124
self.options.intlumi  1
_h_syst_  1116173.0
('sample.name ', u'Z -> ee')
ED DEBUG draw syst hist
('_h_syst_ ', 1116173.0)
('hist ', 1133734.0)
('-sys_flip- ', 'down')
[yacine] up_root_tree   6062163
key  SOE
variable.name  CMS_hgg_mass
variable.formula  CMS_hgg_mass
syst <heppi.heppi.systematic object at 0x7fa0e176ebd0>
_cutflow_  weight*(PTWeight*((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0) ) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1))))
sample.kfactor  1.0
self.options.kfactor  20.042124
self.options.intlumi  1
_h_syst_  1133734.0
('sample.name ', u'Z -> ee')
ED DEBUG draw syst hist
('_h_syst_ ', 1133734.0)
('hist ', 1133734.0)
('-sys_flip- ', 'up')
[yacine] down_root_tree   6062163
key  SOE
variable.name  CMS_hgg_mass
variable.formula  CMS_hgg_mass
syst <heppi.heppi.systematic object at 0x7fa0e176ebd0>
_cutflow_  weight*(PTWeight*((CMS_hgg_mass>80.0 && CMS_hgg_mass<100.0) ) && !((abs(leadeta)<1.5) && (abs(subleadeta)<1.5)) && (((abs(leadeta)<2.1) && (abs(subleadeta)<2.1))))
sample.kfactor  1.0
self.options.kfactor  20.042124
self.options.intlumi  1
_h_syst_  1133734.0
('sample.name ', u'Z -> ee')
ED DEBUG draw syst hist
('_h_syst_ ', 1133734.0)
('hist ', 1133734.0)
('-sys_flip- ', 'down')
making a ratio plot ? :: True
ED DEBUG hstack
<ROOT.THStack object ("hs_CMS_hgg_mass") at 0x576a820>
ED DEBUG hstack.GetStack()
<ROOT.TObjArray object ("TObjArray") at 0x5ebbd80>
ED DEBUG hstack.GetStack().Last()
<ROOT.TH1F object ("h_CMS_hgg_mass_background") at 0x5e90d30>
ED DEBUG systematics
{u'MVA': <heppi.heppi.systematic object at 0x7fa0e176e890>, u'SOE': <heppi.heppi.systematic object at 0x7fa0e176e8d0>}
ED DEBUG self.systematics.keys()
[u'MVA', u'SOE']
ED DEBUG self.systematics.keys()[0]
MVA
('draw_error_band y', 0.0)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 0.0)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 0.0)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 0.0)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 3179.3759765625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3241.9482421875)
('draw_error_band up_diff', 62.572265625)
('draw_error_band y', 3179.3759765625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3179.3759765625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 3219.672607421875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3262.60302734375)
('draw_error_band up_diff', 42.930419921875)
('draw_error_band y', 3219.672607421875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3219.672607421875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 3342.154052734375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3384.859619140625)
('draw_error_band up_diff', 42.70556640625)
('draw_error_band y', 3342.154052734375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3342.154052734375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 3522.076904296875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3545.58984375)
('draw_error_band up_diff', 23.512939453125)
('draw_error_band y', 3522.076904296875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3522.076904296875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 3925.108642578125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3987.89599609375)
('draw_error_band up_diff', 62.787353515625)
('draw_error_band y', 3925.108642578125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3925.108642578125)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 4114.68603515625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 4152.2041015625)
('draw_error_band up_diff', 37.51806640625)
('draw_error_band y', 4114.68603515625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 4114.68603515625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 4268.341796875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 4323.6630859375)
('draw_error_band up_diff', 55.3212890625)
('draw_error_band y', 4268.341796875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 4268.341796875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 4514.0966796875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 4557.00048828125)
('draw_error_band up_diff', 42.90380859375)
('draw_error_band y', 4514.0966796875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 4514.0966796875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 4598.3505859375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 4672.11669921875)
('draw_error_band up_diff', 73.76611328125)
('draw_error_band y', 4598.3505859375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 4598.3505859375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 4973.673828125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 5060.07470703125)
('draw_error_band up_diff', 86.40087890625)
('draw_error_band y', 4973.673828125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 4973.673828125)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 5435.68017578125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 5485.40869140625)
('draw_error_band up_diff', 49.728515625)
('draw_error_band y', 5435.68017578125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 5435.68017578125)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 5644.61865234375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 5722.6142578125)
('draw_error_band up_diff', 77.99560546875)
('draw_error_band y', 5644.61865234375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 5644.61865234375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 5989.24658203125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 6027.9423828125)
('draw_error_band up_diff', 38.69580078125)
('draw_error_band y', 5989.24658203125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 5989.24658203125)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 6447.72607421875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 6537.7978515625)
('draw_error_band up_diff', 90.07177734375)
('draw_error_band y', 6447.72607421875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 6447.72607421875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 6721.0634765625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 6808.01416015625)
('draw_error_band up_diff', 86.95068359375)
('draw_error_band y', 6721.0634765625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 6721.0634765625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 7395.68994140625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 7468.71923828125)
('draw_error_band up_diff', 73.029296875)
('draw_error_band y', 7395.68994140625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 7395.68994140625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 7799.890625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 7890.9228515625)
('draw_error_band up_diff', 91.0322265625)
('draw_error_band y', 7799.890625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 7799.890625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 8329.95703125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 8390.8701171875)
('draw_error_band up_diff', 60.9130859375)
('draw_error_band y', 8329.95703125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 8329.95703125)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 9267.091796875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 9344.2958984375)
('draw_error_band up_diff', 77.2041015625)
('draw_error_band y', 9267.091796875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 9267.091796875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 9624.0380859375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 9737.0439453125)
('draw_error_band up_diff', 113.005859375)
('draw_error_band y', 9624.0380859375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 9624.0380859375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 10288.9482421875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 10379.9091796875)
('draw_error_band up_diff', 90.9609375)
('draw_error_band y', 10288.9482421875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 10288.9482421875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 10596.4345703125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 10725.306640625)
('draw_error_band up_diff', 128.8720703125)
('draw_error_band y', 10596.4345703125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 10596.4345703125)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 11719.75390625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 11863.0546875)
('draw_error_band up_diff', 143.30078125)
('draw_error_band y', 11719.75390625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 11719.75390625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 12604.7802734375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 12717.177734375)
('draw_error_band up_diff', 112.3974609375)
('draw_error_band y', 12604.7802734375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 12604.7802734375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 13567.4833984375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 13672.072265625)
('draw_error_band up_diff', 104.5888671875)
('draw_error_band y', 13567.4833984375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 13567.4833984375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 14198.388671875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 14328.5)
('draw_error_band up_diff', 130.111328125)
('draw_error_band y', 14198.388671875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 14198.388671875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 15129.634765625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 15240.7021484375)
('draw_error_band up_diff', 111.0673828125)
('draw_error_band y', 15129.634765625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 15129.634765625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 16282.1318359375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 16437.494140625)
('draw_error_band up_diff', 155.3623046875)
('draw_error_band y', 16282.1318359375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 16282.1318359375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 17326.9609375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 17476.046875)
('draw_error_band up_diff', 149.0859375)
('draw_error_band y', 17326.9609375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 17326.9609375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 18390.791015625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 18520.236328125)
('draw_error_band up_diff', 129.4453125)
('draw_error_band y', 18390.791015625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 18390.791015625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 20070.40625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 20198.37109375)
('draw_error_band up_diff', 127.96484375)
('draw_error_band y', 20070.40625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 20070.40625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 21113.23828125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 21274.521484375)
('draw_error_band up_diff', 161.283203125)
('draw_error_band y', 21113.23828125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 21113.23828125)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 22157.462890625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 22356.453125)
('draw_error_band up_diff', 198.990234375)
('draw_error_band y', 22157.462890625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 22157.462890625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 23577.02734375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 23743.431640625)
('draw_error_band up_diff', 166.404296875)
('draw_error_band y', 23577.02734375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 23577.02734375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 24721.861328125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 24916.65234375)
('draw_error_band up_diff', 194.791015625)
('draw_error_band y', 24721.861328125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 24721.861328125)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 25686.6015625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 25871.798828125)
('draw_error_band up_diff', 185.197265625)
('draw_error_band y', 25686.6015625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 25686.6015625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 26971.087890625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 27205.427734375)
('draw_error_band up_diff', 234.33984375)
('draw_error_band y', 26971.087890625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 26971.087890625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 28761.158203125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 29022.984375)
('draw_error_band up_diff', 261.826171875)
('draw_error_band y', 28761.158203125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 28761.158203125)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 30310.224609375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 30544.37890625)
('draw_error_band up_diff', 234.154296875)
('draw_error_band y', 30310.224609375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 30310.224609375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 31165.41015625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 31352.634765625)
('draw_error_band up_diff', 187.224609375)
('draw_error_band y', 31165.41015625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 31165.41015625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 32338.83203125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 32584.8125)
('draw_error_band up_diff', 245.98046875)
('draw_error_band y', 32338.83203125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 32338.83203125)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 33161.546875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 33362.48828125)
('draw_error_band up_diff', 200.94140625)
('draw_error_band y', 33161.546875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 33161.546875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 34450.00390625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 34719.07421875)
('draw_error_band up_diff', 269.0703125)
('draw_error_band y', 34450.00390625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 34450.00390625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 35630.0546875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 35922.0234375)
('draw_error_band up_diff', 291.96875)
('draw_error_band y', 35630.0546875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 35630.0546875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 35448.66796875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 35760.046875)
('draw_error_band up_diff', 311.37890625)
('draw_error_band y', 35448.66796875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 35448.66796875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 35798.5625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 36070.52734375)
('draw_error_band up_diff', 271.96484375)
('draw_error_band y', 35798.5625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 35798.5625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 36161.05078125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 36462.2421875)
('draw_error_band up_diff', 301.19140625)
('draw_error_band y', 36161.05078125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 36161.05078125)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 36137.0625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 36420.828125)
('draw_error_band up_diff', 283.765625)
('draw_error_band y', 36137.0625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 36137.0625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 36221.01953125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 36450.39453125)
('draw_error_band up_diff', 229.375)
('draw_error_band y', 36221.01953125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 36221.01953125)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 36082.7265625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 36339.359375)
('draw_error_band up_diff', 256.6328125)
('draw_error_band y', 36082.7265625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 36082.7265625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 35744.671875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 36032.73828125)
('draw_error_band up_diff', 288.06640625)
('draw_error_band y', 35744.671875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 35744.671875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 35052.2890625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 35318.76953125)
('draw_error_band up_diff', 266.48046875)
('draw_error_band y', 35052.2890625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 35052.2890625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 33972.54296875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 34251.82421875)
('draw_error_band up_diff', 279.28125)
('draw_error_band y', 33972.54296875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 33972.54296875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 32924.48828125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 33198.75)
('draw_error_band up_diff', 274.26171875)
('draw_error_band y', 32924.48828125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 32924.48828125)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 31541.80859375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 31777.626953125)
('draw_error_band up_diff', 235.818359375)
('draw_error_band y', 31541.80859375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 31541.80859375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 30530.525390625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 30749.177734375)
('draw_error_band up_diff', 218.65234375)
('draw_error_band y', 30530.525390625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 30530.525390625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 28788.759765625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 29046.890625)
('draw_error_band up_diff', 258.130859375)
('draw_error_band y', 28788.759765625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 28788.759765625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 27706.701171875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 27964.1015625)
('draw_error_band up_diff', 257.400390625)
('draw_error_band y', 27706.701171875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 27706.701171875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 25826.375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 26020.611328125)
('draw_error_band up_diff', 194.236328125)
('draw_error_band y', 25826.375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 25826.375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 24679.515625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 24894.10546875)
('draw_error_band up_diff', 214.58984375)
('draw_error_band y', 24679.515625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 24679.515625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 22390.388671875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 22558.03515625)
('draw_error_band up_diff', 167.646484375)
('draw_error_band y', 22390.388671875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 22390.388671875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 21759.072265625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 21974.427734375)
('draw_error_band up_diff', 215.35546875)
('draw_error_band y', 21759.072265625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 21759.072265625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 20127.53515625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 20324.248046875)
('draw_error_band up_diff', 196.712890625)
('draw_error_band y', 20127.53515625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 20127.53515625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 18108.697265625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 18299.09375)
('draw_error_band up_diff', 190.396484375)
('draw_error_band y', 18108.697265625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 18108.697265625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 16720.166015625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 16880.4609375)
('draw_error_band up_diff', 160.294921875)
('draw_error_band y', 16720.166015625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 16720.166015625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 15612.396484375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 15755.646484375)
('draw_error_band up_diff', 143.25)
('draw_error_band y', 15612.396484375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 15612.396484375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 14305.3037109375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 14485.28515625)
('draw_error_band up_diff', 179.9814453125)
('draw_error_band y', 14305.3037109375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 14305.3037109375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 13255.23046875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 13368.439453125)
('draw_error_band up_diff', 113.208984375)
('draw_error_band y', 13255.23046875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 13255.23046875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 12019.66015625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 12122.2001953125)
('draw_error_band up_diff', 102.5400390625)
('draw_error_band y', 12019.66015625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 12019.66015625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 10932.826171875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 11043.4638671875)
('draw_error_band up_diff', 110.6376953125)
('draw_error_band y', 10932.826171875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 10932.826171875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 9729.703125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 9823.66796875)
('draw_error_band up_diff', 93.96484375)
('draw_error_band y', 9729.703125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 9729.703125)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 9237.2978515625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 9348.1728515625)
('draw_error_band up_diff', 110.875)
('draw_error_band y', 9237.2978515625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 9237.2978515625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 8282.0302734375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 8365.7158203125)
('draw_error_band up_diff', 83.685546875)
('draw_error_band y', 8282.0302734375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 8282.0302734375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 7300.73291015625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 7372.384765625)
('draw_error_band up_diff', 71.65185546875)
('draw_error_band y', 7300.73291015625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 7300.73291015625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 6892.93212890625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 6978.56494140625)
('draw_error_band up_diff', 85.6328125)
('draw_error_band y', 6892.93212890625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 6892.93212890625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 6375.77880859375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 6451.33984375)
('draw_error_band up_diff', 75.56103515625)
('draw_error_band y', 6375.77880859375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 6375.77880859375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 5666.369140625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 5718.486328125)
('draw_error_band up_diff', 52.1171875)
('draw_error_band y', 5666.369140625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 5666.369140625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 5309.51513671875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 5373.0009765625)
('draw_error_band up_diff', 63.48583984375)
('draw_error_band y', 5309.51513671875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 5309.51513671875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 4991.19140625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 5059.08544921875)
('draw_error_band up_diff', 67.89404296875)
('draw_error_band y', 4991.19140625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 4991.19140625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 4635.50537109375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 4704.93798828125)
('draw_error_band up_diff', 69.4326171875)
('draw_error_band y', 4635.50537109375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 4635.50537109375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 4087.97802734375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 4200.31689453125)
('draw_error_band up_diff', 112.3388671875)
('draw_error_band y', 4087.97802734375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 4087.97802734375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 4051.05078125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 4082.184326171875)
('draw_error_band up_diff', 31.133544921875)
('draw_error_band y', 4051.05078125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 4051.05078125)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 3755.269287109375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3795.131103515625)
('draw_error_band up_diff', 39.86181640625)
('draw_error_band y', 3755.269287109375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3755.269287109375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 3390.3857421875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3463.4072265625)
('draw_error_band up_diff', 73.021484375)
('draw_error_band y', 3390.3857421875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3390.3857421875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 3227.94482421875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3271.133056640625)
('draw_error_band up_diff', 43.188232421875)
('draw_error_band y', 3227.94482421875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3227.94482421875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 3015.97265625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3050.326904296875)
('draw_error_band up_diff', 34.354248046875)
('draw_error_band y', 3015.97265625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 3015.97265625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 2709.35498046875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 2749.169677734375)
('draw_error_band up_diff', 39.814697265625)
('draw_error_band y', 2709.35498046875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 2709.35498046875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 2697.563232421875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 2720.932373046875)
('draw_error_band up_diff', 23.369140625)
('draw_error_band y', 2697.563232421875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 2697.563232421875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 2613.353759765625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 2644.2890625)
('draw_error_band up_diff', 30.935302734375)
('draw_error_band y', 2613.353759765625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 2613.353759765625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 2336.265625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 2360.53857421875)
('draw_error_band up_diff', 24.27294921875)
('draw_error_band y', 2336.265625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 2336.265625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 2220.143798828125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 2245.5615234375)
('draw_error_band up_diff', 25.417724609375)
('draw_error_band y', 2220.143798828125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 2220.143798828125)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 2267.137451171875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 2280.8671875)
('draw_error_band up_diff', 13.729736328125)
('draw_error_band y', 2267.137451171875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 2267.137451171875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 2131.396240234375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 2151.73388671875)
('draw_error_band up_diff', 20.337646484375)
('draw_error_band y', 2131.396240234375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 2131.396240234375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 2013.8240966796875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 2040.2353515625)
('draw_error_band up_diff', 26.4112548828125)
('draw_error_band y', 2013.8240966796875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 2013.8240966796875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 1932.9156494140625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 1945.97900390625)
('draw_error_band up_diff', 13.0633544921875)
('draw_error_band y', 1932.9156494140625)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 1932.9156494140625)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 1842.7991943359375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 1862.0194091796875)
('draw_error_band up_diff', 19.22021484375)
('draw_error_band y', 1842.7991943359375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 1842.7991943359375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 1583.185302734375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 1609.8790283203125)
('draw_error_band up_diff', 26.6937255859375)
('draw_error_band y', 1583.185302734375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 1583.185302734375)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 1668.4951171875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 1704.6177978515625)
('draw_error_band up_diff', 36.1226806640625)
('draw_error_band y', 1668.4951171875)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 1668.4951171875)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 1555.2794189453125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 1571.908935546875)
('draw_error_band up_diff', 16.6295166015625)
('draw_error_band y', 1555.2794189453125)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 1555.2794189453125)
('draw_error_band up_diff', 0.0)
('draw_error_band y', 1417.130859375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 1449.0062255859375)
('draw_error_band up_diff', 31.8753662109375)
('draw_error_band y', 1417.130859375)
('draw_error_band syst.up_histo.GetBinContent(ibin)', 1417.130859375)
('draw_error_band up_diff', 0.0)
ED DEBUG herrstat
ED DEBUG herrstat.GetEntries()
1133835.0
ED DEBUG herrsyst.GetEntries()
1133835.0
ED DEBUG herrsyst.GetBinContent(0)
0.0
ED DEBUG herrsyst.GetBinContent(1)
3178.51904297
ED DEBUG herrsyst.GetBinContent(2)
3213.44042969
ED DEBUG herrsyst.GetBinContent(3)
3338.27124023
ED DEBUG herrsyst.GetBinContent(4)
3515.56469727
ED DEBUG herrsyst.GetBinContent(5)
3903.40600586
ED DEBUG herrsyst.GetBinContent(6)
4104.45214844
ED DEBUG herrsyst.GetBinContent(7)
4261.32373047
:: h_CMS_hgg_mass_data
:: h_CMS_hgg_mass_background
option1
AL DEBUG: for bin number 0.000000 

AL DEBUG: max band error is 1.000000 

AL DEBUG: min band error is 1.000000 

('abs(band_max/band_min)', 1.0)
bin  1  y  3179.37597656  stat  93.5258497779
syst.up_histo.GetBinContent(ibin) 3241.94824219
('draw_error_band y', 3179.3759765625)
syst.down_histo.GetBinContent(ibin) 3113.77124023
up_diff 0.019680675103
dw_diff -0.020634469409
up_err_sum2 0.000865325593774
dw_err_sum2 0.000865325593774
syst.up_histo.GetBinContent(ibin) 3179.37597656
('draw_error_band y', 3179.3759765625)
syst.down_histo.GetBinContent(ibin) 3179.37597656
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00125265456628
dw_err_sum2 0.00129110692157
AL DEBUG: for bin number 1.000000 

AL DEBUG: max band error is 1.035393 

AL DEBUG: min band error is 0.964068 

('abs(band_max/band_min)', 1.07398319925918)
bin  2  y  3219.67260742  stat  94.3441490611
syst.up_histo.GetBinContent(ibin) 3262.60302734
('draw_error_band y', 3219.672607421875)
syst.down_histo.GetBinContent(ibin) 3151.98022461
up_diff 0.0133337842559
dw_diff -0.0210246168062
up_err_sum2 0.00085863090877
dw_err_sum2 0.00085863090877
syst.up_histo.GetBinContent(ibin) 3219.67260742
('draw_error_band y', 3219.672607421875)
syst.down_histo.GetBinContent(ibin) 3219.67260742
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00103642071135
dw_err_sum2 0.00130066542062
AL DEBUG: for bin number 2.000000 

AL DEBUG: max band error is 1.032193 

AL DEBUG: min band error is 0.963935 

('abs(band_max/band_min)', 1.070812045921442)
bin  3  y  3342.15405273  stat  96.7321210552
syst.up_histo.GetBinContent(ibin) 3384.85961914
('draw_error_band y', 3342.154052734375)
syst.down_histo.GetBinContent(ibin) 3282.77124023
up_diff 0.0127778569547
dw_diff -0.0177678262471
up_err_sum2 0.000837699956232
dw_err_sum2 0.000837699956232
syst.up_histo.GetBinContent(ibin) 3342.15405273
('draw_error_band y', 3342.154052734375)
syst.down_histo.GetBinContent(ibin) 3342.15405273
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00100097358459
dw_err_sum2 0.00115339560578
AL DEBUG: for bin number 3.000000 

AL DEBUG: max band error is 1.031638 

AL DEBUG: min band error is 0.966038 

('abs(band_max/band_min)', 1.0679060484545584)
bin  4  y  3522.0769043  stat  100.776317436
syst.up_histo.GetBinContent(ibin) 3545.58984375
('draw_error_band y', 3522.076904296875)
syst.down_histo.GetBinContent(ibin) 3463.61254883
up_diff 0.00667587338154
dw_diff -0.016599397758
up_err_sum2 0.000818689649296
dw_err_sum2 0.000818689649296
syst.up_histo.GetBinContent(ibin) 3522.0769043
('draw_error_band y', 3522.076904296875)
syst.down_histo.GetBinContent(ibin) 3522.0769043
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000863256934703
dw_err_sum2 0.00109422965523
AL DEBUG: for bin number 4.000000 

AL DEBUG: max band error is 1.029381 

AL DEBUG: min band error is 0.966921 

('abs(band_max/band_min)', 1.0645971965528818)
bin  5  y  3925.10864258  stat  103.676698893
syst.up_histo.GetBinContent(ibin) 3987.89599609
('draw_error_band y', 3925.108642578125)
syst.down_histo.GetBinContent(ibin) 3797.24829102
up_diff 0.015996335193
dw_diff -0.0325749840846
up_err_sum2 0.000697684311354
dw_err_sum2 0.000697684311354
syst.up_histo.GetBinContent(ibin) 3925.10864258
('draw_error_band y', 3925.108642578125)
syst.down_histo.GetBinContent(ibin) 3925.10864258
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000953567050961
dw_err_sum2 0.00175881389947
AL DEBUG: for bin number 5.000000 

AL DEBUG: max band error is 1.030880 

AL DEBUG: min band error is 0.958062 

('abs(band_max/band_min)', 1.0760056370368238)
bin  6  y  4114.68603516  stat  107.242927201
syst.up_histo.GetBinContent(ibin) 4152.20410156
('draw_error_band y', 4114.68603515625)
syst.down_histo.GetBinContent(ibin) 4034.203125
up_diff 0.00911808728192
dw_diff -0.0195599152569
up_err_sum2 0.000679303596392
dw_err_sum2 0.000679303596392
syst.up_histo.GetBinContent(ibin) 4114.68603516
('draw_error_band y', 4114.68603515625)
syst.down_histo.GetBinContent(ibin) 4114.68603516
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000762443112073
dw_err_sum2 0.00106189388125
AL DEBUG: for bin number 6.000000 

AL DEBUG: max band error is 1.027612 

AL DEBUG: min band error is 0.967413 

('abs(band_max/band_min)', 1.0622268543685414)
bin  7  y  4268.34179688  stat  109.275402116
syst.up_histo.GetBinContent(ibin) 4323.66308594
('draw_error_band y', 4268.341796875)
syst.down_histo.GetBinContent(ibin) 4186.51416016
up_diff 0.0129608385868
dw_diff -0.0191708257241
up_err_sum2 0.000655430199712
dw_err_sum2 0.000655430199712
syst.up_histo.GetBinContent(ibin) 4268.34179688
('draw_error_band y', 4268.341796875)
syst.down_histo.GetBinContent(ibin) 4268.34179688
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000823413536584
dw_err_sum2 0.00102295075866
AL DEBUG: for bin number 7.000000 

AL DEBUG: max band error is 1.028695 

AL DEBUG: min band error is 0.968016 

('abs(band_max/band_min)', 1.062683632891005)
bin  8  y  4514.09667969  stat  111.403822744
syst.up_histo.GetBinContent(ibin) 4557.00048828
('draw_error_band y', 4514.0966796875)
syst.down_histo.GetBinContent(ibin) 4410.79589844
up_diff 0.00950440622745
dw_diff -0.0228840427177
up_err_sum2 0.00060905775131
dw_err_sum2 0.00060905775131
syst.up_histo.GetBinContent(ibin) 4514.09667969
('draw_error_band y', 4514.0966796875)
syst.down_histo.GetBinContent(ibin) 4514.09667969
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000699391489047
dw_err_sum2 0.00113273716242
AL DEBUG: for bin number 8.000000 

AL DEBUG: max band error is 1.026446 

AL DEBUG: min band error is 0.966344 

('abs(band_max/band_min)', 1.0621954311059945)
bin  9  y  4598.35058594  stat  113.527197614
syst.up_histo.GetBinContent(ibin) 4672.11669922
('draw_error_band y', 4598.3505859375)
syst.down_histo.GetBinContent(ibin) 4480.39404297
up_diff 0.0160418636863
dw_diff -0.0256519246987
up_err_sum2 0.000609530828542
dw_err_sum2 0.000609530828542
syst.up_histo.GetBinContent(ibin) 4598.35058594
('draw_error_band y', 4598.3505859375)
syst.down_histo.GetBinContent(ibin) 4598.35058594
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000866872219071
dw_err_sum2 0.00126755206929
AL DEBUG: for bin number 9.000000 

AL DEBUG: max band error is 1.029443 

AL DEBUG: min band error is 0.964397 

('abs(band_max/band_min)', 1.06744667487805)
bin  10  y  4973.67382812  stat  120.076375618
syst.up_histo.GetBinContent(ibin) 5060.07470703
('draw_error_band y', 4973.673828125)
syst.down_histo.GetBinContent(ibin) 4891.01611328
up_diff 0.0173716415455
dw_diff -0.0166190461418
up_err_sum2 0.000582855017501
dw_err_sum2 0.000582855017501
syst.up_histo.GetBinContent(ibin) 4973.67382812
('draw_error_band y', 4973.673828125)
syst.down_histo.GetBinContent(ibin) 4973.67382812
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000884628947485
dw_err_sum2 0.000859047712164
AL DEBUG: for bin number 10.000000 

AL DEBUG: max band error is 1.029743 

AL DEBUG: min band error is 0.970690 

('abs(band_max/band_min)', 1.0608352808588704)
bin  11  y  5435.68017578  stat  123.293873165
syst.up_histo.GetBinContent(ibin) 5485.40869141
('draw_error_band y', 5435.68017578125)
syst.down_histo.GetBinContent(ibin) 5337.67138672
up_diff 0.00914853597284
dw_diff -0.0180306393851
up_err_sum2 0.000514487941029
dw_err_sum2 0.000514487941029
syst.up_histo.GetBinContent(ibin) 5435.68017578
('draw_error_band y', 5435.68017578125)
syst.down_histo.GetBinContent(ibin) 5435.68017578
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000598183651475
dw_err_sum2 0.000839591897666
AL DEBUG: for bin number 11.000000 

AL DEBUG: max band error is 1.024458 

AL DEBUG: min band error is 0.971024 

('abs(band_max/band_min)', 1.055027980392545)
bin  12  y  5644.61865234  stat  127.577440367
syst.up_histo.GetBinContent(ibin) 5722.61425781
('draw_error_band y', 5644.61865234375)
syst.down_histo.GetBinContent(ibin) 5535.76855469
up_diff 0.0138176926153
dw_diff -0.0192838709504
up_err_sum2 0.000510832542255
dw_err_sum2 0.000510832542255
syst.up_histo.GetBinContent(ibin) 5644.61865234
('draw_error_band y', 5644.61865234375)
syst.down_histo.GetBinContent(ibin) 5644.61865234
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000701761171467
dw_err_sum2 0.000882700221089
AL DEBUG: for bin number 12.000000 

AL DEBUG: max band error is 1.026491 

AL DEBUG: min band error is 0.970290 

('abs(band_max/band_min)', 1.0579219225544056)
bin  13  y  5989.24658203  stat  129.509144892
syst.up_histo.GetBinContent(ibin) 6027.94238281
('draw_error_band y', 5989.24658203125)
syst.down_histo.GetBinContent(ibin) 5838.14013672
up_diff 0.00646087955326
dw_diff -0.0252296250026
up_err_sum2 0.000467580600474
dw_err_sum2 0.000467580600474
syst.up_histo.GetBinContent(ibin) 5989.24658203
('draw_error_band y', 5989.24658203125)
syst.down_histo.GetBinContent(ibin) 5989.24658203
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000509323565075
dw_err_sum2 0.00110411457824
AL DEBUG: for bin number 13.000000 

AL DEBUG: max band error is 1.022568 

AL DEBUG: min band error is 0.966772 

('abs(band_max/band_min)', 1.057714156359858)
bin  14  y  6447.72607422  stat  133.730591244
syst.up_histo.GetBinContent(ibin) 6537.79785156
('draw_error_band y', 6447.72607421875)
syst.down_histo.GetBinContent(ibin) 6335.09912109
up_diff 0.0139695415573
dw_diff -0.0174677012994
up_err_sum2 0.000430178174461
dw_err_sum2 0.000430178174461
syst.up_histo.GetBinContent(ibin) 6447.72607422
('draw_error_band y', 6447.72607421875)
syst.down_histo.GetBinContent(ibin) 6447.72607422
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000625326265782
dw_err_sum2 0.000735298763148
AL DEBUG: for bin number 14.000000 

AL DEBUG: max band error is 1.025007 

AL DEBUG: min band error is 0.972884 

('abs(band_max/band_min)', 1.0535756969992305)
bin  15  y  6721.06347656  stat  138.3290387
syst.up_histo.GetBinContent(ibin) 6808.01416016
('draw_error_band y', 6721.0634765625)
syst.down_histo.GetBinContent(ibin) 6599.24121094
up_diff 0.0129370424631
dw_diff -0.0181254448868
up_err_sum2 0.000423594900919
dw_err_sum2 0.000423594900919
syst.up_histo.GetBinContent(ibin) 6721.06347656
('draw_error_band y', 6721.0634765625)
syst.down_histo.GetBinContent(ibin) 6721.06347656
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000590961968612
dw_err_sum2 0.000752126653263
AL DEBUG: for bin number 15.000000 

AL DEBUG: max band error is 1.024310 

AL DEBUG: min band error is 0.972575 

('abs(band_max/band_min)', 1.0531934638313691)
bin  16  y  7395.68994141  stat  143.824047228
syst.up_histo.GetBinContent(ibin) 7468.71923828
('draw_error_band y', 7395.68994140625)
syst.down_histo.GetBinContent(ibin) 7263.41650391
up_diff 0.0098745752531
dw_diff -0.017885205917
up_err_sum2 0.000378186150508
dw_err_sum2 0.000378186150508
syst.up_histo.GetBinContent(ibin) 7395.68994141
('draw_error_band y', 7395.68994140625)
syst.down_histo.GetBinContent(ibin) 7395.68994141
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000475693386937
dw_err_sum2 0.0006980667412
AL DEBUG: for bin number 16.000000 

AL DEBUG: max band error is 1.021810 

AL DEBUG: min band error is 0.973579 

('abs(band_max/band_min)', 1.0495402495876223)
bin  17  y  7799.890625  stat  146.993853451
syst.up_histo.GetBinContent(ibin) 7890.92285156
('draw_error_band y', 7799.890625)
syst.down_histo.GetBinContent(ibin) 7670.796875
up_diff 0.0116709619326
dw_diff -0.0165507128505
up_err_sum2 0.000355157773437
dw_err_sum2 0.000355157773437
syst.up_histo.GetBinContent(ibin) 7799.890625
('draw_error_band y', 7799.890625)
syst.down_histo.GetBinContent(ibin) 7799.890625
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000491369125869
dw_err_sum2 0.000629083869298
AL DEBUG: for bin number 17.000000 

AL DEBUG: max band error is 1.022167 

AL DEBUG: min band error is 0.974918 

('abs(band_max/band_min)', 1.0484639423682554)
bin  18  y  8329.95703125  stat  153.454947867
syst.up_histo.GetBinContent(ibin) 8390.87011719
('draw_error_band y', 8329.95703125)
syst.down_histo.GetBinContent(ibin) 8214.48828125
up_diff 0.00731253303096
dw_diff -0.0138618662217
up_err_sum2 0.00033937220459
dw_err_sum2 0.00033937220459
syst.up_histo.GetBinContent(ibin) 8329.95703125
('draw_error_band y', 8329.95703125)
syst.down_histo.GetBinContent(ibin) 8329.95703125
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000392845343919
dw_err_sum2 0.00053152353974
AL DEBUG: for bin number 18.000000 

AL DEBUG: max band error is 1.019820 

AL DEBUG: min band error is 0.976945 

('abs(band_max/band_min)', 1.043886924848196)
bin  19  y  9267.09179688  stat  160.289091512
syst.up_histo.GetBinContent(ibin) 9344.29589844
('draw_error_band y', 9267.091796875)
syst.down_histo.GetBinContent(ibin) 9075.97851562
up_diff 0.00833099566236
dw_diff -0.0206227892676
up_err_sum2 0.000299172041341
dw_err_sum2 0.000299172041341
syst.up_histo.GetBinContent(ibin) 9267.09179688
('draw_error_band y', 9267.091796875)
syst.down_histo.GetBinContent(ibin) 9267.09179688
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000368577530067
dw_err_sum2 0.000724471478515
AL DEBUG: for bin number 19.000000 

AL DEBUG: max band error is 1.019198 

AL DEBUG: min band error is 0.973084 

('abs(band_max/band_min)', 1.0473899286501624)
bin  20  y  9624.03808594  stat  165.33491993
syst.up_histo.GetBinContent(ibin) 9737.04394531
('draw_error_band y', 9624.0380859375)
syst.down_histo.GetBinContent(ibin) 9443.70019531
up_diff 0.0117420419959
dw_diff -0.0187382769077
up_err_sum2 0.000295130784864
dw_err_sum2 0.000295130784864
syst.up_histo.GetBinContent(ibin) 9624.03808594
('draw_error_band y', 9624.0380859375)
syst.down_histo.GetBinContent(ibin) 9624.03808594
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000433006335097
dw_err_sum2 0.000646253806335
AL DEBUG: for bin number 20.000000 

AL DEBUG: max band error is 1.020809 

AL DEBUG: min band error is 0.974578 

('abs(band_max/band_min)', 1.0474362279062288)
bin  21  y  10288.9482422  stat  169.451738628
syst.up_histo.GetBinContent(ibin) 10379.9091797
('draw_error_band y', 10288.9482421875)
syst.down_histo.GetBinContent(ibin) 10143.0556641
up_diff 0.00884064487049
dw_diff -0.0141795424266
up_err_sum2 0.000271237725137
dw_err_sum2 0.000271237725137
syst.up_histo.GetBinContent(ibin) 10288.9482422
('draw_error_band y', 10288.9482421875)
syst.down_histo.GetBinContent(ibin) 10288.9482422
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000349394726863
dw_err_sum2 0.000472297148564
AL DEBUG: for bin number 21.000000 

AL DEBUG: max band error is 1.018692 

AL DEBUG: min band error is 0.978268 

('abs(band_max/band_min)', 1.0413225398274457)
bin  22  y  10596.4345703  stat  174.14948424
syst.up_histo.GetBinContent(ibin) 10725.3066406
('draw_error_band y', 10596.4345703125)
syst.down_histo.GetBinContent(ibin) 10448.5058594
up_diff 0.0121618332522
dw_diff -0.0139602344502
up_err_sum2 0.000270100173718
dw_err_sum2 0.000270100173718
syst.up_histo.GetBinContent(ibin) 10596.4345703
('draw_error_band y', 10596.4345703125)
syst.down_histo.GetBinContent(ibin) 10596.4345703
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000418010361773
dw_err_sum2 0.000464988319622
AL DEBUG: for bin number 22.000000 

AL DEBUG: max band error is 1.020445 

AL DEBUG: min band error is 0.978436 

('abs(band_max/band_min)', 1.0429347160428766)
bin  23  y  11719.7539062  stat  180.890280832
syst.up_histo.GetBinContent(ibin) 11863.0546875
('draw_error_band y', 11719.75390625)
syst.down_histo.GetBinContent(ibin) 11544.5087891
up_diff 0.0122272858625
dw_diff -0.014952969029
up_err_sum2 0.000238228371112
dw_err_sum2 0.000238228371112
syst.up_histo.GetBinContent(ibin) 11719.7539062
('draw_error_band y', 11719.75390625)
syst.down_histo.GetBinContent(ibin) 11719.7539062
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000387734890675
dw_err_sum2 0.000461819653893
AL DEBUG: for bin number 23.000000 

AL DEBUG: max band error is 1.019691 

AL DEBUG: min band error is 0.978510 

('abs(band_max/band_min)', 1.0420853892081428)
bin  24  y  12604.7802734  stat  189.040952056
syst.up_histo.GetBinContent(ibin) 12717.1777344
('draw_error_band y', 12604.7802734375)
syst.down_histo.GetBinContent(ibin) 12418.3984375
up_diff 0.00891705039669
dw_diff -0.0147865993611
up_err_sum2 0.000224926814563
dw_err_sum2 0.000224926814563
syst.up_histo.GetBinContent(ibin) 12604.7802734
('draw_error_band y', 12604.7802734375)
syst.down_histo.GetBinContent(ibin) 12604.7802734
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00030444060234
dw_err_sum2 0.000443570335227
AL DEBUG: for bin number 24.000000 

AL DEBUG: max band error is 1.017448 

AL DEBUG: min band error is 0.978939 

('abs(band_max/band_min)', 1.0393378343198536)
bin  25  y  13567.4833984  stat  196.399140057
syst.up_histo.GetBinContent(ibin) 13672.0722656
('draw_error_band y', 13567.4833984375)
syst.down_histo.GetBinContent(ibin) 13410.2792969
up_diff 0.00770878903007
dw_diff -0.0115868283709
up_err_sum2 0.000209546574669
dw_err_sum2 0.000209546574669
syst.up_histo.GetBinContent(ibin) 13567.4833984
('draw_error_band y', 13567.4833984375)
syst.down_histo.GetBinContent(ibin) 13567.4833984
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00026897200298
dw_err_sum2 0.000343801166366
AL DEBUG: for bin number 25.000000 

AL DEBUG: max band error is 1.016400 

AL DEBUG: min band error is 0.981458 

('abs(band_max/band_min)', 1.035602376818084)
bin  26  y  14198.3886719  stat  200.132033884
syst.up_histo.GetBinContent(ibin) 14328.5
('draw_error_band y', 14198.388671875)
syst.down_histo.GetBinContent(ibin) 13983.75
up_diff 0.00916380943865
dw_diff -0.0151171148245
up_err_sum2 0.000198680432596
dw_err_sum2 0.000198680432596
syst.up_histo.GetBinContent(ibin) 14198.3886719
('draw_error_band y', 14198.388671875)
syst.down_histo.GetBinContent(ibin) 14198.3886719
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000282655836024
dw_err_sum2 0.000427207593212
AL DEBUG: for bin number 26.000000 

AL DEBUG: max band error is 1.016812 

AL DEBUG: min band error is 0.979331 

('abs(band_max/band_min)', 1.0382724250799786)
bin  27  y  15129.6347656  stat  205.257584294
syst.up_histo.GetBinContent(ibin) 15240.7021484
('draw_error_band y', 15129.634765625)
syst.down_histo.GetBinContent(ibin) 14934.5664062
up_diff 0.00734104851393
dw_diff -0.0128931307594
up_err_sum2 0.000184052422655
dw_err_sum2 0.000184052422655
syst.up_histo.GetBinContent(ibin) 15129.6347656
('draw_error_band y', 15129.634765625)
syst.down_histo.GetBinContent(ibin) 15129.6347656
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000237943415939
dw_err_sum2 0.000350285243434
AL DEBUG: for bin number 27.000000 

AL DEBUG: max band error is 1.015425 

AL DEBUG: min band error is 0.981284 

('abs(band_max/band_min)', 1.0347924966394582)
bin  28  y  16282.1318359  stat  215.336400009
syst.up_histo.GetBinContent(ibin) 16437.4941406
('draw_error_band y', 16282.1318359375)
syst.down_histo.GetBinContent(ibin) 16063.2568359
up_diff 0.00954188961574
dw_diff -0.0134426500292
up_err_sum2 0.000174909082924
dw_err_sum2 0.000174909082924
syst.up_histo.GetBinContent(ibin) 16282.1318359
('draw_error_band y', 16282.1318359375)
syst.down_histo.GetBinContent(ibin) 16282.1318359
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000265956740363
dw_err_sum2 0.000355613922732
AL DEBUG: for bin number 28.000000 

AL DEBUG: max band error is 1.016308 

AL DEBUG: min band error is 0.981142 

('abs(band_max/band_min)', 1.035841803629129)
bin  29  y  17326.9609375  stat  220.809248822
syst.up_histo.GetBinContent(ibin) 17476.046875
('draw_error_band y', 17326.9609375)
syst.down_histo.GetBinContent(ibin) 17049.8496094
up_diff 0.00860427503922
dw_diff -0.0159930716716
up_err_sum2 0.000162401384741
dw_err_sum2 0.000162401384741
syst.up_histo.GetBinContent(ibin) 17326.9609375
('draw_error_band y', 17326.9609375)
syst.down_histo.GetBinContent(ibin) 17326.9609375
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000236434933691
dw_err_sum2 0.000418179726235
AL DEBUG: for bin number 29.000000 

AL DEBUG: max band error is 1.015376 

AL DEBUG: min band error is 0.979551 

('abs(band_max/band_min)', 1.0365737978429088)
bin  30  y  18390.7910156  stat  229.0227563
syst.up_histo.GetBinContent(ibin) 18520.2363281
('draw_error_band y', 18390.791015625)
syst.down_histo.GetBinContent(ibin) 18130.8105469
up_diff 0.00703859406537
dw_diff -0.0141364484284
up_err_sum2 0.000155080236856
dw_err_sum2 0.000155080236856
syst.up_histo.GetBinContent(ibin) 18390.7910156
('draw_error_band y', 18390.791015625)
syst.down_histo.GetBinContent(ibin) 18390.7910156
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000204622043273
dw_err_sum2 0.000354919411025
AL DEBUG: for bin number 30.000000 

AL DEBUG: max band error is 1.014305 

AL DEBUG: min band error is 0.981161 

('abs(band_max/band_min)', 1.033780318831083)
bin  31  y  20070.40625  stat  236.946565107
syst.up_histo.GetBinContent(ibin) 20198.3710938
('draw_error_band y', 20070.40625)
syst.down_histo.GetBinContent(ibin) 19804.5078125
up_diff 0.00637579738826
dw_diff -0.013248283776
up_err_sum2 0.00013937616425
dw_err_sum2 0.00013937616425
syst.up_histo.GetBinContent(ibin) 20070.40625
('draw_error_band y', 20070.40625)
syst.down_histo.GetBinContent(ibin) 20070.40625
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000180026956587
dw_err_sum2 0.00031489318726
AL DEBUG: for bin number 31.000000 

AL DEBUG: max band error is 1.013417 

AL DEBUG: min band error is 0.982255 

('abs(band_max/band_min)', 1.0317256208648748)
bin  32  y  21113.2382812  stat  244.397732613
syst.up_histo.GetBinContent(ibin) 21274.5214844
('draw_error_band y', 21113.23828125)
syst.down_histo.GetBinContent(ibin) 20863.484375
up_diff 0.00763896096736
dw_diff -0.0118292562668
up_err_sum2 0.000133993782405
dw_err_sum2 0.000133993782405
syst.up_histo.GetBinContent(ibin) 21113.2382812
('draw_error_band y', 21113.23828125)
syst.down_histo.GetBinContent(ibin) 21113.2382812
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000192347507066
dw_err_sum2 0.00027392508623
AL DEBUG: for bin number 32.000000 

AL DEBUG: max band error is 1.013869 

AL DEBUG: min band error is 0.983449 

('abs(band_max/band_min)', 1.0309315611656416)
bin  33  y  22157.4628906  stat  251.499051567
syst.up_histo.GetBinContent(ibin) 22356.453125
('draw_error_band y', 22157.462890625)
syst.down_histo.GetBinContent(ibin) 21903.265625
up_diff 0.00898073192573
dw_diff -0.0114723092116
up_err_sum2 0.000128834638143
dw_err_sum2 0.000128834638143
syst.up_histo.GetBinContent(ibin) 22157.4628906
('draw_error_band y', 22157.462890625)
syst.down_histo.GetBinContent(ibin) 22157.4628906
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000209488184065
dw_err_sum2 0.000260448516789
AL DEBUG: for bin number 33.000000 

AL DEBUG: max band error is 1.014474 

AL DEBUG: min band error is 0.983862 

('abs(band_max/band_min)', 1.0311142589634772)
bin  34  y  23577.0273438  stat  259.509553891
syst.up_histo.GetBinContent(ibin) 23743.4316406
('draw_error_band y', 23577.02734375)
syst.down_histo.GetBinContent(ibin) 23343.1132812
up_diff 0.00705789981276
dw_diff -0.00992127035735
up_err_sum2 0.000121151447634
dw_err_sum2 0.000121151447634
syst.up_histo.GetBinContent(ibin) 23577.0273438
('draw_error_band y', 23577.02734375)
syst.down_histo.GetBinContent(ibin) 23577.0273438
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000170965397401
dw_err_sum2 0.000219583053137
AL DEBUG: for bin number 34.000000 

AL DEBUG: max band error is 1.013075 

AL DEBUG: min band error is 0.985182 

('abs(band_max/band_min)', 1.0283132641671018)
bin  35  y  24721.8613281  stat  264.710708316
syst.up_histo.GetBinContent(ibin) 24916.6523438
('draw_error_band y', 24721.861328125)
syst.down_histo.GetBinContent(ibin) 24378.2597656
up_diff 0.00787930217064
dw_diff -0.0138986930612
up_err_sum2 0.000114651750054
dw_err_sum2 0.000114651750054
syst.up_histo.GetBinContent(ibin) 24721.8613281
('draw_error_band y', 24721.861328125)
syst.down_histo.GetBinContent(ibin) 24721.8613281
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00017673515275
dw_err_sum2 0.000307825418862
AL DEBUG: for bin number 35.000000 

AL DEBUG: max band error is 1.013294 

AL DEBUG: min band error is 0.982455 

('abs(band_max/band_min)', 1.0313898653795508)
bin  36  y  25686.6015625  stat  272.994600188
syst.up_histo.GetBinContent(ibin) 25871.7988281
('draw_error_band y', 25686.6015625)
syst.down_histo.GetBinContent(ibin) 25371.3085938
up_diff 0.00720987808272
dw_diff -0.0122746081447
up_err_sum2 0.000112952231468
dw_err_sum2 0.000112952231468
syst.up_histo.GetBinContent(ibin) 25686.6015625
('draw_error_band y', 25686.6015625)
syst.down_histo.GetBinContent(ibin) 25686.6015625
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000164934573435
dw_err_sum2 0.000263618236575
AL DEBUG: for bin number 36.000000 

AL DEBUG: max band error is 1.012843 

AL DEBUG: min band error is 0.983764 

('abs(band_max/band_min)', 1.0295589387264155)
bin  37  y  26971.0878906  stat  278.618972013
syst.up_histo.GetBinContent(ibin) 27205.4277344
('draw_error_band y', 26971.087890625)
syst.down_histo.GetBinContent(ibin) 26566.2148438
up_diff 0.00868855734334
dw_diff -0.0150113724933
up_err_sum2 0.000106714747844
dw_err_sum2 0.000106714747844
syst.up_histo.GetBinContent(ibin) 26971.0878906
('draw_error_band y', 26971.087890625)
syst.down_histo.GetBinContent(ibin) 26971.0878906
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000182205776553
dw_err_sum2 0.000332056051976
AL DEBUG: for bin number 37.000000 

AL DEBUG: max band error is 1.013498 

AL DEBUG: min band error is 0.981778 

('abs(band_max/band_min)', 1.0323095244616405)
bin  38  y  28761.1582031  stat  286.221769326
syst.up_histo.GetBinContent(ibin) 29022.984375
('draw_error_band y', 28761.158203125)
syst.down_histo.GetBinContent(ibin) 28366.0917969
up_diff 0.00910346412428
dw_diff -0.0137361090767
up_err_sum2 9.90358839306e-05
dw_err_sum2 9.90358839306e-05
syst.up_histo.GetBinContent(ibin) 28761.1582031
('draw_error_band y', 28761.158203125)
syst.down_histo.GetBinContent(ibin) 28761.1582031
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000181908942993
dw_err_sum2 0.000287716576497
AL DEBUG: for bin number 38.000000 

AL DEBUG: max band error is 1.013487 

AL DEBUG: min band error is 0.983038 

('abs(band_max/band_min)', 1.0309749766582965)
bin  39  y  30310.2246094  stat  293.422235487
syst.up_histo.GetBinContent(ibin) 30544.3789062
('draw_error_band y', 30310.224609375)
syst.down_histo.GetBinContent(ibin) 29867.8691406
up_diff 0.00772525772714
dw_diff -0.0145942656134
up_err_sum2 9.37147031223e-05
dw_err_sum2 9.37147031223e-05
syst.up_histo.GetBinContent(ibin) 30310.2246094
('draw_error_band y', 30310.224609375)
syst.down_histo.GetBinContent(ibin) 30310.2246094
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000153394310073
dw_err_sum2 0.000306707291916
AL DEBUG: for bin number 39.000000 

AL DEBUG: max band error is 1.012385 

AL DEBUG: min band error is 0.982487 

('abs(band_max/band_min)', 1.0304312506064937)
bin  40  y  31165.4101562  stat  299.140951865
syst.up_histo.GetBinContent(ibin) 31352.6347656
('draw_error_band y', 31165.41015625)
syst.down_histo.GetBinContent(ibin) 30797.7148438
up_diff 0.00600744891328
dw_diff -0.0117981862153
up_err_sum2 9.21310559446e-05
dw_err_sum2 9.21310559446e-05
syst.up_histo.GetBinContent(ibin) 31165.4101562
('draw_error_band y', 31165.41015625)
syst.down_histo.GetBinContent(ibin) 31165.4101562
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00012822049839
dw_err_sum2 0.000231328253916
AL DEBUG: for bin number 40.000000 

AL DEBUG: max band error is 1.011323 

AL DEBUG: min band error is 0.984791 

('abs(band_max/band_min)', 1.0269427127571815)
bin  41  y  32338.8320312  stat  304.63834986
syst.up_histo.GetBinContent(ibin) 32584.8125
('draw_error_band y', 32338.83203125)
syst.down_histo.GetBinContent(ibin) 31868.5449219
up_diff 0.00760634980609
dw_diff -0.0145424890089
up_err_sum2 8.87402171871e-05
dw_err_sum2 8.87402171871e-05
syst.up_histo.GetBinContent(ibin) 32338.8320312
('draw_error_band y', 32338.83203125)
syst.down_histo.GetBinContent(ibin) 32338.8320312
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00014659677456
dw_err_sum2 0.000300224203761
AL DEBUG: for bin number 41.000000 

AL DEBUG: max band error is 1.012108 

AL DEBUG: min band error is 0.982673 

('abs(band_max/band_min)', 1.0299537017321627)
bin  42  y  33161.546875  stat  309.717237426
syst.up_histo.GetBinContent(ibin) 33362.4882812
('draw_error_band y', 33161.546875)
syst.down_histo.GetBinContent(ibin) 32817.4414062
up_diff 0.00605947023543
dw_diff -0.010376641055
up_err_sum2 8.72290599568e-05
dw_err_sum2 8.72290599568e-05
syst.up_histo.GetBinContent(ibin) 33161.546875
('draw_error_band y', 33161.546875)
syst.down_histo.GetBinContent(ibin) 33161.546875
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000123946239491
dw_err_sum2 0.000194903739541
AL DEBUG: for bin number 42.000000 

AL DEBUG: max band error is 1.011133 

AL DEBUG: min band error is 0.986039 

('abs(band_max/band_min)', 1.0254491984772804)
bin  43  y  34450.0039062  stat  313.656220584
syst.up_histo.GetBinContent(ibin) 34719.0742188
('draw_error_band y', 34450.00390625)
syst.down_histo.GetBinContent(ibin) 33919.2617188
up_diff 0.00781045811293
dw_diff -0.0154061575419
up_err_sum2 8.2895176241e-05
dw_err_sum2 8.2895176241e-05
syst.up_histo.GetBinContent(ibin) 34450.0039062
('draw_error_band y', 34450.00390625)
syst.down_histo.GetBinContent(ibin) 34450.0039062
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000143898432175
dw_err_sum2 0.000320244866448
AL DEBUG: for bin number 43.000000 

AL DEBUG: max band error is 1.011996 

AL DEBUG: min band error is 0.982105 

('abs(band_max/band_min)', 1.0304358146714394)
bin  44  y  35630.0546875  stat  319.155696326
syst.up_histo.GetBinContent(ibin) 35922.0234375
('draw_error_band y', 35630.0546875)
syst.down_histo.GetBinContent(ibin) 35173.1953125
up_diff 0.00819445135745
dw_diff -0.0128223035021
up_err_sum2 8.02365455265e-05
dw_err_sum2 8.02365455265e-05
syst.up_histo.GetBinContent(ibin) 35630.0546875
('draw_error_band y', 35630.0546875)
syst.down_histo.GetBinContent(ibin) 35630.0546875
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000147385578576
dw_err_sum2 0.000244648012627
AL DEBUG: for bin number 44.000000 

AL DEBUG: max band error is 1.012140 

AL DEBUG: min band error is 0.984359 

('abs(band_max/band_min)', 1.0282229152608187)
bin  45  y  35448.6679688  stat  319.953596292
syst.up_histo.GetBinContent(ibin) 35760.046875
('draw_error_band y', 35448.66796875)
syst.down_histo.GetBinContent(ibin) 34994.2226562
up_diff 0.00878393813061
dw_diff -0.0128198135089
up_err_sum2 8.14655794253e-05
dw_err_sum2 8.14655794253e-05
syst.up_histo.GetBinContent(ibin) 35448.6679688
('draw_error_band y', 35448.66796875)
syst.down_histo.GetBinContent(ibin) 35448.6679688
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000158623148508
dw_err_sum2 0.000245813197829
AL DEBUG: for bin number 45.000000 

AL DEBUG: max band error is 1.012595 

AL DEBUG: min band error is 0.984322 

('abs(band_max/band_min)', 1.0287233360304684)
bin  46  y  35798.5625  stat  322.259777951
syst.up_histo.GetBinContent(ibin) 36070.5273438
('draw_error_band y', 35798.5625)
syst.down_histo.GetBinContent(ibin) 35322.3867188
up_diff 0.00759708839566
dw_diff -0.0133015335811
up_err_sum2 8.10365664354e-05
dw_err_sum2 8.10365664354e-05
syst.up_histo.GetBinContent(ibin) 35798.5625
('draw_error_band y', 35798.5625)
syst.down_histo.GetBinContent(ibin) 35798.5625
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000138752318527
dw_err_sum2 0.000257967362045
AL DEBUG: for bin number 46.000000 

AL DEBUG: max band error is 1.011779 

AL DEBUG: min band error is 0.983939 

('abs(band_max/band_min)', 1.028295138271739)
bin  47  y  36161.0507812  stat  324.014171149
syst.up_histo.GetBinContent(ibin) 36462.2421875
('draw_error_band y', 36161.05078125)
syst.down_histo.GetBinContent(ibin) 35701.875
up_diff 0.00832916631964
dw_diff -0.0126980762818
up_err_sum2 8.02871286454e-05
dw_err_sum2 8.02871286454e-05
syst.up_histo.GetBinContent(ibin) 36161.0507812
('draw_error_band y', 36161.05078125)
syst.down_histo.GetBinContent(ibin) 36161.0507812
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000149662140226
dw_err_sum2 0.000241528269904
AL DEBUG: for bin number 47.000000 

AL DEBUG: max band error is 1.012234 

AL DEBUG: min band error is 0.984459 

('abs(band_max/band_min)', 1.028213295580971)
bin  48  y  36137.0625  stat  322.868037578
syst.up_histo.GetBinContent(ibin) 36420.828125
('draw_error_band y', 36137.0625)
syst.down_histo.GetBinContent(ibin) 35734.7421875
up_diff 0.00785248178376
dw_diff -0.0111331769842
up_err_sum2 7.98260085666e-05
dw_err_sum2 7.98260085666e-05
syst.up_histo.GetBinContent(ibin) 36137.0625
('draw_error_band y', 36137.0625)
syst.down_histo.GetBinContent(ibin) 36137.0625
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000141487478731
dw_err_sum2 0.000203773638327
AL DEBUG: for bin number 48.000000 

AL DEBUG: max band error is 1.011895 

AL DEBUG: min band error is 0.985725 

('abs(band_max/band_min)', 1.0265487630933623)
bin  49  y  36221.0195312  stat  324.012672355
syst.up_histo.GetBinContent(ibin) 36450.3945312
('draw_error_band y', 36221.01953125)
syst.down_histo.GetBinContent(ibin) 35710.1679688
up_diff 0.00633264891404
dw_diff -0.0141037322834
up_err_sum2 8.00207562189e-05
dw_err_sum2 8.00207562189e-05
syst.up_histo.GetBinContent(ibin) 36221.0195312
('draw_error_band y', 36221.01953125)
syst.down_histo.GetBinContent(ibin) 36221.0195312
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000120123198487
dw_err_sum2 0.00027893602054
AL DEBUG: for bin number 49.000000 

AL DEBUG: max band error is 1.010960 

AL DEBUG: min band error is 0.983299 

('abs(band_max/band_min)', 1.0281312818941164)
bin  50  y  36082.7265625  stat  323.332781431
syst.up_histo.GetBinContent(ibin) 36339.359375
('draw_error_band y', 36082.7265625)
syst.down_histo.GetBinContent(ibin) 35539.9140625
up_diff 0.0071123453505
dw_diff -0.0150435555101
up_err_sum2 8.02972703579e-05
dw_err_sum2 8.02972703579e-05
syst.up_histo.GetBinContent(ibin) 36082.7265625
('draw_error_band y', 36082.7265625)
syst.down_histo.GetBinContent(ibin) 36082.7265625
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000130882726743
dw_err_sum2 0.000306605832744
AL DEBUG: for bin number 50.000000 

AL DEBUG: max band error is 1.011440 

AL DEBUG: min band error is 0.982490 

('abs(band_max/band_min)', 1.0294665262864278)
bin  51  y  35744.671875  stat  321.638263904
syst.up_histo.GetBinContent(ibin) 36032.7382812
('draw_error_band y', 35744.671875)
syst.down_histo.GetBinContent(ibin) 35265.5273438
up_diff 0.00805900267479
dw_diff -0.013404642038
up_err_sum2 8.09678838942e-05
dw_err_sum2 8.09678838942e-05
syst.up_histo.GetBinContent(ibin) 35744.671875
('draw_error_band y', 35744.671875)
syst.down_histo.GetBinContent(ibin) 35744.671875
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000145915408006
dw_err_sum2 0.000260652312061
AL DEBUG: for bin number 51.000000 

AL DEBUG: max band error is 1.012080 

AL DEBUG: min band error is 0.983855 

('abs(band_max/band_min)', 1.0286874259394663)
bin  52  y  35052.2890625  stat  319.785641092
syst.up_histo.GetBinContent(ibin) 35318.7695312
('draw_error_band y', 35052.2890625)
syst.down_histo.GetBinContent(ibin) 34589.6328125
up_diff 0.00760236994151
dw_diff -0.0131990310012
up_err_sum2 8.32310070937e-05
dw_err_sum2 8.32310070937e-05
syst.up_histo.GetBinContent(ibin) 35052.2890625
('draw_error_band y', 35052.2890625)
syst.down_histo.GetBinContent(ibin) 35052.2890625
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000141027035821
dw_err_sum2 0.000257445426465
AL DEBUG: for bin number 52.000000 

AL DEBUG: max band error is 1.011875 

AL DEBUG: min band error is 0.983955 

('abs(band_max/band_min)', 1.028375880452867)
bin  53  y  33972.5429688  stat  315.2413282
syst.up_histo.GetBinContent(ibin) 34251.8242188
('draw_error_band y', 33972.54296875)
syst.down_histo.GetBinContent(ibin) 33516.3671875
up_diff 0.0082207931934
dw_diff -0.013427778476
up_err_sum2 8.61053594505e-05
dw_err_sum2 8.61053594505e-05
syst.up_histo.GetBinContent(ibin) 33972.5429688
('draw_error_band y', 33972.54296875)
syst.down_histo.GetBinContent(ibin) 33972.5429688
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000153686800179
dw_err_sum2 0.00026641059425
AL DEBUG: for bin number 53.000000 

AL DEBUG: max band error is 1.012397 

AL DEBUG: min band error is 0.983678 

('abs(band_max/band_min)', 1.0291956715476875)
bin  54  y  32924.4882812  stat  309.276099043
syst.up_histo.GetBinContent(ibin) 33198.75
('draw_error_band y', 32924.48828125)
syst.down_histo.GetBinContent(ibin) 32489.3925781
up_diff 0.00833002221347
dw_diff -0.0132149571896
up_err_sum2 8.82377956732e-05
dw_err_sum2 8.82377956732e-05
syst.up_histo.GetBinContent(ibin) 32924.4882812
('draw_error_band y', 32924.48828125)
syst.down_histo.GetBinContent(ibin) 32924.4882812
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00015762706575
dw_err_sum2 0.000262872889195
AL DEBUG: for bin number 54.000000 

AL DEBUG: max band error is 1.012555 

AL DEBUG: min band error is 0.983787 

('abs(band_max/band_min)', 1.0292424350592777)
bin  55  y  31541.8085938  stat  304.272698794
syst.up_histo.GetBinContent(ibin) 31777.6269531
('draw_error_band y', 31541.80859375)
syst.down_histo.GetBinContent(ibin) 31192.6679688
up_diff 0.00747637405363
dw_diff -0.0110691377751
up_err_sum2 9.30578017367e-05
dw_err_sum2 9.30578017367e-05
syst.up_histo.GetBinContent(ibin) 31541.8085938
('draw_error_band y', 31541.80859375)
syst.down_histo.GetBinContent(ibin) 31541.8085938
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000148953970727
dw_err_sum2 0.000215583612821
AL DEBUG: for bin number 55.000000 

AL DEBUG: max band error is 1.012205 

AL DEBUG: min band error is 0.985317 

('abs(band_max/band_min)', 1.0272881006738048)
bin  56  y  30530.5253906  stat  297.734666255
syst.up_histo.GetBinContent(ibin) 30749.1777344
('draw_error_band y', 30530.525390625)
syst.down_histo.GetBinContent(ibin) 30158.3066406
up_diff 0.00716176157968
dw_diff -0.0121916916017
up_err_sum2 9.51021317504e-05
dw_err_sum2 9.51021317504e-05
syst.up_histo.GetBinContent(ibin) 30530.5253906
('draw_error_band y', 30530.525390625)
syst.down_histo.GetBinContent(ibin) 30530.5253906
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000146392960675
dw_err_sum2 0.000243739475861
AL DEBUG: for bin number 56.000000 

AL DEBUG: max band error is 1.012099 

AL DEBUG: min band error is 0.984388 

('abs(band_max/band_min)', 1.0281509509175006)
bin  57  y  28788.7597656  stat  290.173198848
syst.up_histo.GetBinContent(ibin) 29046.890625
('draw_error_band y', 28788.759765625)
syst.down_histo.GetBinContent(ibin) 28432.3671875
up_diff 0.0089663765121
dw_diff -0.0123795738693
up_err_sum2 0.000101594145874
dw_err_sum2 0.000101594145874
syst.up_histo.GetBinContent(ibin) 28788.7597656
('draw_error_band y', 28788.759765625)
syst.down_histo.GetBinContent(ibin) 28788.7597656
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000181990053631
dw_err_sum2 0.00025484799506
AL DEBUG: for bin number 57.000000 

AL DEBUG: max band error is 1.013490 

AL DEBUG: min band error is 0.984036 

('abs(band_max/band_min)', 1.0299321640219625)
bin  58  y  27706.7011719  stat  284.510236725
syst.up_histo.GetBinContent(ibin) 27964.1015625
('draw_error_band y', 27706.701171875)
syst.down_histo.GetBinContent(ibin) 27246.8183594
up_diff 0.00929018539696
dw_diff -0.0165982521574
up_err_sum2 0.000105445039204
dw_err_sum2 0.000105445039204
syst.up_histo.GetBinContent(ibin) 27706.7011719
('draw_error_band y', 27706.701171875)
syst.down_histo.GetBinContent(ibin) 27706.7011719
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000191752583914
dw_err_sum2 0.000380947013884
AL DEBUG: for bin number 58.000000 

AL DEBUG: max band error is 1.013847 

AL DEBUG: min band error is 0.980482 

('abs(band_max/band_min)', 1.0340295232984487)
bin  59  y  25826.375  stat  274.04202757
syst.up_histo.GetBinContent(ibin) 26020.6113281
('draw_error_band y', 25826.375)
syst.down_histo.GetBinContent(ibin) 25500.1074219
up_diff 0.00752085138255
dw_diff -0.0126331154924
up_err_sum2 0.000112591975395
dw_err_sum2 0.000112591975395
syst.up_histo.GetBinContent(ibin) 25826.375
('draw_error_band y', 25826.375)
syst.down_histo.GetBinContent(ibin) 25826.375
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000169155180914
dw_err_sum2 0.00027218758244
AL DEBUG: for bin number 59.000000 

AL DEBUG: max band error is 1.013006 

AL DEBUG: min band error is 0.983502 

('abs(band_max/band_min)', 1.0299990023720909)
bin  60  y  24679.515625  stat  266.034345705
syst.up_histo.GetBinContent(ibin) 24894.1054688
('draw_error_band y', 24679.515625)
syst.down_histo.GetBinContent(ibin) 24322.7011719
up_diff 0.0086950589716
dw_diff -0.0144579196183
up_err_sum2 0.000116198936728
dw_err_sum2 0.000116198936728
syst.up_histo.GetBinContent(ibin) 24679.515625
('draw_error_band y', 24679.515625)
syst.down_histo.GetBinContent(ibin) 24679.515625
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000191802987248
dw_err_sum2 0.000325230376418
AL DEBUG: for bin number 60.000000 

AL DEBUG: max band error is 1.013849 

AL DEBUG: min band error is 0.981966 

('abs(band_max/band_min)', 1.0324689907672033)
bin  61  y  22390.3886719  stat  257.648933482
syst.up_histo.GetBinContent(ibin) 22558.0351562
('draw_error_band y', 22390.388671875)
syst.down_histo.GetBinContent(ibin) 22090.78125
up_diff 0.00748743073789
dw_diff -0.0133810728463
up_err_sum2 0.000132413856113
dw_err_sum2 0.000132413856113
syst.up_histo.GetBinContent(ibin) 22390.3886719
('draw_error_band y', 22390.388671875)
syst.down_histo.GetBinContent(ibin) 22390.3886719
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000188475475168
dw_err_sum2 0.000311466966631
AL DEBUG: for bin number 61.000000 

AL DEBUG: max band error is 1.013729 

AL DEBUG: min band error is 0.982352 

('abs(band_max/band_min)', 1.0319407680996409)
bin  62  y  21759.0722656  stat  249.741219305
syst.up_histo.GetBinContent(ibin) 21974.4277344
('draw_error_band y', 21759.072265625)
syst.down_histo.GetBinContent(ibin) 21428.1816406
up_diff 0.00989727255469
dw_diff -0.0152070189832
up_err_sum2 0.000131734554282
dw_err_sum2 0.000131734554282
syst.up_histo.GetBinContent(ibin) 21759.0722656
('draw_error_band y', 21759.072265625)
syst.down_histo.GetBinContent(ibin) 21759.0722656
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000229690558303
dw_err_sum2 0.000362987980637
AL DEBUG: for bin number 62.000000 

AL DEBUG: max band error is 1.015156 

AL DEBUG: min band error is 0.980948 

('abs(band_max/band_min)', 1.0348721822233944)
bin  63  y  20127.5351562  stat  241.54426545
syst.up_histo.GetBinContent(ibin) 20324.2480469
('draw_error_band y', 20127.53515625)
syst.down_histo.GetBinContent(ibin) 19821.125
up_diff 0.00977332242115
dw_diff -0.0152234316756
up_err_sum2 0.000144016507502
dw_err_sum2 0.000144016507502
syst.up_histo.GetBinContent(ibin) 20127.5351562
('draw_error_band y', 20127.53515625)
syst.down_histo.GetBinContent(ibin) 20127.5351562
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00023953433865
dw_err_sum2 0.000375769379485
AL DEBUG: for bin number 63.000000 

AL DEBUG: max band error is 1.015477 

AL DEBUG: min band error is 0.980615 

('abs(band_max/band_min)', 1.0355508131796434)
bin  64  y  18108.6972656  stat  229.66373137
syst.up_histo.GetBinContent(ibin) 18299.09375
('draw_error_band y', 18108.697265625)
syst.down_histo.GetBinContent(ibin) 17874.4863281
up_diff 0.0105140906373
dw_diff -0.0129336160445
up_err_sum2 0.000160846055995
dw_err_sum2 0.000160846055995
syst.up_histo.GetBinContent(ibin) 18108.6972656
('draw_error_band y', 18108.697265625)
syst.down_histo.GetBinContent(ibin) 18108.6972656
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000271392157925
dw_err_sum2 0.000328124479982
AL DEBUG: for bin number 64.000000 

AL DEBUG: max band error is 1.016474 

AL DEBUG: min band error is 0.981886 

('abs(band_max/band_min)', 1.0352262870963072)
bin  65  y  16720.1660156  stat  220.708952227
syst.up_histo.GetBinContent(ibin) 16880.4609375
('draw_error_band y', 16720.166015625)
syst.down_histo.GetBinContent(ibin) 16434.8300781
up_diff 0.00958692166843
dw_diff -0.0170653770563
up_err_sum2 0.000174244359174
dw_err_sum2 0.000174244359174
syst.up_histo.GetBinContent(ibin) 16720.1660156
('draw_error_band y', 16720.166015625)
syst.down_histo.GetBinContent(ibin) 16720.1660156
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000266153426251
dw_err_sum2 0.000465471453247
AL DEBUG: for bin number 65.000000 

AL DEBUG: max band error is 1.016314 

AL DEBUG: min band error is 0.978425 

('abs(band_max/band_min)', 1.038724468966407)
bin  66  y  15612.3964844  stat  213.790678519
syst.up_histo.GetBinContent(ibin) 15755.6464844
('draw_error_band y', 15612.396484375)
syst.down_histo.GetBinContent(ibin) 15342.7353516
up_diff 0.00917540110792
dw_diff -0.0172722447244
up_err_sum2 0.000187516024713
dw_err_sum2 0.000187516024713
syst.up_histo.GetBinContent(ibin) 15612.3964844
('draw_error_band y', 15612.396484375)
syst.down_histo.GetBinContent(ibin) 15612.3964844
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000271704010204
dw_err_sum2 0.000485846462532
AL DEBUG: for bin number 66.000000 

AL DEBUG: max band error is 1.016483 

AL DEBUG: min band error is 0.977958 

('abs(band_max/band_min)', 1.0393936842997413)
bin  67  y  14305.3037109  stat  204.452976808
syst.up_histo.GetBinContent(ibin) 14485.2851562
('draw_error_band y', 14305.3037109375)
syst.down_histo.GetBinContent(ibin) 14087.703125
up_diff 0.0125814487374
dw_diff -0.015211182533
up_err_sum2 0.000204264413423
dw_err_sum2 0.000204264413423
syst.up_histo.GetBinContent(ibin) 14305.3037109
('draw_error_band y', 14305.3037109375)
syst.down_histo.GetBinContent(ibin) 14305.3037109
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000362557265755
dw_err_sum2 0.000435644487476
AL DEBUG: for bin number 67.000000 

AL DEBUG: max band error is 1.019041 

AL DEBUG: min band error is 0.979128 

('abs(band_max/band_min)', 1.0407638622177444)
bin  68  y  13255.2304688  stat  195.873143354
syst.up_histo.GetBinContent(ibin) 13368.4394531
('draw_error_band y', 13255.23046875)
syst.down_histo.GetBinContent(ibin) 12995.5859375
up_diff 0.00854070282987
dw_diff -0.019588081238
up_err_sum2 0.000218361072827
dw_err_sum2 0.000218361072827
syst.up_histo.GetBinContent(ibin) 13255.2304688
('draw_error_band y', 13255.23046875)
syst.down_histo.GetBinContent(ibin) 13255.2304688
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000291304677655
dw_err_sum2 0.000602053999412
AL DEBUG: for bin number 68.000000 

AL DEBUG: max band error is 1.017068 

AL DEBUG: min band error is 0.975463 

('abs(band_max/band_min)', 1.0426509562276984)
bin  69  y  12019.6601562  stat  186.405917445
syst.up_histo.GetBinContent(ibin) 12122.2001953
('draw_error_band y', 12019.66015625)
syst.down_histo.GetBinContent(ibin) 11832.3828125
up_diff 0.00853102647908
dw_diff -0.0155809183717
up_err_sum2 0.000240511037956
dw_err_sum2 0.000240511037956
syst.up_histo.GetBinContent(ibin) 12019.6601562
('draw_error_band y', 12019.66015625)
syst.down_histo.GetBinContent(ibin) 12019.6601562
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000313289450742
dw_err_sum2 0.000483276055261
AL DEBUG: for bin number 69.000000 

AL DEBUG: max band error is 1.017700 

AL DEBUG: min band error is 0.978016 

('abs(band_max/band_min)', 1.0405755185961294)
bin  70  y  10932.8261719  stat  177.5342863
syst.up_histo.GetBinContent(ibin) 11043.4638672
('draw_error_band y', 10932.826171875)
syst.down_histo.GetBinContent(ibin) 10751.4433594
up_diff 0.0101197708235
dw_diff -0.0165906609735
up_err_sum2 0.000263693601085
dw_err_sum2 0.000263693601085
syst.up_histo.GetBinContent(ibin) 10932.8261719
('draw_error_band y', 10932.826171875)
syst.down_histo.GetBinContent(ibin) 10932.8261719
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000366103362605
dw_err_sum2 0.000538943632623
AL DEBUG: for bin number 70.000000 

AL DEBUG: max band error is 1.019134 

AL DEBUG: min band error is 0.976785 

('abs(band_max/band_min)', 1.0433554919090724)
bin  71  y  9729.703125  stat  168.802311951
syst.up_histo.GetBinContent(ibin) 9823.66796875
('draw_error_band y', 9729.703125)
syst.down_histo.GetBinContent(ibin) 9533.58886719
up_diff 0.00965752423715
dw_diff -0.0201562427232
up_err_sum2 0.000300993836581
dw_err_sum2 0.000300993836581
syst.up_histo.GetBinContent(ibin) 9729.703125
('draw_error_band y', 9729.703125)
syst.down_histo.GetBinContent(ibin) 9729.703125
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000394261610972
dw_err_sum2 0.000707267957299
AL DEBUG: for bin number 71.000000 

AL DEBUG: max band error is 1.019856 

AL DEBUG: min band error is 0.973405 

('abs(band_max/band_min)', 1.0477196116261485)
bin  72  y  9237.29785156  stat  162.900253606
syst.up_histo.GetBinContent(ibin) 9348.17285156
('draw_error_band y', 9237.2978515625)
syst.down_histo.GetBinContent(ibin) 9077.31738281
up_diff 0.0120029690264
dw_diff -0.0173189683088
up_err_sum2 0.000310995156995
dw_err_sum2 0.000310995156995
syst.up_histo.GetBinContent(ibin) 9237.29785156
('draw_error_band y', 9237.2978515625)
syst.down_histo.GetBinContent(ibin) 9237.29785156
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000455066422444
dw_err_sum2 0.000610941820276
AL DEBUG: for bin number 72.000000 

AL DEBUG: max band error is 1.021332 

AL DEBUG: min band error is 0.975283 

('abs(band_max/band_min)', 1.0472165868088963)
bin  73  y  8282.03027344  stat  156.525915181
syst.up_histo.GetBinContent(ibin) 8365.71582031
('draw_error_band y', 8282.0302734375)
syst.down_histo.GetBinContent(ibin) 8132.35595703
up_diff 0.0101044724677
dw_diff -0.0180721769258
up_err_sum2 0.000357189658165
dw_err_sum2 0.000357189658165
syst.up_histo.GetBinContent(ibin) 8282.03027344
('draw_error_band y', 8282.0302734375)
syst.down_histo.GetBinContent(ibin) 8282.03027344
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000459290022016
dw_err_sum2 0.000683793237002
AL DEBUG: for bin number 73.000000 

AL DEBUG: max band error is 1.021431 

AL DEBUG: min band error is 0.973851 

('abs(band_max/band_min)', 1.0488581053402382)
bin  74  y  7300.73291016  stat  146.365819548
syst.up_histo.GetBinContent(ibin) 7372.38476562
('draw_error_band y', 7300.73291015625)
syst.down_histo.GetBinContent(ibin) 7206.91650391
up_diff 0.00981433732072
dw_diff -0.01285027235
up_err_sum2 0.000401926292146
dw_err_sum2 0.000401926292146
syst.up_histo.GetBinContent(ibin) 7300.73291016
('draw_error_band y', 7300.73291015625)
syst.down_histo.GetBinContent(ibin) 7300.73291016
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000498247509191
dw_err_sum2 0.000567055791615
AL DEBUG: for bin number 74.000000 

AL DEBUG: max band error is 1.022321 

AL DEBUG: min band error is 0.976187 

('abs(band_max/band_min)', 1.0472597859049353)
bin  75  y  6892.93212891  stat  141.839548745
syst.up_histo.GetBinContent(ibin) 6978.56494141
('draw_error_band y', 6892.93212890625)
syst.down_histo.GetBinContent(ibin) 6792.37304688
up_diff 0.012423278062
dw_diff -0.0145887236593
up_err_sum2 0.000423434926435
dw_err_sum2 0.000423434926435
syst.up_histo.GetBinContent(ibin) 6892.93212891
('draw_error_band y', 6892.93212890625)
syst.down_histo.GetBinContent(ibin) 6892.93212891
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000577772764242
dw_err_sum2 0.000636265784444
AL DEBUG: for bin number 75.000000 

AL DEBUG: max band error is 1.024037 

AL DEBUG: min band error is 0.974776 

('abs(band_max/band_min)', 1.0505359479976535)
bin  76  y  6375.77880859  stat  136.249183089
syst.up_histo.GetBinContent(ibin) 6451.33984375
('draw_error_band y', 6375.77880859375)
syst.down_histo.GetBinContent(ibin) 6302.05957031
up_diff 0.011851263575
dw_diff -0.0115623895518
up_err_sum2 0.000456668788467
dw_err_sum2 0.000456668788467
syst.up_histo.GetBinContent(ibin) 6375.77880859
('draw_error_band y', 6375.77880859375)
syst.down_histo.GetBinContent(ibin) 6375.77880859
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00059712123679
dw_err_sum2 0.000590357640615
AL DEBUG: for bin number 76.000000 

AL DEBUG: max band error is 1.024436 

AL DEBUG: min band error is 0.975703 

('abs(band_max/band_min)', 1.049946914659766)
bin  77  y  5666.36914062  stat  129.817255016
syst.up_histo.GetBinContent(ibin) 5718.48632812
('draw_error_band y', 5666.369140625)
syst.down_histo.GetBinContent(ibin) 5567.04003906
up_diff 0.00919763365333
dw_diff -0.0175295853654
up_err_sum2 0.000524874067743
dw_err_sum2 0.000524874067743
syst.up_histo.GetBinContent(ibin) 5666.36914062
('draw_error_band y', 5666.369140625)
syst.down_histo.GetBinContent(ibin) 5666.36914062
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000609470532563
dw_err_sum2 0.000832160430826
AL DEBUG: for bin number 77.000000 

AL DEBUG: max band error is 1.024687 

AL DEBUG: min band error is 0.971153 

('abs(band_max/band_min)', 1.0551248449608968)
bin  78  y  5309.51513672  stat  124.009007159
syst.up_histo.GetBinContent(ibin) 5373.00097656
('draw_error_band y', 5309.51513671875)
syst.down_histo.GetBinContent(ibin) 5191.71923828
up_diff 0.0119569938514
dw_diff -0.0221858108329
up_err_sum2 0.000545502486366
dw_err_sum2 0.000545502486366
syst.up_histo.GetBinContent(ibin) 5309.51513672
('draw_error_band y', 5309.51513671875)
syst.down_histo.GetBinContent(ibin) 5309.51513672
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000688472188329
dw_err_sum2 0.00103771268868
AL DEBUG: for bin number 78.000000 

AL DEBUG: max band error is 1.026239 

AL DEBUG: min band error is 0.967786 

('abs(band_max/band_min)', 1.0603979335187401)
bin  79  y  4991.19140625  stat  119.813116942
syst.up_histo.GetBinContent(ibin) 5059.08544922
('draw_error_band y', 4991.19140625)
syst.down_histo.GetBinContent(ibin) 4872.7109375
up_diff 0.0136027728537
dw_diff -0.0237379132769
up_err_sum2 0.000576235862264
dw_err_sum2 0.000576235862264
syst.up_histo.GetBinContent(ibin) 4991.19140625
('draw_error_band y', 4991.19140625)
syst.down_histo.GetBinContent(ibin) 4991.19140625
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000761271291575
dw_err_sum2 0.00113972438901
AL DEBUG: for bin number 79.000000 

AL DEBUG: max band error is 1.027591 

AL DEBUG: min band error is 0.966240 

('abs(band_max/band_min)', 1.0634945118000148)
bin  80  y  4635.50537109  stat  116.00768933
syst.up_histo.GetBinContent(ibin) 4704.93798828
('draw_error_band y', 4635.50537109375)
syst.down_histo.GetBinContent(ibin) 4516.953125
up_diff 0.0149784352792
dw_diff -0.0255748266053
up_err_sum2 0.00062629562183
dw_err_sum2 0.00062629562183
syst.up_histo.GetBinContent(ibin) 4635.50537109
('draw_error_band y', 4635.50537109375)
syst.down_histo.GetBinContent(ibin) 4635.50537109
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000850649145245
dw_err_sum2 0.00128036737772
AL DEBUG: for bin number 80.000000 

AL DEBUG: max band error is 1.029166 

AL DEBUG: min band error is 0.964218 

('abs(band_max/band_min)', 1.0673583427731206)
bin  81  y  4087.97802734  stat  109.245007861
syst.up_histo.GetBinContent(ibin) 4200.31689453
('draw_error_band y', 4087.97802734375)
syst.down_histo.GetBinContent(ibin) 4000.93579102
up_diff 0.0274803011259
dw_diff -0.0212922466182
up_err_sum2 0.000714144498454
dw_err_sum2 0.000714144498454
syst.up_histo.GetBinContent(ibin) 4087.97802734
('draw_error_band y', 4087.97802734375)
syst.down_histo.GetBinContent(ibin) 4087.97802734
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00146931144842
dw_err_sum2 0.00116750426451
AL DEBUG: for bin number 81.000000 

AL DEBUG: max band error is 1.038332 

AL DEBUG: min band error is 0.965831 

('abs(band_max/band_min)', 1.0750652466039783)
bin  82  y  4051.05078125  stat  107.274704092
syst.up_histo.GetBinContent(ibin) 4082.18432617
('draw_error_band y', 4051.05078125)
syst.down_histo.GetBinContent(ibin) 3961.63476562
up_diff 0.00768530107447
dw_diff -0.022072301843
up_err_sum2 0.000701228043392
dw_err_sum2 0.000701228043392
syst.up_histo.GetBinContent(ibin) 4051.05078125
('draw_error_band y', 4051.05078125)
syst.down_histo.GetBinContent(ibin) 4051.05078125
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.000760291895998
dw_err_sum2 0.00118841455204
AL DEBUG: for bin number 82.000000 

AL DEBUG: max band error is 1.027573 

AL DEBUG: min band error is 0.965527 

('abs(band_max/band_min)', 1.0642621129486185)
bin  83  y  3755.26928711  stat  103.70607473
syst.up_histo.GetBinContent(ibin) 3795.13110352
('draw_error_band y', 3755.269287109375)
syst.down_histo.GetBinContent(ibin) 3703.68188477
up_diff 0.0106149022503
dw_diff -0.0137373376979
up_err_sum2 0.000762651664436
dw_err_sum2 0.000762651664436
syst.up_histo.GetBinContent(ibin) 3755.26928711
('draw_error_band y', 3755.269287109375)
syst.down_histo.GetBinContent(ibin) 3755.26928711
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00087532781422
dw_err_sum2 0.000951366111463
AL DEBUG: for bin number 83.000000 

AL DEBUG: max band error is 1.029586 

AL DEBUG: min band error is 0.969156 

('abs(band_max/band_min)', 1.0623534051278598)
bin  84  y  3390.38574219  stat  99.7568089767
syst.up_histo.GetBinContent(ibin) 3463.40722656
('draw_error_band y', 3390.3857421875)
syst.down_histo.GetBinContent(ibin) 3345.7277832
up_diff 0.0215378101277
dw_diff -0.0131719404163
up_err_sum2 0.000865738778294
dw_err_sum2 0.000865738778294
syst.up_histo.GetBinContent(ibin) 3390.38574219
('draw_error_band y', 3390.3857421875)
syst.down_histo.GetBinContent(ibin) 3390.38574219
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00132961604339
dw_err_sum2 0.00103923879262
AL DEBUG: for bin number 84.000000 

AL DEBUG: max band error is 1.036464 

AL DEBUG: min band error is 0.967763 

('abs(band_max/band_min)', 1.070989636373654)
bin  85  y  3227.94482422  stat  98.0928944127
syst.up_histo.GetBinContent(ibin) 3271.13305664
('draw_error_band y', 3227.94482421875)
syst.down_histo.GetBinContent(ibin) 3176.16821289
up_diff 0.0133794828517
dw_diff -0.0160401165905
up_err_sum2 0.000923470216965
dw_err_sum2 0.000923470216965
syst.up_histo.GetBinContent(ibin) 3227.94482422
('draw_error_band y', 3227.94482421875)
syst.down_histo.GetBinContent(ibin) 3227.94482422
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00110248077834
dw_err_sum2 0.0011807555572
AL DEBUG: for bin number 85.000000 

AL DEBUG: max band error is 1.033204 

AL DEBUG: min band error is 0.965638 

('abs(band_max/band_min)', 1.0699700700722543)
bin  86  y  3015.97265625  stat  94.5871883552
syst.up_histo.GetBinContent(ibin) 3050.3269043
('draw_error_band y', 3015.97265625)
syst.down_histo.GetBinContent(ibin) 2978.05029297
up_diff 0.0113907690694
dw_diff -0.0125738418757
up_err_sum2 0.00098358032464
dw_err_sum2 0.00098358032464
syst.up_histo.GetBinContent(ibin) 3015.97265625
('draw_error_band y', 3015.97265625)
syst.down_histo.GetBinContent(ibin) 3015.97265625
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00111332994463
dw_err_sum2 0.00114168182416
AL DEBUG: for bin number 86.000000 

AL DEBUG: max band error is 1.033367 

AL DEBUG: min band error is 0.966211 

('abs(band_max/band_min)', 1.0695038316068828)
bin  87  y  2709.35498047  stat  90.2630167218
syst.up_histo.GetBinContent(ibin) 2749.16967773
('draw_error_band y', 2709.35498046875)
syst.down_histo.GetBinContent(ibin) 2658.41015625
up_diff 0.0146952678968
dw_diff -0.0188033035855
up_err_sum2 0.00110991026521
dw_err_sum2 0.00110991026521
syst.up_histo.GetBinContent(ibin) 2709.35498047
('draw_error_band y', 2709.35498046875)
syst.down_histo.GetBinContent(ibin) 2709.35498047
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00132586116377
dw_err_sum2 0.00146347449094
AL DEBUG: for bin number 87.000000 

AL DEBUG: max band error is 1.036412 

AL DEBUG: min band error is 0.961745 

('abs(band_max/band_min)', 1.0776378265992057)
bin  88  y  2697.56323242  stat  87.9843361115
syst.up_histo.GetBinContent(ibin) 2720.93237305
('draw_error_band y', 2697.563232421875)
syst.down_histo.GetBinContent(ibin) 2629.39379883
up_diff 0.00866305573272
dw_diff -0.0252707453803
up_err_sum2 0.00106381829699
dw_err_sum2 0.00106381829699
syst.up_histo.GetBinContent(ibin) 2697.56323242
('draw_error_band y', 2697.563232421875)
syst.down_histo.GetBinContent(ibin) 2697.56323242
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00113886683162
dw_err_sum2 0.00170242886906
AL DEBUG: for bin number 88.000000 

AL DEBUG: max band error is 1.033747 

AL DEBUG: min band error is 0.958739 

('abs(band_max/band_min)', 1.078235642945561)
bin  89  y  2613.35375977  stat  87.4698737348
syst.up_histo.GetBinContent(ibin) 2644.2890625
('draw_error_band y', 2613.353759765625)
syst.down_histo.GetBinContent(ibin) 2558.67773438
up_diff 0.0118373957673
dw_diff -0.0209217849617
up_err_sum2 0.00112026455253
dw_err_sum2 0.00112026455253
syst.up_histo.GetBinContent(ibin) 2613.35375977
('draw_error_band y', 2613.353759765625)
syst.down_histo.GetBinContent(ibin) 2613.35375977
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00126038849108
dw_err_sum2 0.00155798563851
AL DEBUG: for bin number 89.000000 

AL DEBUG: max band error is 1.035502 

AL DEBUG: min band error is 0.960529 

('abs(band_max/band_min)', 1.078054179334066)
bin  90  y  2336.265625  stat  82.6357918476
syst.up_histo.GetBinContent(ibin) 2360.53857422
('draw_error_band y', 2336.265625)
syst.down_histo.GetBinContent(ibin) 2289.51879883
up_diff 0.010389635904
dw_diff -0.0200092085727
up_err_sum2 0.00125109978112
dw_err_sum2 0.00125109978112
syst.up_histo.GetBinContent(ibin) 2336.265625
('draw_error_band y', 2336.265625)
syst.down_histo.GetBinContent(ibin) 2336.265625
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00135904431534
dw_err_sum2 0.00165146820882
AL DEBUG: for bin number 90.000000 

AL DEBUG: max band error is 1.036865 

AL DEBUG: min band error is 0.959362 

('abs(band_max/band_min)', 1.0807865015248115)
bin  91  y  2220.14379883  stat  80.4136657878
syst.up_histo.GetBinContent(ibin) 2245.56152344
('draw_error_band y', 2220.143798828125)
syst.down_histo.GetBinContent(ibin) 2163.10351562
up_diff 0.0114486839198
dw_diff -0.0256921570725
up_err_sum2 0.00131189027269
dw_err_sum2 0.00131189027269
syst.up_histo.GetBinContent(ibin) 2220.14379883
('draw_error_band y', 2220.143798828125)
syst.down_histo.GetBinContent(ibin) 2220.14379883
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00144296263618
dw_err_sum2 0.00197197720773
AL DEBUG: for bin number 91.000000 

AL DEBUG: max band error is 1.037986 

AL DEBUG: min band error is 0.955593 

('abs(band_max/band_min)', 1.0862221612189111)
bin  92  y  2267.13745117  stat  80.2862965808
syst.up_histo.GetBinContent(ibin) 2280.8671875
('draw_error_band y', 2267.137451171875)
syst.down_histo.GetBinContent(ibin) 2224.26586914
up_diff 0.00605597879433
dw_diff -0.0189100056589
up_err_sum2 0.00125408550567
dw_err_sum2 0.00125408550567
syst.up_histo.GetBinContent(ibin) 2267.13745117
('draw_error_band y', 2267.137451171875)
syst.down_histo.GetBinContent(ibin) 2267.13745117
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00129076038483
dw_err_sum2 0.00161167381969
AL DEBUG: for bin number 92.000000 

AL DEBUG: max band error is 1.035927 

AL DEBUG: min band error is 0.959854 

('abs(band_max/band_min)', 1.0792545369070068)
bin  93  y  2131.39624023  stat  77.9659383235
syst.up_histo.GetBinContent(ibin) 2151.73388672
('draw_error_band y', 2131.396240234375)
syst.down_histo.GetBinContent(ibin) 2098.26904297
up_diff 0.00954193598565
dw_diff -0.0155424864886
up_err_sum2 0.00133807799696
dw_err_sum2 0.00133807799696
syst.up_histo.GetBinContent(ibin) 2131.39624023
('draw_error_band y', 2131.396240234375)
syst.down_histo.GetBinContent(ibin) 2131.39624023
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00142912653931
dw_err_sum2 0.0015796468832
AL DEBUG: for bin number 93.000000 

AL DEBUG: max band error is 1.037804 

AL DEBUG: min band error is 0.960255 

('abs(band_max/band_min)', 1.0807582812410494)
bin  94  y  2013.82409668  stat  76.27267653
syst.up_histo.GetBinContent(ibin) 2040.23535156
('draw_error_band y', 2013.8240966796875)
syst.down_histo.GetBinContent(ibin) 1973.83508301
up_diff 0.0131149760927
dw_diff -0.0198572525464
up_err_sum2 0.00143448135298
dw_err_sum2 0.00143448135298
syst.up_histo.GetBinContent(ibin) 2013.82409668
('draw_error_band y', 2013.8240966796875)
syst.down_histo.GetBinContent(ibin) 2013.82409668
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00160648395089
dw_err_sum2 0.00182879183167
AL DEBUG: for bin number 94.000000 

AL DEBUG: max band error is 1.040081 

AL DEBUG: min band error is 0.957236 

('abs(band_max/band_min)', 1.0865464479908036)
bin  95  y  1932.91564941  stat  74.8805418457
syst.up_histo.GetBinContent(ibin) 1945.97900391
('draw_error_band y', 1932.9156494140625)
syst.down_histo.GetBinContent(ibin) 1887.82666016
up_diff 0.00675836759672
dw_diff -0.023326930625
up_err_sum2 0.001500763132
dw_err_sum2 0.001500763132
syst.up_histo.GetBinContent(ibin) 1932.91564941
('draw_error_band y', 1932.9156494140625)
syst.down_histo.GetBinContent(ibin) 1932.91564941
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00154643866457
dw_err_sum2 0.00204490882438
AL DEBUG: for bin number 95.000000 

AL DEBUG: max band error is 1.039325 

AL DEBUG: min band error is 0.954779 

('abs(band_max/band_min)', 1.088549730437268)
bin  96  y  1842.79919434  stat  73.4675405915
syst.up_histo.GetBinContent(ibin) 1862.01940918
('draw_error_band y', 1842.7991943359375)
syst.down_histo.GetBinContent(ibin) 1791.5333252
up_diff 0.0104299019138
dw_diff -0.0278195634653
up_err_sum2 0.00158940646707
dw_err_sum2 0.00158940646707
syst.up_histo.GetBinContent(ibin) 1842.79919434
('draw_error_band y', 1842.7991943359375)
syst.down_histo.GetBinContent(ibin) 1842.79919434
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.001698189321
dw_err_sum2 0.00236333457847
AL DEBUG: for bin number 96.000000 

AL DEBUG: max band error is 1.041209 

AL DEBUG: min band error is 0.951386 

('abs(band_max/band_min)', 1.0944130411674289)
bin  97  y  1583.18530273  stat  70.9852824678
syst.up_histo.GetBinContent(ibin) 1609.87902832
('draw_error_band y', 1583.185302734375)
syst.down_histo.GetBinContent(ibin) 1564.21069336
up_diff 0.0168607714712
dw_diff -0.0119850843374
up_err_sum2 0.0020103567417
dw_err_sum2 0.0020103567417
syst.up_histo.GetBinContent(ibin) 1583.18530273
('draw_error_band y', 1583.185302734375)
syst.down_histo.GetBinContent(ibin) 1583.18530273
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00229464235631
dw_err_sum2 0.00215399898828
AL DEBUG: for bin number 97.000000 

AL DEBUG: max band error is 1.047902 

AL DEBUG: min band error is 0.953589 

('abs(band_max/band_min)', 1.0989038666183761)
bin  98  y  1668.49511719  stat  69.0925269267
syst.up_histo.GetBinContent(ibin) 1704.61779785
('draw_error_band y', 1668.4951171875)
syst.down_histo.GetBinContent(ibin) 1643.42529297
up_diff 0.0216498569831
dw_diff -0.0150254105993
up_err_sum2 0.00171479525397
dw_err_sum2 0.00171479525397
syst.up_histo.GetBinContent(ibin) 1668.49511719
('draw_error_band y', 1668.4951171875)
syst.down_histo.GetBinContent(ibin) 1668.49511719
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00218351156136
dw_err_sum2 0.00194055821765
AL DEBUG: for bin number 98.000000 

AL DEBUG: max band error is 1.046728 

AL DEBUG: min band error is 0.955948 

('abs(band_max/band_min)', 1.0949631204546049)
bin  99  y  1555.27941895  stat  67.7311410769
syst.up_histo.GetBinContent(ibin) 1571.90893555
('draw_error_band y', 1555.2794189453125)
syst.down_histo.GetBinContent(ibin) 1514.1307373
up_diff 0.0106923015884
dw_diff -0.0264574205377
up_err_sum2 0.00189653095048
dw_err_sum2 0.00189653095048
syst.up_histo.GetBinContent(ibin) 1555.27941895
('draw_error_band y', 1555.2794189453125)
syst.down_histo.GetBinContent(ibin) 1555.27941895
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00201085626374
dw_err_sum2 0.00259652605199
AL DEBUG: for bin number 99.000000 

AL DEBUG: max band error is 1.044843 

AL DEBUG: min band error is 0.949044 

('abs(band_max/band_min)', 1.1009423197334351)
bin  100  y  1417.13085938  stat  65.1390735854
syst.up_histo.GetBinContent(ibin) 1449.00622559
('draw_error_band y', 1417.130859375)
syst.down_histo.GetBinContent(ibin) 1399.25817871
up_diff 0.0224928883597
dw_diff -0.0126118774041
up_err_sum2 0.0021128236268
dw_err_sum2 0.0021128236268
syst.up_histo.GetBinContent(ibin) 1417.13085938
('draw_error_band y', 1417.130859375)
syst.down_histo.GetBinContent(ibin) 1417.13085938
up_diff 0.0
dw_diff 0.0
up_err_sum2 0.00261875365356
dw_err_sum2 0.00227188307846
AL DEBUG: for bin number 100.000000 

AL DEBUG: max band error is 1.051174 

AL DEBUG: min band error is 0.952336 

('abs(band_max/band_min)', 1.1037848643593853)
checkratio1
checkratio2
checkratio4
forgetting the ratio plot ....
-rw-r--r--. 1 zhenxuan zh 27636 Dec  6  2022 /eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/stack_histogram_pt_zee.png
-rw-r--r--. 1 zhenxuan zh 25323 Mar 20  2023 /eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/stack_histogram_diphoMVA_zee.png
-rw-r--r--. 1 zhenxuan zh 31339 Jul  2  2023 /eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/stack_histogram_Tran_DiphotonMVA_self_zee.png
-rw-r--r--. 1 zhenxuan zh 27267 Aug  9  2023 /eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/stack_histogram_DiphotonMVA_self_zee.png
-rw-r--r--. 1 zhenxuan zh 31102 Nov 10  2023 /eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/stack_histogram_sigmawv_zee.png
-rw-r--r--. 1 zhenxuan zh 31177 Nov 10  2023 /eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/stack_histogram_sigmarv_zee.png
-rw-r--r--. 1 zhenxuan zh 31893 Jun 18 20:20 /eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/stack_histogram_CMS_hgg_mass_zee.png
-rw-r--r--. 1 zhenxuan zh 25131 Jun 18 20:37 /eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/stack_histogram_CMS_hgg_mass_zee_EBEB.png
-rw-r--r--. 1 zhenxuan zh 36149 Jun 18 20:43 /eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/stack_histogram_CMS_hgg_mass_zee_not_EBEB.png
