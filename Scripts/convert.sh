name=`basename $1`
name=${name%.*}

mkdir -p temp/device temp/simulator

cp -r $1 temp/device
cp -r $1 temp/simulator

#rm temp/device/$name temp/simulator/$name

lipo $1/$name -output temp/device/$1/$name -extract arm64 -extract armv7
lipo $1/$name -output temp/simulator/$1/$name -extract x86_64 -extract i386

# https://github.com/AppsFlyerSDK/AppsFlyerFramework/issues/137#issuecomment-723058327
for sdk in device simulator
do
  cat > temp/$sdk/$name.framework/Info.plist <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>CFBundleExecutable</key>
    <string>$name</string>
    <key>CFBundleIdentifier</key>
    <string>io.github.kewlbear.$name</string>
    <key>CFBundleInfoDictionaryVersion</key>
    <string>6.0</string>
    <key>CFBundleName</key>
    <string>$name</string>
    <key>CFBundlePackageType</key>
    <string>FMWK</string>
    <key>CFBundleVersion</key>
    <string>1</string>
    <key>DTSDKName</key>
    <string>iphonesimulator11.2</string>
</dict>
</plist>
EOF
done

rm -rf $name.xcframework
xcodebuild -create-xcframework -output $name.xcframework -framework temp/device/$1 -framework temp/simulator/$1

rm -rf temp

zip -r $name.xcframework.zip $name.xcframework

swift package compute-checksum $name.xcframework.zip >$name.xcframework.zip.checksum
