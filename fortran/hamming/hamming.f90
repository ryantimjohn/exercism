MODULE hamming
  IMPLICIT NONE
CONTAINS

  FUNCTION compute(strand1, strand2, distance)
    CHARACTER(*) :: strand1, strand2
    INTEGER :: distance, i
    LOGICAL :: compute

    distance = 0
    compute = .FALSE.

    IF ( LEN(strand1) /= LEN(strand2) ) THEN
       RETURN
    END IF
    DO i = 1, LEN(strand1), 1
       IF ( strand1(i:i) /= strand2(i:i) ) THEN
          distance = distance + 1
       END IF
    END DO
    compute = .TRUE.
    RETURN
  END FUNCTION compute

END MODULE hamming
