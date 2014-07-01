version=\
(
    "5.3"
)

url=\
(
    "https://pypi.python.org/packages/source/s/setuptools/setuptools-${version}.tar.gz"
)

md5=\
(
    "f4e0aa872b3e64de38c5acb478c9452b"
)

requires=\
(
    'python_host/host'
)

configure()
{
    echo "configure python-setuptools"
}

build()
{

    echo `pwd`
    echo "Building python-setuptools"    
}

host_install()
{
    cd ../setuptools-$version
    export PYTHONPATH=$PYTHONPATH:$cfg_dir_toolchain_sysroot/lib/python2.7/site-packages/
    ${cfg_dir_toolchain}/bin/python setup.py install --prefix=${cfg_dir_toolchain_sysroot}
}

target_install()
{
    cd ../setuptools-$version
    export PYTHONPATH=$PYTHONPATH:$cfg_dir_rootfs/lib/python2.7/site-packages/
    ${cfg_dir_toolchain}/bin/python setup.py install --prefix=${cfg_dir_rootfs}
    #echo "Target Install setuptools"
}

