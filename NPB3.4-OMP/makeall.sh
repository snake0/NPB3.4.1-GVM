#!/bin/bash
run_test(){
  benchmark=$1
  ./"${benchmark}".A.xa
  ./"${benchmark}".A.xb
  ./"${benchmark}".A.xc
  ./"${benchmark}".A.y
  ./"${benchmark}".A.z
  ./"${benchmark}".A.t
}

array=(cg ep is sp ua bt dc ft lu mg)
for benchmark in ${array[@]} ; do 
  make "${benchmark}" CLASS=A
  cd bin/
  cp "${benchmark}".A.x "${benchmark}".A.xa
  cp "${benchmark}".A.x "${benchmark}".A.xb
  cp "${benchmark}".A.x "${benchmark}".A.xc
  cp "${benchmark}".A.x "${benchmark}".A.y
  cp "${benchmark}".A.x "${benchmark}".A.z
  cp "${benchmark}".A.x "${benchmark}".A.t
  rm "${benchmark}".A.x
  # run_test "${benchmark}" > "${benchmark}".txt
  cd ..
done
