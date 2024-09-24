all: hw
	./hw

hw: hw.c++
	clang++ -stdlib=libc++ -std=c++23 hw.c++ -o hw

clean:
	rm -f *.o a.out hw

.PHONY: all clean

