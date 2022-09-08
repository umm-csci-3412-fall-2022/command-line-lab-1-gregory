
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
    name=$1
    tmpfile=$(mktemp -d)
    tar -xzvf "$name" -C "$tmpfile"
    cd "${tmpfile}"
}

find_and_delete_files() {
    delfiles=$(grep -lr "DELETE ME" *)
    for f in ${delfiles}; do
	rm "$f"
    done
}

recompress_to_tgz() {
    tar -cvzf cleaned_"${name}" "$(pwd)"
}

create_scratch_directory "$1"
find_and_delete_files
recompress_to_tgz
