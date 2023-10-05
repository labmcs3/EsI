CC         = g++ 
CFLAGS     = --std=c++11 -g -Wall
CFLAGSROOT = `root-config --cflags`
LIBSROOT   = `root-config --glibs`

all: Main

Vector3.o: Vector3.cpp
	$(CC) $(CFLAGS) -c Vector3.cpp      $(CFLAGSROOT)
Main: Main.cpp Vector3.o 
	$(CC) $(CFLAGS) -o Main Main.cpp Vector3.o $(CFLAGSROOT) $(LIBSROOT)
clean:
	rm *.o
