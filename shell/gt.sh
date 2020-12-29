working_dir="$1"
if [[ ! "$working_dir" =~ ^/.* ]]; then 
	# Path does not start with /, concat with PWD
	working_dir="$PWD/$working_dir"
fi

# Normalize the path using realpath
working_dir=$(realpath "$working_dir")

cmd="gnome-terminal"
if [ -d "$working_dir" ]; then
	# Folder found
	echo "Open gnome-terminal at '$working_dir'."
	$cmd --working-directory="$working_dir" &> /dev/null
else
	echo "Directory '$working_dir' does not exist."
fi
