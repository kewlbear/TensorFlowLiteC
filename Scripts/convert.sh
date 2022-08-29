name=`basename $1`
name=${name%.*}

# https://github.com/AppsFlyerSDK/AppsFlyerFramework/issues/137#issuecomment-723058327
for sdk in ios-arm64 ios-arm64_x86_64-simulator
do
  cat > $name.xcframework/$sdk/$name.framework/Info.plist <<EOF
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

zip -r $name.xcframework.zip $name.xcframework

swift package compute-checksum $name.xcframework.zip >$name.xcframework.zip.checksum
