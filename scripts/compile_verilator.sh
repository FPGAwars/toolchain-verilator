# -- Compile Verilator script

VER=3.922
VERILATOR=verilator-$VER
TAR_VERILATOR=verilator-$VER.tgz
REL_VERILATOR=https://www.veripool.org/ftp/$TAR_VERILATOR
# -- Setup
. $WORK_DIR/scripts/build_setup.sh

cd $UPSTREAM_DIR

# -- Check and download the release
test -e $TAR_VERILATOR || wget $REL_VERILATOR

# -- Unpack the release
tar zxf $TAR_VERILATOR

# -- Copy the upstream sources into the build directory
rsync -a $VERILATOR $BUILD_DIR --exclude .git

cd $BUILD_DIR/$VERILATOR

if [ $ARCH != "darwin" ]; then
  export CC=$HOST-gcc
  export CXX=$HOST-g++
fi

if [ ${ARCH:0:7} == "windows" ]; then
  cp $WORK_DIR/build-data/flex/FlexLexer.h $BUILD_DIR/$VERILATOR/src/.
fi

# -- Prepare for building
./configure --build=$BUILD --host=$HOST CFLAGS="$CONFIG_CFLAGS" CXXFLAGS="$CONFIG_CFLAGS" LDFLAGS="$CONFIG_LDFLAGS" $CONFIG_FLAGS

# -- Compile it
make -j$J

# -- Install the programs into the package folder
make install prefix=$PACKAGE_DIR/$NAME/

