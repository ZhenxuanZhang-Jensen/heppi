#/bin/bash

OutputDir="/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/"
JsonFile="plotcard2017_zee.json"
RootDir="/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/"


#mkdir -p plots/${OutputDir}
mkdir -p ${OutputDir}

# input variables validation
###Aamir###
# ./heppi-draw -s /eos/user/z/zhenxuan/Hgg_mass/Zee/Plots/tagsDumper/trees/Data_13TeV_UntaggedTag --load plotcard2018_zee.json --all
./heppi-draw -p plotcard2017_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -t {sampleid}_13TeV_UntaggedTag --label zee -v Tran_DiphotonMVA_self
./heppi-draw -p plotcard2017_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -t {sampleid}_13TeV_UntaggedTag --label zee -v sigmarv
./heppi-draw -p plotcard2017_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -t {sampleid}_13TeV_UntaggedTag --label zee -v sigmawv
./heppi-draw -p plotcard2017_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -t {sampleid}_13TeV_UntaggedTag --label zee -v  CosPhi
./heppi-draw -p plotcard2017_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -t {sampleid}_13TeV_UntaggedTag --label zee -v  vtxprob
./heppi-draw -p plotcard2017_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -t {sampleid}_13TeV_UntaggedTag --label zee -v  leadeta
./heppi-draw -p plotcard2017_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -t {sampleid}_13TeV_UntaggedTag --label zee -v  subleadeta
./heppi-draw -p plotcard2017_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -t {sampleid}_13TeV_UntaggedTag --label zee -v  leadptom
./heppi-draw -p plotcard2017_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -t {sampleid}_13TeV_UntaggedTag --label zee -v  subleadptom
./heppi-draw -p plotcard2017_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -t {sampleid}_13TeV_UntaggedTag --label zee -v  leadmva
./heppi-draw -p plotcard2017_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -t {sampleid}_13TeV_UntaggedTag --label zee -v  subleadmva
./heppi-draw -p plotcard2017_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -t {sampleid}_13TeV_UntaggedTag --label zee -v  CMS_hgg_mass
# ./heppi-draw -p plotcard2017_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -t {sampleid}_13TeV_UntaggedTag --label zee -v DiphotonMVA_self
# ./heppi-draw -p plotcard2017_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/Summer20/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/" -t {sampleid}_13TeV_UntaggedTag --label zee -v diphoMVA
# ./heppi-draw -p plotcard2017_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2017/" -t {sampleid}_13TeV_UntaggedTag --label zee -v CMS_hgg_mass
#  ./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_mva
#  ./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_centrality_gg
#  ./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfTagDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dipho_lead_ptoM 
#  ./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfTagDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dipho_sublead_ptoM
#  ./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfTagDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_LeadJPt
#  ./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfTagDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j  -v dijet_SubJPt
#  ./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_dipho_dphi_trunc
#  ./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_minDRJetPho
#  ./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_dphi
#  ./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_abs_dEta
#  ./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_leadEta
#  ./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_subleadEta
#  ./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfTagDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_Mjj
#  ./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dipho_mva
#  ./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfTagDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dipho_PToM
#  ./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfTagDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dipho_dijet_MVA

 # Two electrons (diphoton) mass Z pt
 #./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfTagDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dipho_PToM*dipho_mass

 #Systematics test
 #./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dipho_mass
 #./heppi-draw -p ${JsonFile} -o ${OutputDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_leadEta

