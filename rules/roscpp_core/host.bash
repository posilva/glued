export CMAKE_PREFIX_PATH=${cfg_dir_toolchain_sysroot}
export CMAKE_INSTALL_PATH=${cfg_dir_toolchain_sysroot}
export PYTHONPATH=$PYTHONPATH:${cfg_dir_toolchain_sysroot}/lib/python2.7/site-packages

version=\
(
    "0.4.3"
)
url=\
(
    "https://github.com/ros/roscpp_core/archive/${version}.tar.gz"
)

md5=\
(
    "fed77222934a550f51e82761a9ce118a"
)

requires=\
(
    'catkin/host'
)

cmake_cmd=\
(
    "cmake . -DCATKIN_ENABLE_TESTING=0 -DCMAKE_INSTALL_PREFIX=${cfg_dir_toolchain_sysroot}"
)
configure()
{

   cd cpp_common &&
   $cmake_cmd &&   
   $make_cmd &&  
   make install &&
   cd ../roscpp_traits && 
   $cmake_cmd &&  
   $make_cmd &&  
   make install &&
   cd ../rostime/ && 
   $cmake_cmd &&  
   $make_cmd &&  
   make install &&
   cd ../roscpp_serialization/ && 
   $cmake_cmd && 
   make &&  
   make install &&
   cd ..

}


