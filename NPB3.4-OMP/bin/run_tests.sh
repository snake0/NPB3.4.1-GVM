#!/bin/bash
array=(cg ep is sp ua bt dc ft lu mg)
for benchmark in ${array[@]} ; do
  ./single.sh "$benchmark" > "${benchmark}.txt"
done


