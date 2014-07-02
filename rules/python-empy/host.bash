version=\
(
    "3.3.2"
)

url=\
(
    "http://www.alcyone.com/software/empy/empy-${version}.tar.gz"
)

md5=\
(
    "fbb34761cdf9acc4c65e298c9eced395"
)

requires=\
(
    'python_host/host'
)

host_install()
{
    cd ../empy-$version
    ${cfg_dir_toolchain}/bin/python setup.py install --prefix=${cfg_dir_toolchain_sysroot}
}


