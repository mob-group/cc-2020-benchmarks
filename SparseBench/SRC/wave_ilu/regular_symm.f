C----------------------------------------------------------------
C
C This file is part of the sparse benchmark suite.
C Copyright 2000
C Jack Dongarra, Victor Eijkhout, Henk van der Vorst
C
C version 0.9.7
C
C This file last generated:
C Tue Jan 23 13:30:09 EST 2001
C
C----------------------------------------------------------------
      subroutine seven_point_matvec(a,n1,n2,n3,x,y)
      implicit none
C Arguments
      integer n1,n2,n3
      real*8 a(n1,0:3,n2,n3),x(n1,n2,n3),y(n1,n2,n3)
C Externals
      external starttimer,stoptimer
      real*8 starttimer,stoptimer
C Local
      real*8 t
      integer i3,i2,i1

      t = starttimer()
      do i3=1,n3
         do i2=1,n2
            do i1=1,n1
               y(i1,i2,i3) = a(i1,0,i2,i3) * x(i1,i2,i3)
            end do
         end do
      end do
      do i3=1,n3
         if (i3.gt.1) then
            do i2=1,n2
               do i1=1,n1
                  y(i1,i2,i3) = y(i1,i2,i3)
     >                 +a(i1,3,i2,i3-1)*x(i1,i2,i3-1)
               end do
            end do
         end if
         do i2=1,n2
            if (i2.gt.1) then
               do i1=1,n1
                  y(i1,i2,i3) = y(i1,i2,i3)
     >                +a(i1,2,i2-1,i3)*x(i1,i2-1,i3)
               end do
            end if
            do i1=1,n1-1
               y(i1,i2,i3) = y(i1,i2,i3)+a(i1,1,i2,i3)*x(i1+1,i2,i3)
            end do
            do i1=1,n1-1
               y(i1+1,i2,i3) = y(i1+1,i2,i3)
     >             +a(i1,1,i2,i3)*x(i1,i2,i3)
            end do
            if (i2.lt.n2) then
               do i1=1,n1
                  y(i1,i2,i3) = y(i1,i2,i3)+a(i1,2,i2,i3)*x(i1,i2+1,i3)
               end do
            end if
         end do
         if (i3.lt.n3) then
            do i2=1,n2
               do i1=1,n1
                  y(i1,i2,i3) = y(i1,i2,i3)
     >                 + a(i1,3,i2,i3)*x(i1,i2,i3+1)
               end do
            end do
         end if
      end do
      t = stoptimer()-t
      call add_mult_flops( n2*n3*(n1+4*(n1-1)) + n3*2*(n2-1)*2*n1
     >     + 2*(n3-1)*n2*2*n1 )
      call add_mult_time(t)

      return
      end
C
      subroutine seven_point_jacobi(a,m,n1,n2,n3)
      implicit none
C Arguments
      integer n1,n2,n3
      real*8 a(n1,0:3,n2,n3),m(n1,n2,n3)
C Local
      integer i1,i2,i3

      do i3=1,n3
         do i2=1,n2
            do i1=1,n1
               m(i1,i2,i3) = 1.d0/a(i1,0,i2,i3)
            end do
         end do
      end do
      call add_fac_flops(n1*n2*n3)

      return
      end
C
      subroutine seven_point_ilufact(a,m,n1,n2,n3)
      implicit none
C Arguments
      integer n1,n2,n3
      real*8 a(n1,0:3,n2,n3),m(n1,n2,n3)
C Local
      integer i1,i2,i3

      do i3=1,n3
         do i2=1,n2
            do i1=1,n1
               m(i1,i2,i3) = 1.d0/a(i1,0,i2,i3)
            end do
         end do
      end do
      call add_fac_flops(n3*n2*n1)

      return
      end
C     
C     ILU Solve with seven-point central difference matrix
C     
      subroutine seven_point_ilusolve(a,m,x,y,tmp,n1,n2,n3)
      implicit none
C     Arguments
      integer n1,n2,n3
      real*8 a(n1,0:3,n2,n3),m(n1,n2,n3),x(n1,n2,n3),y(n1,n2,n3)
     >     ,tmp(n1,n2,n3)
C Externals
      external starttimer,stoptimer
      real*8 starttimer,stoptimer
C     Local
      integer i1,i2,i3
      real*8 t
      real*8 s
      integer p,front,rear

      t = starttimer()
C     symmetric case: (D+Ut)tmp=x
      do p=1,n1+n2+n3-2
         front = min(n1+n2-1,p)
         rear = max(1,p-min(n1,n2)+1)
         do i1=max(1,p-n1-n2+2),min(n1,p)
            do i2=max(1,rear-i1+1),min(n2,front-i1+1)
               i3 = p-i1-i2+2
               s = x(i1,i2,i3)
               if (i1.gt.1) s = s -
     >              a(i1-1,1,i2,i3)*tmp(i1-1,i2,i3)
               if (i2.gt.1) s = s -
     >              a(i1,2,i2-1,i3)*tmp(i1,i2-1,i3)
               if (i3.gt.1) s = s -
     >              a(i1,3,i2,i3-1)*tmp(i1,i2,i3-1)
               tmp(i1,i2,i3) = m(i1,i2,i3) * s
            end do
         end do
      end do
      call add_prec_flops( 1+3*(n1-1)
     >    +(n2-1)*3+5*(n1-1)
     >    +(n3-1)*(3+5*(n1-1)+(n2-1)*(5+7*(n1-1))) )

C     Backward solve (I+DinvU)y=tmp
      do p=n1+n2+n3-2,1,-1
         front = min(n1+n2-1,p)
         rear = max(1,p-min(n1,n2)+1)
         do i1=min(n1,p),max(1,p-n1-n2+2),-1
            do i2=min(n2,front-i1+1),max(1,rear-i1+1),-1
               i3 = p-i1-i2+2
               s = 0.d0
               if (i1.gt.1) s = s +
     >              a(i1,1,i2,i3)*y(i1+1,i2,i3)
               if (i2.gt.1) s = s +
     >              a(i1,2,i2,i3)*y(i1,i2+1,i3)
               if (i3.gt.1) s = s +
     >              a(i1,3,i2,i3)*y(i1,i2,i3+1)
               y(i1,i2,i3) = tmp(i1,i2,i3) - m(i1,i2,i3)*s
            end do
         end do
      end do
      call add_prec_flops(3*(n1-1)
     >     +(n2-1)*(3+(n1-1)*5)
     >     +(n3-1)*(3+(n1-1)*5+(n2-1)*(5+(n1-1)*7)) )

      t = stoptimer()-t
      call add_prec_time(t)

      return
      end
C
C Block jacobi solver, the outer n3 loop is parallel
C
      subroutine diagonal_bjacobi_solve(a,m,x,y,tmp,n1,n2,n3)
      implicit none
C     Arguments
      integer n1,n2,n3
      real*8 a(n1,0:3,n2,n3),
     >    m(n1,n2,n3),x(n1,n2,n3),y(n1,n2,n3)
     >     ,tmp(n1,n2,n3)
C Externals
      external starttimer,stoptimer
      real*8 starttimer,stoptimer
C     Local
      integer i1,i2,i3
      real*8 t
      real*8 s

      t = starttimer()
C     Forward solve (D+L)tmp=x
      call add_prec_flops( n3*(3+(n1-1)*5+(n2-1)*(5+(n1-1)*7)) )

C     Backward solve (I+DinvU)y=tmp
      call add_prec_flops( n3*(3+(n1-1)*5+(n2-1)*(5+(n1-1)*7)) )

      t = stoptimer()-t
      call add_prec_time(t)

      return
      end
C
C Block ILU
C
      subroutine line_ilufact(mat,prec,tmp1,tmp2, xside,yside,zside,hbw)
      implicit none
C Arguments
      integer xside,yside,zside,hbw
      real*8
     >     mat(xside,0:3,yside,zside),
     >     prec(xside,0:hbw,yside,zside),
     >     tmp1(xside,-hbw:hbw),tmp2(xside,-hbw:hbw)
C Local
      integer p,i,j,k

C copy the matrix into the preconditioner structure
      do k=1,zside
         do j=1,yside
            do p=0,1
               do i=1,xside
                  prec(i,p,j,k) = mat(i,p,j,k)
               end do
            end do
            do p=2,hbw
               do i=1,xside
                  prec(i,p,j,k) = 0.d0
               end do
            end do
         end do
      end do

C We do not factor, just use block jacobi/ssor
      do k=1,zside
         do j=1,yside
            do i=1,xside
               prec(i,0,j,k) = 1.d0/prec(i,0,j,k)
            end do
         end do
      end do

      return
      end
C
C Symmetrise a matrix by filling the lower half with the
C upper half
C
      subroutine symmetrise(a,n,hbw)
      implicit none
C Arguments
      integer n,hbw
      real*8 a(n,-hbw:hbw)
C Local
      integer i,p

      do p=1,hbw
         do i=1,n-p
            a(i+p,-p) = a(i,p)
         end do
      end do

      return
      end
C
C Banded matrix factor
C A=(D+L)Dinv(D+U) with L,Dinv,U stored
C where A has halfbandwidth p
C
      subroutine bandfactor(a,n,p)
      implicit none
C Arguments
      integer n,p
      real*8 a(n,-p:p)
C Local
      integer row,i,j
      real*8 piv

      do row=1,n
         piv = 1.d0/a(row,0)
         do i=1,min(p,n-row)
            do j=1,min(p,n-row)
               a(row+i,-i+j) = a(row+i,-i+j)-a(row+i,-i)*piv*a(row,j)
            end do
         end do
         a(row,0) = piv
      end do
      call add_fac_flops(n*p*p*3)

      return
      end
C
C Takahishi approximation of inverse
C Y = [Xinv](p) of already factored matrix X
C where X has halfbandwidth p
C
      subroutine takahishi(y,x,n,p)
      implicit none
C Arguments
      integer n,p
      real*8 x(n,-p:p),y(n,-p:p)
C Local
      integer row,col,pk,i
      real*8 sum

      y(n,0) = x(n,0)
      do row=n,2,-1
         do col=1,min(row-1,p)
c     M(i,i-k) = M(i,i-k+1:i-k+pk)*L(i-k+1:i-k+pk,i-k);
            pk = min(p,n-row+col)
            sum = 0.d0
            do i=1,pk
               sum = sum+y(row,-col+i)*x(row-col+i,-i)*x(row-col,0)
            end do
            y(row,-col) = -sum
         end do
         do col=1,min(row-1,p)
c     M(i-k,i) = U(i-k,i-k+1:i-k+pk)*M(i-k+1:i-k+pk,i);
            pk = min(p,n-row+col)
            sum = 0.d0
            do i=1,pk
               sum = sum+x(row-col,0)*x(row-col,i)*y(row-col+i,col-i)
            end do
            y(row-col,col) = -sum
         end do
c   M(i-1,i-1) = 1/D(i-1,i-1) + M(i-1,i:i-1+pk)*L(i:i-1+pk,i-1);
         pk = min(p,n-row+1)
         sum = 0.d0
         do i=1,pk
            sum = sum + y(row-1,i)*x(row-1+i,-i)*x(row-1,0)
         end do
         y(row-1,0) = x(row-1,0) - sum
      end do
      call add_fac_flops(n*(2*p*3*p+3*p+1))

      return
      end
C
      subroutine lineblock_ilusolve(a,m,x,y,tmp,n1,n2,n3,hbw)
      implicit none
C Arguments
      integer n1,n2,n3,hbw
      real*8 a(n1,0:3,n2,n3),m(n1,0:hbw,n2,n3),
     >     x(n1,n2,n3),y(n1,n2,n3),tmp(n1)
C Externals
      external starttimer,stoptimer
      real*8 starttimer,stoptimer
C Local
      real*8 t
      integer i1,i2,i3, flops

      t = starttimer()
      flops = 0
C Forward solve (D+L)y=x
      do i3=1,n3
         do i2=1,n2
            do i1=1,n1
               tmp(i1) = x(i1,i2,i3)
            end do
            if (i2.gt.1) then
               call vecview(a(1,2,i2-1,i3),'bac2',0,n1)
               do i1=1,n1
                  tmp(i1) = tmp(i1)-a(i1,2,i2-1,i3)*y(i1,i2-1,i3)
               end do
               flops = flops + 2*n1
            end if
            if (i3.gt.1) then
               do i1=1,n1
                  tmp(i1) = tmp(i1)-a(i1,3,i2,i3-1)*y(i1,i2,i3-1)
               end do
               flops = flops + 2*n1
            end if
            print *,'bandsolving i2,i3=',i2,i3
            call vecview(tmp,'rhs',0,n1)
            call bandview(m(1,0,i2,i3),n1,0,hbw)
            call bandsolve(y(1,i2,i3),m(1,0,i2,i3),tmp,n1,hbw,flops)
            call vecview(y(1,i2,i3),'sol',0,n1)
         end do
      end do
C Backward solve (I+DinvU)y=y
      do i3=n3,1,-1
         do i2=n2,1,-1
            do i1=1,n1
               tmp(i1) = 0.d0
            end do
            if (i2.lt.n2) then
               do i1=1,n1
                  tmp(i1) = tmp(i1)+a(i1,2,i2,i3)*y(i1,i2+1,i3)
               end do
               flops = flops + 2*n1
            end if
            if (i3.lt.n3) then
               do i1=1,n1
                  tmp(i1) = tmp(i1)+a(i1,3,i2,i3)*y(i1,i2,i3+1)
               end do
               flops = flops + 2*n1
            end if
            call bandsolve(tmp,m(1,0,i2,i3),tmp,n1,hbw,flops)
            do i1=1,n1
               y(i1,i2,i3) = y(i1,i2,i3) - tmp(i1)
            end do
            flops = flops + n1
         end do
      end do
      call add_prec_flops(flops)
      t = stoptimer()-t
      call add_prec_time(t)

      return
      end
C
C Banded system solve
C Ay=x where A has halfbandwidth p
C Don't time this one because the enclosing lineblock_ilu_solve
C already has the timer running
C
      subroutine bandsolve(y,a,x, n,p, flops)
      implicit none
C Arguments
      integer n,p, flops
      real*8 y(n),x(n),a(n,0:p)
C Local
      integer row,col
      real*8 sum

C Forward solve D+L
      do row=1,n
         sum = 0.d0
         print *,row
         do col=1,min(p,row-1)
            print *,col,'. a=',a(row-col,col),'; y=',y(row-col)
            sum = sum+a(row-col,col)*y(row-col)
         end do
         y(row) = a(row,0) * (x(row)-sum)
         print *,'diag=',a(row,0),'; rhs=',x(row)-sum,'; y=',y(row)
         flops = flops + 2*min(p,row-1)+2
      end do
C Backward solve I+DinvU
      do row=n-1,1,-1
         sum = 0.d0
         do col=1,min(p,n-row)
            sum = sum+a(row,col)*y(row+col)
         end do
         y(row) = y(row) - a(row,0)*sum
         flops = flops + 2*min(p,n-row)+2
      end do

      return
      end
C
      subroutine bandview(mat,n,q,p)
      implicit none
C Arguments
      integer n,p,q
      real*8 mat(n,-q:p)
C Local
      integer row,col

      do row=1,n
         print *,row,':',(mat(row,col),col=-q,p)
      end do

      return
      end
