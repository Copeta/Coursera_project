all: clear README.md

README.md: linnum.sh
	touch README.md
	echo "# Coursera peer-graded project" > README.md
	echo " " >> README.md
	echo "## Bash, make, Git and GitHub" >> README.md
	echo " " >> README.md
	echo "Date and time at which make was run:" >> README.md
	date -r README.md >> README.md
	echo " " >> README.md
	/bin/bash linnum.sh >> README.md

clear:
	rm ./README.md
