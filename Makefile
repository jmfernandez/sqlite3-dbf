all: sqlite3-dbf

sqlite3-dbf: sqlite3-dbf.o
	gcc -o $@ $<
	
sqlite3-dbf.o: sqlite3-dbf.c
	gcc -c -o $@ $<
	
clean:
	rm -f sqlite3-dbf sqlite3-dbf.o