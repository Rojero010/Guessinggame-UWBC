all: README.md
README.md: guessinggame.sh
	echo "GuessingGame Unix Project" > README.md
	echo " GuessingGame README.md" >> README.md
	echo "\n README.md file required" >> README.md
	echo -n "\n Date: \n" >> README.md
	date >> README.md
	echo -n "\n" >> README.md
	echo -n ".sh code line count:" >> README.md
	echo -n "\n" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
