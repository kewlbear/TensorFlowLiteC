cd Frameworks

for f in *.framework
do
  sh ../Scripts/convert.sh $f
done
