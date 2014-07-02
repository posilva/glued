version=\
(
    "2.6.2.1"
)
python_version=\
(
    "2.7"
)
python_name=\
(
    "subprocess.run"
)
url=\
(

    "https://pypi.python.org/packages/source/s/$python_name/${python_name}-${version}.tar.gz"
)

md5=\
(
    "bbb69faff2cdeeffedb2248ee9da2ac9"
)

requires=\
(
    'python_host/host'
    'python-setuptools/host'
)

host_install()
{
    cd ../$python_name-$version
    export PYTHONPATH=$PYTHONPATH:$cfg_dir_toolchain_sysroot/lib/python${python_version}/site-packages/

    ${cfg_dir_toolchain}/bin/python setup.py install --prefix=${cfg_dir_toolchain_sysroot}
}

