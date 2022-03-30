# wget -c https://download.jetbrains.com/idea/ideaIC-2021.3.3.tar.gz -O - | tar -xz
#wget https://github.com/loongson/jna/releases/download/5.11.0-loongarch64/jna-5.11.0.jar
#wget https://github.com/loongson/jna/releases/download/5.11.0-loongarch64/jna-platform-5.11.0.jar
mkdir tmp-jna
cd tmp-jna
jar -xf ../jna-platform-5.11.0.jar
jar -xf ../jna-5.11.0.jar
jar -cf ../jna.jar .
cd -
rm jna-platform-5.11.0.jar
rm jna-5.11.0.jar
rm -rf tmp-jna
