#include <stdio.h>
#include <stdlib.h>

int main (void){
	system("/Users/mboukhal/script/bin/ffmpeg -ss 0.5 -f avfoundation -i \"0\" -t 1 ~/script/\"$(uname -n) $(date)\".jpg -list_devices true");
}

