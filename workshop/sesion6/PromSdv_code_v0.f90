! gfortran -o PromSdv_code_v0 PromSdv_code_v0.f90
program promedio
   implicit none
   integer:: i, N
   real:: S, A, PROM, sdv
   real, dimension(:), allocatable :: X

   print*, 'ingrese la cantidad de datos N'
   read(*,*) N

   allocate(X(N))

   do i=1,N
      print*, 'ingrese elemento', i, 'de', N
      read(*,*) X(i)
   enddo

   S=0.0

   do i=1, N
      S = S + X(i)
   enddo

   !calculamos promedio
   PROM = S/float(N)

   A =0.0
   sdv = 0.0

   do i=1, N
      A = (X(i) - PROM)**2
      sdv = sdv + A
   enddo

   sdv = sqrt(sdv/float(N-1))

   print*, 'Los resultados son los siguientes'
   print*, 'Promedio =',PROM
   print*, 'Desviacion Estandar =',sdv
   print*, 'Terminamos exitosamente'
end program promedio
