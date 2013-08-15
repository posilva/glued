version=\
(
    "3.1.0pre1"
)

url=\
(
    "http://rsync.samba.org/ftp/rsync/src-previews/rsync-$version.tar.gz"
)

md5=\
(
    "b1a64cf0c1d74371d9c24f071755246f"
)

maintainer=\
(
    "Ricardo Martins <rasm@fe.up.pt>"
)

requires=\
(
    'zlib/default'
)

configure()
{
    ./configure \
        --target="$cfg_target_canonical" \
        --host="$cfg_target_canonical" \
        --build="$cfg_host_canonical" \
        --prefix="$cfg_dir_rootfs/usr" \
        --disable-ipv6 \
        --disable-locale \
        --disable-debug \
        --disable-iconv \
        --disable-acl-support \
        --disable-xattr-support \
        --with-included-popt
}

build()
{
    $cmd_make
}

target_install()
{
    $cmd_target_strip rsync -o "$cfg_dir_rootfs/usr/bin/rsync"
}
