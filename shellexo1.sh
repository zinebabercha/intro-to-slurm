if [ ! -d "my_files" ]; then
    mkdir my_files
for i in {1..5}; do
    echo "This is file $i." > my_files/file$i.txt
doneX