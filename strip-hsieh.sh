#!/bin/bash -ex

ver=$1

tdir=`mktemp -d tmpXXXXXX`
pushd $tdir

tar -xzf ../libmemcached-$ver.tar.gz

pushd libmemcached-$ver
 rm libmemcached/hsieh_hash.c
popd

rm -f ../libmemcached-$ver-exhsieh.tar.gz
tar -czf ../libmemcached-$ver-exhsieh.tar.gz libmemcached-$ver

popd
rm -rf $tdir