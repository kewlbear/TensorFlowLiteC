V=$1

cd App/Pods/TensorFlowLiteC/Frameworks

for f in *.xcframework
do
  sh ../../../../Scripts/convert.sh $f
done

sed -e s/VERSION/$V/g \
    -e s/CORE_CHECKSUM/`cat TensorFlowLiteC.xcframework.zip.checksum`/ \
    -e s/COREML_CHECKSUM/`cat TensorFlowLiteCCoreML.xcframework.zip.checksum`/ \
    -e s/METAL_CHECKSUM/`cat TensorFlowLiteCMetal.xcframework.zip.checksum`/ \
    ../../../../Package.swift.in \
    > ../../../../Package.swift
