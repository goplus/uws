cd build.dir
SRC=../src
UWSDIR=../uWebSockets
FLAGS="-march=native -O3 -Wpedantic -Wall -Wextra -Wsign-conversion -Wconversion -std=c++20 -I$UWSDIR/src -I$UWSDIR/uSockets/src -flto uSockets/*.o -lz"

echo "==> g++ $FLAGS $SRC/HelloWorld.cpp -o HelloWorld"
g++ $FLAGS $SRC/HelloWorld.cpp -o HelloWorld

echo "==> g++ $FLAGS $SRC/Client.cpp -o Client"
g++ $FLAGS $SRC/Client.cpp -o Client
