version=\
(
    "0.2.2"
)
python_version=\
(
    "2.7"
)
python_name=\
(
    "catkin_pkg"
)
url=\
(
    "https://pypi.python.org/packages/source/c/$python_name/$python_name-${version}.tar.gz"
)

md5=\
(
    "7e6d3cb576d0841985952597ae2b9b70"
)

requires=\
(
    'python_host/host'
    'python-setuptools/host'
)

configure()
{
    echo "configure $python_name"
}

build()
{

    echo "configure $python_name"


}

host_install()
{
    cd ../$python_name-$version
    export PYTHONPATH=$PYTHONPATH:$cfg_dir_toolchain_sysroot/lib/python${python_version}/site-packages/

    ${cfg_dir_toolchain}/bin/python setup.py install --prefix=${cfg_dir_toolchain_sysroot}
}

target_install()
{
    cd ../$python_name-$version
    export PYTHONPATH=$PYTHONPATH:$cfg_dir_rootfs/lib/python${python_version}/site-packages/

    ${cfg_dir_toolchain}/bin/python setup.py install --prefix=${cfg_dir_rootfs}
}

