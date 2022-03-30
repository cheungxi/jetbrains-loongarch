wget -c https://download.jetbrains.com/idea/ideaIC-2021.3.3.tar.gz -O - | tar -xz
#wget https://github.com/loongson/jna/releases/download/5.11.0-loongarch64/jna-5.11.0.jar
#wget https://github.com/loongson/jna/releases/download/5.11.0-loongarch64/jna-platform-5.11.0.jar
#mkdir tmp-jna
#cd tmp-jna
#jar -xf ../jna-platform-5.11.0.jar
#jar -xf ../jna-5.11.0.jar
#jar -cf ../jna.jar .
#cd -
#rm jna-platform-5.11.0.jar
#rm jna-5.11.0.jar
#rm -rf tmp-jna
cp jna.jar ./idea-IC-213.7172.25/lib/
#cp pty4j/os/linux/loongarch64/libpty.so idea-IC-213.7172.25/lib/pty4j-native/linux/x86/libpty.so
#cp pty4j/os/linux/loongarch64/libpty.so idea-IC-213.7172.25/lib/pty4j-native/linux/x86-64/libpty.so
cp -r pty4j/os/linux/loongarch64 ./idea-IC-213.7172.25/lib/pty4j-native/linux/
cp fsNotifier/linux/fsnotifier idea-IC-213.7172.25/bin/fsnotifier-loongarch64 
echo "idea.filewatcher.executable.path = \${idea.home.path}/bin/fsnotifier-loongarch64" >>idea-IC-213.7172.25/bin/idea.properties
