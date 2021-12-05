# borrow from https://github.com/davidoort/setup/blob/master/ubuntu/utils/scriptutils.sh
# Asks a yes/no question to a user.
# Returns success (0) if the user confirms and error (1) if the user cancels.
# If the script is run non-interactively success (0) is returned.
askConfirmation() {
	set +x
	sh -c "tty -s" || return 0
	echo -e "$1 [y/n]"
	read -r yesnoanswer
	set -x
	[[ $yesnoanswer == 'y' ]]
}

isInstalled() {
	dpkg-query -W -f='${Status}' $1 2>/dev/null | grep -q -c "ok installed"
}
dpkg-query -W unzip | grep -q -c "ok installed"

tmp() {
	export PREV_DIR=$(pwd)
	tempdir=$(mktemp -d -t ci-XXXXXXXXXX)
	cd $tempdir
}

tmpExit() {
	olddir=$(pwd) && cd .. && sudo rm -rf "$olddir"
	cd $PREV_DIR
	unset PREV_DIR
}
