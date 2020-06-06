all: clear README.md

README.md:
	touch README.md
	echo "Modification date:" > README.md
	date -r README.md >> README.md
	echo "#Coursera peer-graded project" >> README.md
	echo "##Bash, make, Git and GitHub" >> README.md

clear:
	rm ./README.md
