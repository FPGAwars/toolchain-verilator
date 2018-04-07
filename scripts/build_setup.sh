# Build setup script

if [ $ARCH == "linux_x86_64" ]; then
  HOST="x86_64-linux-gnu"
  MAKE_CFLAGS="-O2"
  MAKE_CXXFLAGS="-O2"
  MAKE_LDFLAGS="-static"
fi

if [ $ARCH == "linux_i686" ]; then
  HOST="x86_64-linux-gnu"
  CONFIG_HOST="-m32"
  MAKE_CFLAGS="-O2"
  MAKE_CXXFLAGS="-O2"
  MAKE_LDFLAGS="-m32 -static"
fi

if [ $ARCH == "linux_armv7l" ]; then
  HOST="arm-linux-gnueabihf"
  MAKE_CFLAGS="-O2"
  MAKE_CXXFLAGS="-O2"
  MAKE_LDFLAGS="-static"
fi

if [ $ARCH == "linux_aarch64" ]; then
  HOST="aarch64-linux-gnu"
  MAKE_CFLAGS="-O2"
  MAKE_CXXFLAGS="-O2"
  MAKE_LDFLAGS="-static"
fi

if [ $ARCH == "windows_x86" ]; then
  EXE=".exe"
  HOST="i686-w64-mingw32"
  CONFIG_CFLAGS="-O2"
  CONFIG_CXXFLAGS="-O2"
  CONFIG_LDFLAGS="-static -static-libstdc++"
fi

if [ $ARCH == "windows_amd64" ]; then
  EXE=".exe"
  HOST="x86_64-w64-mingw32"
  CONFIG_CFLAGS="-O2"
  CONFIG_CXXFLAGS="-O2"
  CONFIG_LDFLAGS="-static -static-libstdc++"
fi

if [ $ARCH == "darwin" ]; then
  J=$(($(sysctl -n hw.ncpu)-1))
else
  J=$(($(nproc)-1))
  BUILD="x86_64-unknown-linux-gnu"
fi
