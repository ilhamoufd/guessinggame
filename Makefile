# Makefile pour générer le README.md

all: README.md

README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "Date et heure d'exécution : $(shell date)" >> README.md
	@echo "Nombre de lignes de code dans guessinggame.sh : $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "Félicitations ! Le fichier README.md a été généré." >> README.md
