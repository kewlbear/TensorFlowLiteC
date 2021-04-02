V=$1

cd App

if [ "$V" = "" ]
then
  sed s/VERSION//g Podfile.in > Podfile
else
  (git fetch --tags | grep "$V") && exit
  sed s/VERSION/", '~> $V'"/g Podfile.in > Podfile
fi

pod install

if [ "$V" = "" ]
then
  V=`egrep -o '(\d+\.)+\d+' Podfile.lock | head -1`
  (git fetch --tags | grep "$V") && exit
fi

echo "::set-output name=version::$V"
