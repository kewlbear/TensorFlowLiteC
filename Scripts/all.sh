cd App

d=`date -v -1d +%Y%m%d`

sed s/VERSION/", '~> 0.0.1-nightly.$d'"/g Podfile.in > Podfile

pod install

cd Pods/TensorFlowLiteC/Frameworks

for f in *.framework
do
  sh ../../../../Scripts/convert.sh $f
done

sed -e s/VERSION/$d/g \
    -e s/CORE_CHECKSUM/`cat TensorFlowLiteC.zip.checksum`/ \
    -e s/COREML_CHECKSUM/`cat TensorFlowLiteCCoreML.zip.checksum`/ \
    -e s/METAL_CHECKSUM/`cat TensorFlowLiteCMetal.zip.checksum`/ ../../../../Package.swift.in > ../../../../Package.swift
