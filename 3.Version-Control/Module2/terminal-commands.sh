# output appears
ls -l unknown-dir > error.txt
# to send it to file (redirect 2 for errors)
ls -l unknown-dir 2> error.txt

# add text to file from keyboard
cat > file.txt
# show text from file
cat < file.txt


# stdin = 0
# stdout = 1
# stderr = 2

# 2> send error

# 2>&1 combine error and stdout

# input stream uses < while output uses >

# < input.txt > output.txt 2> error.txt

# word count
cat file.txt | wc -w
ls -ltra | wc -w

grep -w exact_match *