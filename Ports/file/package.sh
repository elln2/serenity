#!/usr/bin/env -S bash ../.port_include.sh
port=file
version=5.38
workdir="${port}-${version}"
files="ftp://ftp.astron.com/pub/file/file-${version}.tar.gz file-${version}.tar.gz
ftp://ftp.astron.com/pub/file/file-${version}.tar.gz.asc ${port}-${version}.tar.gz.asc"
auth_type=sig
auth_import_key="BE04995BA8F90ED0C0C176C471112AB16CB33B3A"
auth_opts=("--keyserver" "hkp://keys.gnupg.net" "${port}-${version}.tar.gz.asc" "${port}-${version}.tar.gz")
useconfigure=true
