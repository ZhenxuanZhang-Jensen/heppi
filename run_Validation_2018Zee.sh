#/bin/bash

WorkDir="/eos/user/z/zhenxuan/Hgg_mass/Zee/Plots"
JsonFile="plotcard2018_zee.json"
RootDir="DataUL2018_ZeeTree_SingleEleHLT"


#mkdir -p plots/${WorkDir}
# mkdir -p ${WorkDir}

# input variables validation
###Aamir###
# ./heppi-draw -s /eos/user/z/zhenxuan/Hgg_mass/Zee/Plots/tagsDumper/trees/Data_13TeV_UntaggedTag --load plotcard2018_zee.json --all
# ./heppi-draw -p plotcard2018_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2018/MassUL2018_ETSS_PhoID/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2018/MassUL2018_ETSS_PhoID/" -t {sampleid}_13TeV_UntaggedTag --label zee -v CMS_hgg_mass
# ./heppi-draw -p plotcard2018_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2018/MassUL2018_Summer20/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2018/MassUL2018_ETSS_PhoID/" -t {sampleid}_13TeV_UntaggedTag --label zee -v DiphotonMVA_self
# ./heppi-draw -p plotcard2018_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2018/MassUL2018_Summer20/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2018/MassUL2018_ETSS_PhoID/" -t {sampleid}_13TeV_UntaggedTag --label zee -v Tran_DiphotonMVA_self
# ./heppi-draw -p plotcard2018_zee.json -o "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/MassUL2018_ETSS_PhoID/" -s "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/MassUL2018_ETSS_PhoID/" -t {sampleid}_13TeV_UntaggedTag --label zee -v CMS_hgg_mass
# ./heppi-draw -p plotcard2018_zee_withScaleSmear_with_nonLinearity_cat0EBEB.json -o "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/UL2018_Summer20_DYMC_with_ScaleSmear/with_SS_non_linearity/hadded_more_dense" -s "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/UL2018_Summer20_DYMC_with_ScaleSmear/with_SS_non_linearity/hadded_more_dense" -t {sampleid}_13TeV_UntaggedTag --label Zee_Untagged_0 -v CMS_hgg_mass
# ./heppi-draw -p plotcard2018_zee_withScaleSmear_with_nonLinearity_cat1EBEB.json -o "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/UL2018_Summer20_DYMC_with_ScaleSmear/with_SS_non_linearity/hadded_more_dense" -s "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/UL2018_Summer20_DYMC_with_ScaleSmear/with_SS_non_linearity/hadded_more_dense" -t {sampleid}_13TeV_UntaggedTag --label Zee_Untagged_1 -v CMS_hgg_mass
# EBEB ETl80
# ./heppi-draw -p plotcard2018_zee_withScaleSmear_with_nonLinearity_cat0123EBEB_ETl80.json -o "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/UL2018_Summer20_DYMC_with_ScaleSmear/with_SS_non_linearity/hadded_more_dense" -s "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/UL2018_Summer20_DYMC_with_ScaleSmear/with_SS_non_linearity/hadded_more_dense" -t {sampleid}_13TeV_UntaggedTag --label zee_cat0123EBEB_ETl80 -v CMS_hgg_mass
# ./heppi-draw -p plotcard2018_zee_withScaleSmear_with_nonLinearity_cat0123notEBEB_ETl80.json -o "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/UL2018_Summer20_DYMC_with_ScaleSmear/with_SS_non_linearity/hadded_more_dense" -s "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/UL2018_Summer20_DYMC_with_ScaleSmear/with_SS_non_linearity/hadded_more_dense" -t {sampleid}_13TeV_UntaggedTag --label zee_cat0123notEBEB_ETl80_50bin -v CMS_hgg_mass
# ./heppi-draw -p plotcard2018_zee_withScaleSmear_with_nonLinearity_cat0123notEBEB_ETs80.json -o "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/UL2018_Summer20_DYMC_with_ScaleSmear/with_SS_non_linearity/hadded_more_dense" -s "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/UL2018_Summer20_DYMC_with_ScaleSmear/with_SS_non_linearity/hadded_more_dense" -t {sampleid}_13TeV_UntaggedTag --label zee_cat0123notEBEB_ETs80 -v CMS_hgg_mass
./heppi-draw -p plotcard2018_zee_withScaleSmear_with_nonLinearity_cat0123EBEB_ETs80.json -o "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/UL2018_Summer20_DYMC_with_ScaleSmear/with_SS_non_linearity/hadded_more_dense" -s "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/UL2018_Summer20_DYMC_with_ScaleSmear/with_SS_non_linearity/hadded_more_dense" -t {sampleid}_13TeV_UntaggedTag --label zee_cat0123EBEB_ETs80 -v CMS_hgg_mass
# ./heppi-draw -p plotcard2018_zee_withScaleSmear_with_nonLinearity_cat2EBEB.json -o "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/UL2018_Summer20_DYMC_with_ScaleSmear/with_SS_non_linearity/hadded_more_dense" -s "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/UL2018_Summer20_DYMC_with_ScaleSmear/with_SS_non_linearity/hadded_more_dense" -t {sampleid}_13TeV_UntaggedTag --label Zee_Untagged_2 -v CMS_hgg_mass
# ./heppi-draw -p plotcard2018_zee_withScaleSmear_with_nonLinearity_cat3EBEB.json -o "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/UL2018_Summer20_DYMC_with_ScaleSmear/with_SS_non_linearity/hadded_more_dense" -s "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2018/UL2018_Summer20_DYMC_with_ScaleSmear/with_SS_non_linearity/hadded_more_dense" -t {sampleid}_13TeV_UntaggedTag --label Zee_Untagged_3 -v CMS_hgg_mass
# ./heppi-draw -p plotcard2018_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2018/MassUL2018_Summer20/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2018/MassUL2018_ETSS_PhoID/" -t {sampleid}_13TeV_UntaggedTag --label zee -v sigmarv
#  ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_mva
#  ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_centrality_gg
#  ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfTagDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dipho_lead_ptoM 
#  ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfTagDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dipho_sublead_ptoM
#  ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfTagDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_LeadJPt
#  ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfTagDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j  -v dijet_SubJPt
#  ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_dipho_dphi_trunc
#  ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_minDRJetPho
#  ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_dphi
#  ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_abs_dEta
#  ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_leadEta
#  ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfDumper/trees/{sac'dmpleid}_13TeV_VBFDiJet --label zplus2j -v dijet_subleadEta
#  ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfTagDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_Mjj
#  ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dipho_mva
#  ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfTagDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dipho_PToM
#  ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfTagDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dipho_dijet_MVA

 # Two electrons (diphoton) mass Z pt
 #./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfTagDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dipho_PToM*dipho_mass

 #Systematics test
 #./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dipho_mass
 #./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_leadEta

