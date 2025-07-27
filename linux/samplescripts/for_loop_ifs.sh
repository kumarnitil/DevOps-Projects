#!/bin/bash
file="states1"
IFS=$'\n'
for state in $(cat "$file")
do
	echo "did you visit $state ? "
done
# In Bash scripting, the IFS (Internal Field Separator) is a crucial special shell variable that defines how Bash recognizes word boundaries when splitting strings into fields
: ' https://www.google.com/search?udm=50&aep=11&q=uptime+-p&mstk=AUtExfBgjHpJ5frzOm9-hzvQ6v6g3-gk9yZ2hc7dsb77pHu40JZFaJqYjBr7YMnkQ1Kod5yerFFTO8mEkifhA2UIC8JHzGXigemBtCdvA2Q3MyAeRe59eCMi1W1LzkZCD7_S6OAS8kKB6RUGVe6bz9vz60JyUMnDufN7QUtWGydFyvZaw8ILS1yrywN-fylicv512nkHMfnKbyKnYLN0Q7bCkOg0y70FE1vAG5vunteNkQfXt0EuZMW2bsYKULihDw_X9ft5iC3x8UzlfeV5gIBo1qS1CTMWuIAjXkQ&csuir=1&mtid=D4l8aMqTKa6NnesPupCH0AU&atvm=1 
'
# By default IFS contains three whitespace characters - space, \n(newline) or \t(tab)
# IFS can be used to move over loops , parsing inputs with the read command, expanding variables that aren't closed in double quotes.
: 'The power of IFS lies in its ability to be changed according to specific requirements. You can assign any character or string to IFS to define new delimiters for splitting strings. This is particularly useful when working with data that uses different separators, such as: 
Comma Separated Values (CSV) files: You can set IFS to a comma (,) to parse each line into its respective fields.
Colon-delimited files: Similar to /etc/passwd, you could set IFS to a colon (:).
'
# You can use a custom IFS and the read statement to create an arrauy

# Example of the csv data.
data="apple,banana,mango"
# Store the original IFS to restore it later
OLDIFS=$IFS
echo "$OLDIFS"
IFS=','
read -ra fruits <<< "$data" # -r is for reading from raw data and -a is to assign it to an array
IFS=$OLDIFS
# Let us test and print all the elements in the fruits array
echo "The fruits array is ${fruits[@]}"
for fruit in "${fruits[@]}"; do
	echo "I love $fruit"
done

