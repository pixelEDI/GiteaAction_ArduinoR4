#!/bin/bash
# Exit immediately if a command exits with a non-zero status.
set -e 
shopt -s globstar 
cd $GITEA_WORKSPACE 
mkdir $HOME/Arduino
mkdir $HOME/Arduino/libraries 
export PATH=$PATH:/root/bin
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh
echo "-------  core install ------- "
arduino-cli core install arduino:renesas_uno
arduino-cli config init
arduino-cli core update-index
echo "------- start lib install install ------- "
arduino-cli lib install ArduinoGraphics
echo "------- finished installation - start compiling ------- "

# Link Arduino library
ln -s $GITEA_WORKSPACE $HOME/Arduino/libraries/CI_Test_Library

# Compile all *.ino files for the Arduino Uno
for f in $GITEA_WORKSPACE/**/*.ino; do
    arduino-cli compile -b arduino:renesas_uno:unor4wifi "$f"
done
