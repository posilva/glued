version=\
(
    "0.5.88"
)
python_version=\
(
    "2.7"
)
python_name=\
(
    "catkin"
)
url=\
(
    "https://github.com/ros/catkin/archive/${version}.tar.gz"
)

md5=\
(
    "472ff1f0e04f456af65fa16060fc75c6"
)

requires=\
(
    'python-catkin-pkg/host'
    'python-multiprocessing/host'    
)

host_install()
{
    cd ../$python_name-$version
    export PYTHONPATH=$PYTHONPATH:$cfg_dir_toolchain_sysroot/lib/python${python_version}/site-packages/
    ${cfg_dir_toolchain}/bin/python setup.py install --prefix=${cfg_dir_toolchain_sysroot}
}

