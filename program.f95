PROGRAM NUMBERGUESS
 IMPLICIT NONE
 
 INTEGER, DIMENSION(:),ALLOCATABLE  :: SEED
 INTEGER                            :: ANSWER, I, N, CLOCK, COUNT
 REAL,PARAMETER                     :: RANDOM_MAX = 10	
 REAL                               :: R 
 
! Random number generation:
 CALL RANDOM_SEED(SIZE = N)
 ALLOCATE(SEED(N))
 CALL SYSTEM_CLOCK(COUNT)
 SEED = COUNT
 CALL RANDOM_SEED(PUT = SEED)
 DEALLOCATE(SEED)
 
 CALL RANDOM_NUMBER(R)
 I = INT((RANDOM_MAX - 1.0) * R + 1.0)
 
  WRITE(*,'(A)') 'Hello! Please guess a number between 1 and 10.'
 DO   
! Guess until answer is correct
  WRITE(*,*) ''
	WRITE(*,'(A)',ADVANCE = 'NO') 'Guess: '
	READ(*,'(I5)') ANSWER
 IF (ANSWER == I) EXIT
	WRITE(*,*) 'Wrong, try again.'
 END DO
 
! Print winner message
  WRITE(*,*) 'Congratulations, you guessed correctly!'
  WRITE(*,*) ''
  WRITE(*,*) 'ʕ•ᴥ•ʔ'
 
END PROGRAM NUMBERGUESS