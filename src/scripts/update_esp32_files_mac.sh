#!/bin/bash

# ======================
#  Installing esp32 
# ======================

    # ```bash
    # mkdir -p ~/Documents/Arduino/hardware/espressif && \
    # cd ~/Documents/Arduino/hardware/espressif && \
    # git clone https://github.com/espressif/arduino-esp32.git esp32 && \
    # cd esp32 && \
    # git submodule update --init --recursive && \
    # cd tools && \
    # python get.py

# ======================
# updating esp32
# ======================
gitRepo="."

cd ~/Documents/Arduino/hardware/espressif/esp32

checkGitStatus() {
	gitstatus=$(git status master 2>&1)

	while IFS= read -r
	do
		
		# Other output means there's changes to commit
		if [[ ! -z "$REPLY" ]]
		then
			#echo "There are uncommitted changes in this repo: $REPLY";
			#echo "$REPLY"
			# IFS =  "-n"
			echo " "
			echo  "$gitstatus" | sed -n 2p
			echo " "
			#echo "$2p"

			exit 1;
		else
			echo " "
			echo "Updating esP32 files ..."
			git submodule update --recursive
			echo " "
			echo "Update of esP32 files complete."
			echo " "
		fi
	done <<< "$gitstatus"
}

# cd ~/Documents/Arduino/hardware/espressif/esp32
# git status master
# echo "Updating esP32 files ..."
# git submodule update --init --recursive
# echo "Update of esP32 files complete."
# echo " "
checkGitStatus


