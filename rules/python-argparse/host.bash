version=\
(
    "1.2.1"
)

url=\
(
    "https://pypi.python.org/packages/source/a/argparse/argparse-${version}.tar.gz"
)

md5=\
(
    "2fbef8cb61e506c706957ab6e135840c"
)

requires=\
(
    'python_host/host'
    'python-setuptools/host'
)


host_install()
{
    cd ../argparse-$version
    export PYTHONPATH=$PYTHONPATH:$cfg_dir_toolchain_sysroot/lib/python2.7/site-packages/

    ${cfg_dir_toolchain}/bin/python setup.py install --prefix=${cfg_dir_toolchain_sysroot}
}
