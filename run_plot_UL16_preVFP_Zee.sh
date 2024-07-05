#/bin/bash

# input variables validation
# ./heppi-draw -p plotcardUL16_preVFP.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -t {sampleid}_13TeV_UntaggedTag --label zee -v CosPhi
# ./heppi-draw -p plotcardUL16_preVFP.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -t {sampleid}_13TeV_UntaggedTag --label zee -v vtxprob
# ./heppi-draw -p plotcardUL16_preVFP.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -t {sampleid}_13TeV_UntaggedTag --label zee -v DiphotonMVA_self
# ./heppi-draw -p plotcardUL16_preVFP.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -t {sampleid}_13TeV_UntaggedTag --label zee -v Tran_DiphotonMVA_self
# ./heppi-draw -p plotcardUL16_preVFP.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -t {sampleid}_13TeV_UntaggedTag --label zee -v leadeta
# ./heppi-draw -p plotcardUL16_preVFP.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -t {sampleid}_13TeV_UntaggedTag --label zee -v subleadeta
# ./heppi-draw -p plotcardUL16_preVFP.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -t {sampleid}_13TeV_UntaggedTag --label zee -v leadptom
# ./heppi-draw -p plotcardUL16_preVFP.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -t {sampleid}_13TeV_UntaggedTag --label zee -v subleadptom
# ./heppi-draw -p plotcardUL16_preVFP.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -t {sampleid}_13TeV_UntaggedTag --label zee -v sigmawv 
# ./heppi-draw -p plotcardUL16_preVFP.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -t {sampleid}_13TeV_UntaggedTag --label zee -v sigmarv
# ./heppi-draw -p plotcardUL16_preVFP.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -t {sampleid}_13TeV_UntaggedTag --label zee -v leadmva
# ./heppi-draw -p plotcardUL16_preVFP.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -t {sampleid}_13TeV_UntaggedTag --label zee -v subleadmva
# ./heppi-draw -p plotcard_UL16PreVFP_zee.json -o "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -s "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -t {sampleid}_13TeV_UntaggedTag --label zee -v CMS_hgg_mass 
# ./heppi-draw -p plotcard_UL16PreVFP_zeeEBEB.json -o "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -s "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -t {sampleid}_13TeV_UntaggedTag --label zee_EBEB -v CMS_hgg_mass 
./heppi-draw -p plotcard_UL16PreVFP_zee_notEBEB.json -o "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -s "/eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -t {sampleid}_13TeV_UntaggedTag --label zee_not_EBEB -v CMS_hgg_mass 
# echo "save plots in /eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/"
# print all the *.png in the directory
ls -latr /eos/cms/store/group/phys_higgs/cmshgg/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/*.png