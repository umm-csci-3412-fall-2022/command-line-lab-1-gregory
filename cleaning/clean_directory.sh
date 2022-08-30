tmpfile=
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
    filename=${$1%.tgz}_clean
    tmpfile=(mktemp -d filename)
    echo $filename
}

extract_files() {
    echo "extracting files"
}

create_scratch_directory $1
extract_files
