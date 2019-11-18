appName=$1
echo "dir = $appName"
rm -rf $appName
mkdir $appName
mkdir $appName/Payload
cp -r $appName.app $appName/Payload/$appName.app
#cp Icon.png appName/iTunesArtwork
cd $appName
zip -r $appName.ipa Payload iTunesArtwork
