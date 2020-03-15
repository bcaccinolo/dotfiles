
# source https://crunchdroid.com/intellij-trial-reset-mac/

################################################################
# IntelliJ
################################################################

# echo "Removing evaluation key for Intellij"
# rm $HOME/Library/Preferences/jetbrains.idea.*.plist
# rm $HOME/Library/Preferences/IntelliJIdea2018.2/eval/*.key

# echo "Resetting evalsprt in options.xml for Intellij"
# sed -i'' -e '/evlsprt/d' $HOME/Library/Preferences/IntelliJIdea2018.2/options/options.xml

################################################################
# RubyMine 2018.2
################################################################
echo "Resetting Rubymine"
rm -v $HOME/Library/Preferences/jetbrains.rubymine.*.plist
rm -v  $HOME/Library/Preferences/RubyMine2019.3/eval/*.key
sed -i'' -e '/evlsprt/d' $HOME/Library/Preferences/RubyMine2019.3/options/other.xml
# test with ag evlsprt

echo "Resetting evalsprt in prefs.xml"
# cd $HOME/Library/Preferences/
# ag evlsprt
sed -i'' -e '/evlsprt/d' $HOME/Library/Preferences/com.apple.java.util.prefs.plist

################################################################
# WebStorm 2018.2
# echo "Resetting Webstorm"
# rm $HOME/Library/Preferences/jetbrains.webstorm.*.plist
# rm $HOME/Library/Preferences/WebStorm2018.2/eval/*.key
# sed -i'' -e '/evlsprt/d' $HOME/Library/Preferences/WebStorm2018.2/options/options.xml

################################################################
# Pycharm 2018.2
# echo "Resetting Pycharm"
# rm $HOME/Library/Preferences/jetbrains.pycharm.*.plist
# rm $HOME/Library/Preferences/PyCharm2018.2/eval/*.key
# sed -i'' -e '/evlsprt/d' $HOME/Library/Preferences/PyCharm2018.2/options/options.xml

echo "Done!"

