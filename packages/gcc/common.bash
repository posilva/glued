version=\
(
    '4.8.1'
)

url=\
(
    "http://mirrors.kernel.org/gnu/gcc/gcc-$version/gcc-$version.tar.bz2"
)

md5=\
(
    '3b2386c114cd74185aa3754b58a79304'
)

build_dir=$PKG_VAR

post_unpack()
{
    patches=$(ls "$cfg_package_spec_dir/patches-${version}/"*.patch)
    if [ -n "$patches" ]; then
        cd "../gcc-$version" &&  cat $patches | patch -p1
    fi
}
