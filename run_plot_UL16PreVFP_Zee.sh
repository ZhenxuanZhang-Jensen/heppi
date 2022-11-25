#/bin/bash

WorkDir="/eos/user/z/zhenxuan/Hgg_mass/Zee/Plots"
JsonFile="plotcard_UL16PreVFP_zee.json"


#mkdir -p plots/${WorkDir}
mkdir -p ${WorkDir}

# input variables validation
###Aamir###
# ./heppi-draw -s /eos/user/z/zhenxuan/Hgg_mass/Zee/Plots/tagsDumper/trees/Data_13TeV_UntaggedTag --load plotcard2018_zee.json --all
./heppi-draw -p plotcard_UL16PreVFP_zee.json -o "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -s "/eos/user/z/zhenxuan/Hgg_mass/MiniTree/UL2016/preVFP/" -t {sampleid}_13TeV_UntaggedTag --label zee -v DiphotonMVA_self


