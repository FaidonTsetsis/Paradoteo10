echo "Which markdown file do you want to convert into docx and html format?"

read file

echo "This is going to take a moment..."

sleep 1s

echo "Converting to .docx..."

pandoc -o $file.docx -f markdown -t docx $file.md

sleep 2s

echo "The file has been converted into .docx"

sleep 1s

echo "Converting to .html..."

pandoc -s $file.md --metadata title="$file" -o $file.html

sleep 2s

echo "The file has been converted into .html"

sleep 1s

echo "System done!"

