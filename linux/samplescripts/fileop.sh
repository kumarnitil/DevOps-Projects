#!/bin/bash
echo " Creating test files"
touch file{1..3}.txt
echo "This is file 1" > file1.txt
echo "This is file 2" > file2.txt
echo "This is file 3" > file3.txt

echo "Displaying file contents"
cat file1.txt file2.txt file3.txt

echo "Appending contents to files "
echo "Additonal line" >> file1.txt
echo "Another line" >> file2.txt

echo "Counting lines:"
wc -l *.txt

for file in *.txt; do
	mv "$file" "new_${file}"
done
