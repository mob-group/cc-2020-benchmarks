PROGRAM MAKEP69XYZ
IMPLICIT NONE
CHARACTER(LEN=69) :: TYPE='BBBBBBBBBNNNLBLBLBLBNNNBBBBBBBBBNNNLBLBLBLBNNNBBBBBBBBBNNNLBLBLBLBLBL'
INTEGER J1
DOUBLE PRECISION X, Y, Z

WRITE(*,'(I2)') 69
WRITE(*,*) ' '
DO J1=1,56
   READ(*,*) X,Y,Z
   WRITE(*,'(A,2X,3F20.10)') TYPE(J1:J1),X,Y,Z
ENDDO

END PROGRAM MAKEP69XYZ