version=\
(
    "0.5.88"
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
    'catkin_pkg/host'
    'python-multiprocessing/host'    
)

configure()
{
   export CMAKE_PREFIX_PATH=${cfg_dir_toolchain_sysroot}
   export CMAKE_INSTALL_PATH=${cfg_dir_toolchain_sysroot}
   export PYTHONPATH=$PYTHONPATH:${cfg_dir_toolchain_sysroot}/lib/python2.7/site-packages
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

