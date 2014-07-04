version=\
(
    "0.4.12"
)
url=\
(

    "https://github.com/ros/message_runtime/archive/${version}.tar.gz"
)

md5=\
(
    "d32e58fd60f775e015b9572e397da891"
)

requires=\
(
    'python_host/host'
    'python-setuptools/host'
)

configure()
{
    cmake . -DCATKIN_ENABLE_TESTING=0 -DCMAKE_INSTALL_PREFIX=${cfg_dir_toolchain_sysroot}
}
build()
{

    $make_cmd
}


host_install()
{
    $make_install_cmd
}

