fbsetbg -a -c -r /home/andrea/doc/screen/ 
redshift  -l 44.4335430:8.8540500 -t 6000:3500 &
#input-leaps   --disable-crypto
setxkbmap -device `xinput list --id-only "Virtual core XTEST keyboard"` it ibm

dunst &

#/home/andrea/bin/davmail/davmail.sh &
compton & 
conky &
#gkrellm -w 
