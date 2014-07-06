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
   'zlib/host'
   'python_host/host'
)

host_install()
{
    cd ../setuptools-$version
    export PYTHONPATH=$PYTHONPATH:$cfg_dir_toolchain_sysroot/lib/python2.7/site-packages/

    ${cfg_dir_toolchain}/bin/python setup.py install --prefix=${cfg_dir_toolchain_sysroot}
}



