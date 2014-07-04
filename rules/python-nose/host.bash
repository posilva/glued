version=\
(
    "1.3.3"
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

    "https://pypi.python.org/packages/source/n/${python_name}/${python_name}-${version}.tar.gz"
)

md5=\
(
    "42776061bf5206670cb819176dc78654"
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

