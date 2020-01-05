#!/bin/bash
if [[ -e *.java ]] ; then
  echo 'Ada file Java, diganti namanya (Y/T)?'
  read pilihan
  if [$pilihan == y]; then
    echo 'Masukkan Nama Baru: '
    read namaBaru
  else
    echo 'gunakan nama eksisting'
  fi
else
  echo 'Tidak Ada file Java'
fi
pause