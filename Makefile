README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo >> README.md
	@date "+Date and Time at which make was run: %Y-%m-%d %H:%M:%S" >> README.md
	@echo >> README.md
	@lines_of_code=$$(wc -l < guessinggame.sh); \
		echo "Number of lines of code contained in guessinggame.sh: $$lines_of_code" >> README.md