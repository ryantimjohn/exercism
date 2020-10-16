MODULE bob
  IMPLICIT NONE
CONTAINS

  FUNCTION hey(statement)
    CHARACTER(100) :: hey
    CHARACTER(len=*), INTENT(in) :: statement
    CHARACTER(LEN(TRIM(statement))) :: trimmed
    CHARACTER(LEN(statement)) :: all_upper
    CHARACTER(26), PARAMETER :: cap = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    CHARACTER(26), PARAMETER :: low = 'abcdefghijklmnopqrstuvwxyz'
    INTEGER :: ic, i
    LOGICAL :: upper, question, letters
    upper = .FALSE.
    question = .FALSE.
    letters = .FALSE.

    trimmed = TRIM(statement)

    all_upper = trimmed
    DO i = 1, LEN(trimmed)
       ic = INDEX(low, trimmed(i:i))
       IF (ic > 0) all_upper(i:i) = cap(ic:ic)
    END DO
    
    IF (all_upper == trimmed) upper = .TRUE.
    IF (trimmed(LEN(trimmed):LEN(trimmed)) == "?") question = .TRUE.
    IF (SCAN(trimmed, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') > 0) letters = .TRUE.
    !logging files
    ! write(*, "(L1,L2,L3)") upper, question, letters
    ! print *, trimmed
    ! print *, all_upper
    ! print *, trimmed(LEN(trimmed):LEN(trimmed))

    IF (upper .AND. question .AND. letters) THEN
       hey = "Calm down, I know what I'm doing!"
    ELSE IF (upper .AND. letters) THEN
       hey = "Whoa, chill out!"
    ELSE IF (question) THEN
       hey = "Sure."
    ELSE IF (LEN(trimmed) == 0) THEN
       hey = "Fine. Be that way!"
    ELSE
       hey = "Whatever."
    END IF

    RETURN
  END FUNCTION hey

END MODULE bob
