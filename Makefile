.PHONY=all tutch clean

all: tutch

tutch:
	mlton src/tutch.mlb

clean:
	rm src/tutch
