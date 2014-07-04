version=\
(
    "0.2.7"
)
url=\
(

    "https://github.com/ros/console_bridge/archive/${version}.tar.gz"
)

md5=\
(
    "061ae26707cc56db1bb80421abf6c3f0"
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
