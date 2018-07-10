all: sum_test

sum_test: main.o sum.o
	g++ -o sum_test main.o sum.o

sum.o:
	g++ -c -o sum.o sum.cpp

main.o:
	g++ -c -o main.o main.cpp

clean:
	rm -f sum_test
	rm -f *.o
