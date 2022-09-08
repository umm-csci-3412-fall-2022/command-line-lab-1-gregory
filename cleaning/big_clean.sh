
#############################
# 
#
#
# Creates a directory named
# <input directory>_clean
# 
#
#
#############################
create_scratch_directory() {
    scriptloc="$(pwd)"
    name=$1
    tmpfile=$(mktemp -d)
    uncompressed=$(tar -xzvf $name -C $tmpfile)
    cd $tmpfile
}

find_and_delete_files() {
    delfiles=$(grep -lr "DELETE ME" *)
    for f in ${delfiles}; do
	rm "$f"
    done
}

recompress_to_tgz(){
    tar -czvf cleaned_$name little_dir
    mv cleaned_$name $scriptloc
}

create_scratch_directory "$1"
find_and_delete_files
recompress_to_tgz "$1"
