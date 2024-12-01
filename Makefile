
all: README.md

README.md: guessinggame.sh
	@echo "# GuessingGame" > README.md
	@echo "Date et heure d'exécution : $(shell date)" >> README.md
	@echo "Félicitations ! Le fichier README.md a été crée." >> README.md
