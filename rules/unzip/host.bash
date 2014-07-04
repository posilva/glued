version=\
(
    "6.0"
)

url=\
(
    "http://switch.dl.sourceforge.net/project/infozip/UnZip%206.x%20%28latest%29/UnZip%206.0/unzip60.tar.gz"
)

md5=\
(
    "62b490407489521db863b523a7f86375"
)

maintainer=\
(
    "Ricardo Martins <rasm@fe.up.pt>"
)

build()
{
    cd ../unzip60 &&
    $cmd_make -f unix/Makefile generic
}

host_install()
{
    cd ../unzip60 &&
    $cmd_make prefix="$cfg_dir_toolchain" -f unix/Makefile install
}
