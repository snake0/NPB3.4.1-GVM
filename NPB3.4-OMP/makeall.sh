#!/bin/bash

array=(cg ep is sp ua bt dc ft lu mg)
sizes=(s w a b c d e f)
sizes2=(S W A B C D E F)

for size in ${sizes[@]} ; do 
   cp config/suite.def.${size} config/suite.def
   make suite -j$(nproc)
done

for benchmark in ${array[@]} ; do 
  for size in ${sizes2[@]} ; do 
    cp bin/${benchmark}.${size}.x bin/${benchmark}.${size}.t
    cp bin/${benchmark}.${size}.x bin/${benchmark}.${size}.y
  done
done




