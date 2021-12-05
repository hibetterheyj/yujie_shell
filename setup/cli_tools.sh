sudo apt update

# Exit immediately if a command exits with a non-zero exit status.
# set -e
# Print commands and their arguments as they are executed.
set -x

source ./scriptutils.sh

# git
check_install git

# unzip
check_install unzip

# tldr
check_install tldr

# tmux
check_install tmux

# htop
check_install htop

# ffmpeg
check_install ffmpeg
echo "Video Generation Test from https://www.bogotobogo.com/FFMpeg/ffmpeg_video_test_patterns_src.php"
echo "ffmpeg -f lavfi -i testsrc=duration=5.3:size=qcif:rate=10 testsrc2.mp4"

# vim
# sudo apt install vim -y
