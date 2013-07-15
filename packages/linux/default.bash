source "$PKG_COMMON"

version=\
(
    '3.9.7'
)

url=\
(
    "http://www.kernel.org/pub/linux/kernel/v3.0/linux-$version.tar.bz2"
)

md5=\
(
    '2de8f625249279a071005b57250e9b20'
)

maintainer=\
(
    'Ricardo Martins <rasm@fe.up.pt>'
)

requires=\
(
    'kmod/host'
    'u-boot/default'
)
