all:
	ghc -O2 --make src/rot13.hs
clean:
	rm -fr src/*.hi
	rm -fr src/*.o
	rm -fr src/rot13
