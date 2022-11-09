#/bin/

WorkDir="ValidationPlots_2016Legacy"
JsonFile="plotcard2016Legacy.json"
RootDir="/eos/user/z/zhenxuan/Hgg_mass/Zee/"


#mkdir -p plots/${WorkDir}
mkdir -p ${WorkDir}

# input variables validation
###Aamir###

./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t tagsDumper/trees/{sampleid}_13TeV_UntaggedTag -v mass
# ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t tagsDumper/trees/{sampleid}_13TeV_UntaggedTag -v result
# ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t tagsDumper/trees/{sampleid}_13TeV_UntaggedTag -v CosPhi
# ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t tagsDumper/trees/{sampleid}_13TeV_UntaggedTag -v leadeta
# ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t tagsDumper/trees/{sampleid}_13TeV_UntaggedTag -v leadptom
# ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t tagsDumper/trees/{sampleid}_13TeV_UntaggedTag -v subleadeta
# ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t tagsDumper/trees/{sampleid}_13TeV_UntaggedTag -v subleadptom
# ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t tagsDumper/trees/{sampleid}_13TeV_UntaggedTag -v leadmva 
# ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t tagsDumper/trees/{sampleid}_13TeV_UntaggedTag -v subleadmva 
# ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t tagsDumper/trees/{sampleid}_13TeV_UntaggedTag -v sigmarv
# ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t tagsDumper/trees/{sampleid}_13TeV_UntaggedTag -v sigmawv
# ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t tagsDumper/trees/{sampleid}_13TeV_UntaggedTag -v vtxprob
# ./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t tagsDumper/trees/{sampleid}_13TeV_UntaggedTag -v pt

 #Systematics test
 #./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dipho_mass
 #./heppi-draw -p ${JsonFile} -o ${WorkDir}/ -s ${RootDir} -t vbfDumper/trees/{sampleid}_13TeV_VBFDiJet --label zplus2j -v dijet_leadEta

