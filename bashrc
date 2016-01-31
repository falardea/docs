# Thanks to: https://wiki.archlinux.org/index.php/Color_Bash_Prompt
# for the color codes and instructions on how to tweak the prompt
# Reset
Color_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Underline
UBlack='\e[4;30m'       # Black
URed='\e[4;31m'         # Red
UGreen='\e[4;32m'       # Green
UYellow='\e[4;33m'      # Yellow
UBlue='\e[4;34m'        # Blue
UPurple='\e[4;35m'      # Purple
UCyan='\e[4;36m'        # Cyan
UWhite='\e[4;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

# High Intensity
IBlack='\e[0;90m'       # Black
IRed='\e[0;91m'         # Red
IGreen='\e[0;92m'       # Green
IYellow='\e[0;93m'      # Yellow
IBlue='\e[0;94m'        # Blue
IPurple='\e[0;95m'      # Purple
ICyan='\e[0;96m'        # Cyan
IWhite='\e[0;97m'       # White

# Bold High Intensity
BIBlack='\e[1;90m'      # Black
BIRed='\e[1;91m'        # Red
BIGreen='\e[1;92m'      # Green
BIYellow='\e[1;93m'     # Yellow
BIBlue='\e[1;94m'       # Blue
BIPurple='\e[1;95m'     # Purple
BICyan='\e[1;96m'       # Cyan
BIWhite='\e[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\e[0;100m'   # Black
On_IRed='\e[0;101m'     # Red
On_IGreen='\e[0;102m'   # Green
On_IYellow='\e[0;103m'  # Yellow
On_IBlue='\e[0;104m'    # Blue
On_IPurple='\e[0;105m'  # Purple
On_ICyan='\e[0;106m'    # Cyan
On_IWhite='\e[0;107m'   # White

# And the following (with my own tweaks) from 
# http://unix.stackexchange.com/questions/55423
#         /how-to-change-cursor-shape-color-and-blinkrate-of-linux-console
# set the default text color. this only works in tty
# (eg $TERM == "linux"), not pts (eg $TERM == "xterm")
# setterm -background black -foreground green -store

# http://linuxgazette.net/137/anonymous.html
# hardware cursor (blinking)
# default=0
# invisible=1
# underscore=2
# lower_third=3
# lower_half=4
# two_thirds=5
# full_block_blinking=6
# full_block=16
curmod=6

# Background color codes
# black=0 ~(0-15 and 128-infinity)
# blue=16 ~(16-31)
# green=32 ~(32-47)
# cyan=48 ~(48-63)
# red=64 ~(64-79)
# magenta=80 ~(80-95)
# yellow=96 ~(96-111)
# white=112 ~(112-127)
curbg=0

# Foreground color codes
# default=0
# cyan=1
# black=2
# grey=3
# lightyellow=4
# white=5
# lightred=6
# magenta=7
# green=8
# darkgreen=9
# darkblue=10
# purple=11
# yellow=12
# white=13
# red=14
# pink=15
curfg=12

# the autho above had this reference in their file... carried through
# but again, with my own tweaks
# http://www.bashguru.com/2010/01/shell-colors-colorizing-shell-scripts.html
# Prompt foreground color
# black=30 90
# red=31 91
# green=32 92
# yellow=33 93
# blue=34 94
# magenta=35 95
# cyan=36 96
# white=37 97
fg1=95
fg2=91
fg3=96
fg4=92

# Prompt background color
# black=40 100
# red=41 101
# green=42 102
# yellow=43 103
# blue=44 104
# magenta=45 105
# cyan=46 106
# white=47 107
bg1=40

# Prompt modifiers
# normal=0
# bold=1
# underlined=4 # doesn't seem to work in tty
# blinking=5 # doesn't seem to work in tty
# reverse=7
mod1=0
mod2=1

# And, self explanatory
rst=0

# One must mind the type of quote we're using
curs="\e[?${curmod};${curfg};${curbg};c"
#echo $curs
#blk1="\e[${mod1};${fg1};${bg1}m" # except bg1 seems to leave it sticky
blk1="\e[${mod1};${fg1}m" # purple high intensity normal
blk2="\e[${mod2};${fg2}m" # red bold
blk3="\e[${mod1};${fg3}m" # cyan high intensity normal
blk4="\e[${mod1};${fg4}m" # green high intensity normal

# The \[...\] encloses a non-printing character sequence.  If you don't
# use them, the shell will calculate the length of your prompt incorrectly
# and it will end up wrapping the current line onto itself if you exceed
# the shell width.
PS1="\[${blk1}\][\u@\H]\[${blk2}\]:\[${blk3}\]\w\[${blk2}\]>\[${blk4}\]\[${curs}\]"
#echo $PS1

# Alternately we could use this prompt.
#PS1="\[$IPurple\][\u@\H]\[$BIRed\]:\[$ICyan\]\w\[$BIRed\]>\[$IGreen\]\[${curs}\]"
#echo $PS1

# A few personal bash aliases
alias lsa="ls -Bphal"
alias cd..="cd .."
alias grep="grep -Hn"

# GitHub personal access token 'DefaultToken'
#d4a9a311cb85f3aa6e93daff69bd20f8bc9a7220
#PATH="$PATH"

