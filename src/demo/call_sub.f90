program call_sub
   implicit none

   real :: mat(10, 20)

   mat(:,:) = 0.0

   call print_matrix(10, 20, mat)

end program call_sub
