!   CONNECT module is an implementation of a connection algorithm for finding rearrangement pathways.
!   Copyright (C) 2003-2006 Semen A. Trygubenko and David J. Wales
!   This file is part of CONNECT module. CONNECT module is part of OPTIM.
!
!   OPTIM is free software; you can redistribute it and/or modify
!   it under the terms of the GNU General Public License as published by
!   the Free Software Foundation; either version 2 of the License, or
!   (at your option) any later version.
!
!   OPTIM is distributed in the hope that it will be useful,
!   but WITHOUT ANY WARRANTY; without even the implied warranty of
!   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
!   GNU General Public License for more details.
!
!   You should have received a copy of the GNU General Public License
!   along with this program; if not, write to the Free Software
!   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
!
MODULE KEYDECIDE
     IMPLICIT NONE 
     SAVE
     INTEGER :: COSTFUNCTIONPOWER = 1
     DOUBLE PRECISION :: INTERPDIFF
     DOUBLE PRECISION :: DIJKSTRADMAX=0.0D0
     LOGICAL :: EXPCOSTFUNCTION = .FALSE.
     LOGICAL :: INDEXCOSTFUNCTION = .FALSE.
     LOGICAL :: INTERPCOSTFUNCTION = .FALSE.

     CONTAINS

     SUBROUTINE KEYDECIDEPRINT
          USE CHARUTILS
          USE KEY, ONLY : INTCONSTRAINTT, INTLJT
          IMPLICIT NONE

          IF (INDEXCOSTFUNCTION) THEN
               WRITE(*,'(a)') ' KeyDecide> Cost function in Dijkstra algorithm is based on the position of minima in list'
          ELSEIF (EXPCOSTFUNCTION) THEN
               WRITE(*,'(a)') ' KeyDecide> Cost function in Dijkstra algorithm is Exp[D]'
          ELSEIF (INTERPCOSTFUNCTION) THEN
             IF (INTCONSTRAINTT) THEN
                WRITE(*,'(A,I6)') ' KeyDecide> Cost function in Dijkstra algorithm from interp function and dist, power=', &
  &                                COSTFUNCTIONPOWER
             ELSEIF (INTLJT) THEN
                WRITE(*,'(a,F15.5)') ' KeyDecide> Cost function in Dijkstra algorithm from interpLJ function and dist'
             ELSE
                WRITE(*,'(a,F15.5)') ' KeyDecide> Cost function in Dijkstra algorithm from maximum energy on interpolation, dist=',&
   &                                 INTERPDIFF  
             ENDIF
          ELSE
               INTSTR=WI(COSTFUNCTIONPOWER)
               WRITE(*,'(a)') ' KeyDecide> Cost function in Dijkstra algorithm is D^'//trim(IntStr)
          ENDIF
     END SUBROUTINE KEYDECIDEPRINT
END MODULE KEYDECIDE
