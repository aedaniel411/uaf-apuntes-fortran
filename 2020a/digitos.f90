program digitos
   implicit none

   integer :: n 

   write (*,*) "Número:"
   read (*,*) n

   write (*,*) "N:", n, " tiene ", numdigit(n), "digitos"
stop
contains
   integer function numdigit(x)
      integer :: x
      integer :: c, i
      
      i = 0
      c = x
      do while (c /= 0)
         c = c / 10
         i = i + 1
      end do
      numdigit = i

   end function

end program
