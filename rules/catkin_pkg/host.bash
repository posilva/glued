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
    "nose"
)
url=\
(

    "https://github.com/ros-infrastructure/${python_name}/archive/${version}.tar.gz"
)

md5=\
(
    "f63decc5a9ff5d60385d6ac31945a0f3"
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
