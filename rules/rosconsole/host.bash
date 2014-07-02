version=\
(
    '1.11.5'
)

url=\
(
    "https://github.com/ros/ros_comm/archive/${version}.tar.gz"
)

md5=\
(
    'cdfe0657eb5b4a20d792d6d09a8f4a3b'
)

maintainer=\
(
    'Pedro Marques da Silva <posilva@academiafa.edu.pt>'
)

configure()
{
    ./configure \
        --prefix="$cfg_dir_toolchain"
}

build()
{
    $cmd_make
}

host_install()
{
    $cmd_make install
}
