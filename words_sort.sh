cat words_sort.txt | tr -s '[ .,]' '\n' | sort | uniq -c | sort -r| head

echo "start to sort -n"

cat words_sort.txt | tr -s '[ .,]' '\n' | sort | uniq -c | sort -r| head
