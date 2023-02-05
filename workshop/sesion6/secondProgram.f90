! gfortran -o secondProgram secondProgram.f90
program sum
   implicit none
   real:: a, b,c

   a = 2.4
   b = 4.6
   c = a - b

   print*, a, b
   print*, c
end program
