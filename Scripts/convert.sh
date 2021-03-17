name=`basename $1`
name=${name%.*}

lipo $1/$name -output $name-device.a -extract arm64 -extract armv7
lipo $1/$name -output $name-simulator.a -extract x86_64 -extract i386

rm -rf $name.xcframework
xcodebuild -create-xcframework -output $name.xcframework -library $name-device.a -headers $1/Headers -library $name-simulator.a -headers $1/Headers

rm *.a
