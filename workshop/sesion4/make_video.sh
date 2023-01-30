# =================      Synopsis    ==========================================
# This script is a efficient tool to make videos from multiple images
# -r 15 : the rate of images per seccond
# -b 10000k : quality of the video 
# -i img%03d.png : input files. The format "img%03d.png" depends of each case
# $video_name.mov : output filename
# 
# AUTHOR
# Rdlcruz    --- rev0 --- March  2014
# Rdlcruz    --- rev1 --- July   2014  
# Rdlcruz    --- rev2 --- November 2014
# ============================================================================= 

#!/bin/bash
#video_name=Paral_to_Perp_e3_phi10_pe0_1_to_pe10 #Lamellar_pe0_1_for_web4          # set the name of the video
#video_name=Video2          # set the name of the video
#video_name1=Pe0_1HS


#avconv -r 15 -b 10000k -i img%03d.png $video_name.mov 
#avconv -r 15 -b 10000k -i %5d.png $video_name.mov
#avconv -r 15 -s cif -b 10000k -i %5d.png -s 1305x680 $video_name.mov
#avconv -r 15 -start_number 00001 -i %05d.png -b:v 1000k $video_name.mov

#ffmpeg -r 15 -start_number 0001 -i Frames/%04d.png -b:v 10000k $video_name.mov     
#ffmpeg -r 5 -b 10000k -i %5d.png $video_name.mov  

# see http://www.knolpad.com/cut-and-crop-videos-with-avconv/ to cut and crop
# To crop a video -- to check the correct work
#avconv -i video1.mov -vf crop=720:600:0:360 output_video1.mov

# To cut a video from second 32 to second 40 (08 is the time of cutting)
# This was checked and works perfectly !!!
#avconv -i video1.mov -ss 00:00:32 -t 00:00:08 -codec copy output_video1.mov
#ffmpeg -i Video3.mp4 -ss 00:00:12 -t 00:00:08 -codec copy output_video1.mp4

#mv $video_name.mov ../../../../../VIDEOS_HD_3D  # Move to desired folder (optional)
echo "done the video !!!"

#------------------------------------------------------------------------------
# Remarks:
#------------------------------------------------------------------------------
#
# ffmpeg is deprecated in linux mint 17
# to install avconv: $ sudo apt-get install libav-tools, 
#                    These tools contains avconv
#                    to check it $ avconv
# to install ffmpeg: $ sudo apt-get install ffmpeg
#                    This program works with ubuntu 10.04 and 12.04



