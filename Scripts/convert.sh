name=`basename $1`
name=${name%.*}

zip -r $name.xcframework.zip $name.xcframework

swift package compute-checksum $name.xcframework.zip >$name.xcframework.zip.checksum
