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
    "multiprocessing"
)
url=\
(

    "https://pypi.python.org/packages/source/m/${python_name}/${python_name}-${version}.tar.gz"
)

md5=\
(
    "5cc484396c040102116ccc2355379c72"
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

