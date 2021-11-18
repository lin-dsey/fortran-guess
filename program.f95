PROGRAM NUMGUESS
 IMPLICIT NONE
 
 INTEGER                            :: GUESS, I, CLOCK, COUNT, N
 INTEGER, DIMENSION(:),ALLOCATABLE  :: SEED
 CHARACTER(LEN = *),PARAMETER       :: STR1 = 'Congratulations, you guessed corrently!'
 REAL                               :: R
 
 REAL,PARAMETER :: RANDMAX = 10	
 
! Random number generation:
 CALL RANDOM_SEED(SIZE = N)
 ALLOCATE(SEED(N))
 CALL SYSTEM_CLOCK(COUNT)
 SEED = COUNT
 CALL RANDOM_SEED(PUT = SEED)
 DEALLOCATE(SEED)
 
 CALL RANDOM_NUMBER(R)          !r between 0.0 and 1.0
 I = INT((RANDMAX - 1.0) * R + 1.0)    !i between 1 and rmax
 
! Greeting:
 WRITE(*,'(A)') 'Hello! Please guess a number between 1 and 10.'
 DO   
! Guess until answer is correct
    WRITE(*,*) ''
	WRITE(*,'(A)',ADVANCE = 'NO') 'Enter Guess: '
	READ(*,'(I5)') GUESS
	IF (GUESS == I) EXIT
	WRITE(*,*) 'Wrong, try again.'
 END DO
 
 WRITE(*,*) 'Congratulations, you guessed corrently!'

 WRITE(*,*) 'ʕ•ᴥ•ʔ'
 
END PROGRAM NUMGUESS
