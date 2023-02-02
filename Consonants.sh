Consonants=0
while read -r line; do
  Consonants=$((Consonants + $(echo $line | grep -o '[^aeiouAEIOU\s]' | wc -l)))
done < "$1"

# Print the result
echo "Number of consonants in $1: $Consonants"