mkdir -p build.dir/uSockets build.dir/uWebSockets
BUILD_DIR=$(pwd)/build.dir

cd uWebSockets
make

mv build $BUILD_DIR/uWebSockets
mv Broadcast* $BUILD_DIR/uWebSockets
mv Crc32 $BUILD_DIR/uWebSockets
mv EchoServer $BUILD_DIR/uWebSockets
mv HelloWorld* $BUILD_DIR/uWebSockets
mv Http3Server $BUILD_DIR/uWebSockets
mv ServerName $BUILD_DIR/uWebSockets
mv UpgradeSync $BUILD_DIR/uWebSockets

cd uSockets
mv *.o $BUILD_DIR/uSockets
mv *.a $BUILD_DIR/uSockets
