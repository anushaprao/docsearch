vowels=0
while read -r line; do
  vowels=$((vowels + $(echo $line | grep -o '[aeiouAEIOU]' | wc -l)))
done < "$1"

# Print the result
echo "Number of vowels in $1: $vowels"