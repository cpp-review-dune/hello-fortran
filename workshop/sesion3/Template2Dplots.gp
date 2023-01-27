#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# SCRIPT TO MAKE PLOTS                                                                   #
# created by Ronal De La Cruz Araujo      Jun 2013                                       #
# revision  1.0  ---------- Ronal De La Cruz Araujo ---------   commented script         #
# revision  1.1  ---------- Ronal De La Cruz A. 20170328 -------------  dashtype         #
# revision  1.2  ---------- Ronal De La Cruz A. 20170328 -------- tics scale 1.5         #
# revision  1.3  ---------- Ronal De La Cruz A. 20190326 -------- point type 3  (*)      #
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# compilation to obtain a pdf:                                                           #
# use terminal epslatex standalone color colortex
# 1) gnuplot filename.gp !this generates 2 files, filename.tex and
#                     ! filename-inc.eps
# 2) load the .tex file in texmaker
# 3) compile with latex option
# 4) compile with DVI => PS option
# 5) compile with PS => PDF option
#
# Second option to compile
# $ gnuplot filename.gnu
# $ latex filename.tex
# $ dvips -o filename.ps filename.dvi
# $ ps2pdfwr filename.ps outputfilename.pdf
#
# The third and more easy form of compilation is to make a script shell with
# extension .sh to make automatically the commands listed in the second option.
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

reset

#-----------------------------------------------------------------------------------------
# SET SIZE OF THE PLOT
#-----------------------------------------------------------------------------------------
set size 1.0, 1.2       # setting for 0.8*5=4" width X 0.857*3.5=3" height
#set size 0.8, 0.857       # setting for 0.8*5=4" width X 0.857*3.5=3" height

#set size 1.0,1.0         # default size. means:width 5" and height 3.5"
#set size square          # width=height


#-----------------------------------------------------------------------------------------
# SET LABELS
#-----------------------------------------------------------------------------------------
#set title '$ N = 500 PARTICLES $'  # in general is not used
#set xlabel '$ t/\tau_D $' offset 0.0,0.5       # the las numbers represents the position
set xlabel '$ \tilde{t}=t/\tau_B$' offset 0.0,0.5
set ylabel '$  \langle N_c \rangle  $' offset 1.0,0.0                 # in the last time 'offset' applies
#set ylabel '$ \tilde{V} $' offset 1.0,0.0
# examples
         #set ylabel '\rotatebox[origin=c]{90}{$\eta_r^P$}'
         #set arrow 1 from  1.9,-1.0 to 2.01,1.8  # imput arrows in the figure
         #set label '$ \alpha=1.0 $' at 100000.0,5.0

#-----------------------------------------------------------------------------------------
# SET AXIS RANGE
#-----------------------------------------------------------------------------------------
set xrange[-20:1100]        # adjust the x range. The symbol [*:*] means autoscale
set yrange[0.0:15]       # adjust the y range. The symbol [3:*] adjust the lower x range
#set yrange[0.0:*] reverse  # To invert the the + down and -up


#-----------------------------------------------------------------------------------------
# SET FORMAT AND SCALE
#-----------------------------------------------------------------------------------------
# Linear scale is for default. You need comment all relates to log scale.
#set log x                      # only log in x
#set log y                       # only log in y
#set log xy                     # log in both axes

set format x '%g'               # For linear scale
set format y '%g'              # For linear scale
#set format x '$10^{%L}$'       # When the axes are log
#set format y '$10^{%L}$'        # When the axes are log


#-----------------------------------------------------------------------------------------
# SET TICS IN AXIS
#-----------------------------------------------------------------------------------------
set ytics 5.0           # tics in y-direction
set xtics 200.0           # tics in x-direction
#set mytics 10           # minor tics in y-direction
#set mxtics 5           # minor tics in x-direction
#set grid ytics         # grid in y-direction
#set grid xtics         # grid in x-direction
#set grid mytics        # grid in minor y-tics
#set grid mxtics        # grid in minor x-tics
set tics scale 1.5      # to control the size of scale

set xtics add ("0" 0.1) # Useful to configure specific values in tics
#set ytics ("0" 0.1, "1" 1, "10" 10)  # Useful to configure specific values in tics

#-----------------------------------------------------------------------------------------
# SET MARGINS
#-----------------------------------------------------------------------------------------
set bmargin 3       # bottom margin
set tmargin 3       # top margin
set lmargin 10      # left margin
set rmargin 2       # rigth margin


#-----------------------------------------------------------------------------------------
# SET LEGEND
#-----------------------------------------------------------------------------------------
#unset key               # This disables the key(legend)
#set key default         # This places the key at the default location
set key reverse          # Means that first go the symbol and next the dataname
set key Left             # To justity the text: Left of Right (the first is capital letter)
set key spacing 0.9      # spacing the text in key
#set key at 30000.0,25.0 # To set a particular location of the key
#set key right top       # position of the legend. It does not works in eps files
#set key right bottom
set key left top
#set key left bottom
#set key center


#-----------------------------------------------------------------------------------------
# SET LINE STYLES
#-----------------------------------------------------------------------------------------
set border linewidth 1.5  # This looks like

# ==========  kind of poits and lines =============
# l=lines, lt=line type, ls=line style, p=point, pt=point type
# ps=point size, lw=line width, lc=line color
# pt: +(1), x(2), *(3), open square(4), closed square(5), open circle(6), closed circle(7)
#     open triangle(8), closed triangle(9), open inv. triangle(10), closed inv. triangle(11)
#     open diamond(12), closed diamond(13), open pentagon(14), closed pentagon(15).
# lt: ___(1), _ _ _(2), ---(3), ...(4), _._._(5), -.-.(6), .. ..(7), ... ...(8), .... ....(9)
# lc: brown(#A52A2A), red(#FF0000), black(#000000), blue(#0000FF), purple(#800080),
#     orange(#FFA500), olive(#808000), navy(#000080), medium blue(#0000CD)

set style line 1  pt 4 lw 3.0  ps 2.0  lc rgb '#A52A2A'  #brown
set style line 9  lc rgb '#800080' lw 2.5 pt 7  ps 2.5   #purple
#set style line 1  lc rgb '#A52A2A' lt 1 lw 2.5 pt 5  ps 3.0   #brown
set style line 2  lc rgb '#FF0000' lt 2 lw 2.5 pt 7  ps 2.5   #red
set style line 3  lc rgb '#000000' lt 3 lw 2.5 pt 9  ps 1.0   #black
set style line 4  lc rgb '#0000FF' lt 4 lw 2.5 pt 15 ps 1.0   #blue
set style line 5  lc rgb '#FFA500' lt 5 lw 2.5 pt 10 ps 2.0   #orange
set style line 6  lc rgb '#000000' lt 7 lw 2.5 pt 7  ps 2.0   #black
set style line 7  lc rgb '#000000' lt 9 lw 2.5 pt 8  ps 2.5   #black
set style line 8  lc rgb '#000000' lt 4 lw 2.5 pt 8  ps 2.5   #black
#set style line 9  lc rgb '#800080' lt 2 lw 2.5 pt 8  ps 2.5   #purple
set style line 10 lc rgb '#000000' lt 6 lw 2.5 pt 8  ps 2.5   #black
set style line 11 lc rgb '#0000FF' lt 1 lw 1.5                #blue
set style line 12 lc rgb '#FF0000' lt 1 lw 1.5                #red
# NOTE: for gnuplot 5 patchlevel 0 the dashtype line using lt 2 no es suficiente
#        para incluir dashtype use 'dashtype' o  'dt' luego un numero, por ejemplo:
#  set style line 1  lc rgb '#A52A2A' lt 2 dashtype 2 lw 2.5 pt 4  ps 1.5   #brown

#-----------------------------------------------------------------------------------------
# Define some functions to plot
#-----------------------------------------------------------------------------------------
#Example functions
# f(x)= 0.0   #sin(x)
# g(x)= 1.0   #dimensionless  #sqrt(x)
 #plot f(x) t "$a^x,a_x$", g(x) t "$x^{1/2}$"
#f(x)=x
#plot f(x)

# For double axis
# ***************
#s_0=50
#V_0=4
#x_0=0    # time from x_0 to x=10
#ac=8

#s(x)=s_0+V_0*(x-x_0)+0.5*ac*(x-x_0)**2
#V(x)=V_0+ac*(x-x_0)
#a(x)=ac
#set ytics 100 nomirror
#set ylabel '$s$'
#set y2tics 20 nomirror
#set y2label '$V$'
#plot  s(x) ls 2  notitle
#plot V(x) ls 11 notitle
#plot a(x) ls 9 notitle
#plot s(x) ls 2 , V(x) ls 11 axes x1y2


#-----------------------------------------------------------------------------------------
# DATA TO PLOT
# This is the most important in this file since depend of this data you can set the other characteristics of the plot.
#-----------------------------------------------------------------------------------------
plot 'TransClustStatsProm.out'    using 1:2 every 50 title '$ {\phi} =10^{-3}$'  ls 1
#plot 'NucleationGrowthFactorProm.out' using 1:2:3 every 50  title '${\phi}=10^{-3}$' with yerrorbars ls 9
#replot 'TransClustStats_s0_2.out'    using 1:6 t '$ {\beta} =0.20$' with lp ls 2
#replot 'TransClustStats_s0_25.out'    using 1:6 t '$ {\lambda} =0.25$' with lp ls 3
#replot 'TransClustStats_s0_3.out'    using 1:6 t '$s =0.30$' with lp ls 4
#replot 'TransClustStats_s0_4.out'    using 1:6 t '$s=0.40$' with lp ls 5

#-----------------------------------------------------------------------------------------
# SET OUTPUTS
#------------------------------------------------------------------------------------------
set terminal epslatex color colourtext standalone
set output 'TMPplotfile.tex'; replot                  # Temporal file to convert .tex ==> .pdf/.png
#set output 'filename.tex'; replot  # To produce a specific plot

#set terminal png
#set output "filename.png"   # This is less used because we need produce high quality plots with epslatex
