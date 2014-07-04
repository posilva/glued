version=\
(
    "1.0.29"
)
python_version=\
(
    "2.7"
)
python_name=\
(
    "rospkg"
)
url=\
(

    "https://pypi.python.org/packages/source/r/${python_name}/${python_name}-${version}.tar.gz"
)

md5=\
(
    "26cfd8a4911af56627802ba327d44a7f"
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

