
MODULE matrix
  IMPLICIT NONE

CONTAINS

  FUNCTION row(m, m_dim, i) RESULT(r)
    INTEGER, INTENT(in) :: m_dim(2)
    CHARACTER(*), INTENT(in) :: m(m_dim(1))
    INTEGER, INTENT(in) :: i
    INTEGER, DIMENSION(m_dim(1)) :: r
    INTEGER :: A(m_dim(2), m_dim(1))
    INTEGER :: j, k, l, n, p, q
    CHARACTER(:), ALLOCATABLE :: line
    INTEGER, DIMENSION(m_dim(1) - 1) :: stops
    DO j = 1, m_dim(2)
       line = TRIM(m(j))
       q = 1
       DO p = 1, m_dim(1) - 1
          IF (p == 1) THEN
             stops(p) = INDEX(line(q:), ', ')
          ELSE
             stops(p) = INDEX(line(q:), ', ') + stops(p - 1)
          END IF
          q = stops(p) + 2
       END DO
       DO k = 1, m_dim(1)
          IF (k == 1) THEN
             l = stops(k)
             READ (line(1:l), *) A(j, k)
          ELSE IF (k == m_dim(1)) THEN
             l = stops(k - 1) + 2
             READ (line(l:), *) A(j, k)
          ELSE
             l = stops(k - 1) + 2
             n = stops(k)
             READ (line(l:n), *) A(j, k)
          END IF
       END DO
    END DO

    r(:) = A(i, :)
  END FUNCTION row

  FUNCTION column(m, m_dim, i) RESULT(c)
    INTEGER, INTENT(in) :: m_dim(2)
    CHARACTER(*), INTENT(in) :: m(m_dim(1))
    INTEGER, INTENT(in) :: i
    INTEGER, DIMENSION(m_dim(2)) :: c
    INTEGER :: A(m_dim(2), m_dim(1))
    INTEGER :: j, k, l, n, p, q, r
    CHARACTER(:), ALLOCATABLE :: line
    INTEGER, DIMENSION(m_dim(1) - 1) :: stops
    DO j = 1, m_dim(2)
       line = TRIM(m(j))
       q = 1
       DO p = 1, m_dim(1) - 1
          IF (p == 1) THEN
             stops(p) = INDEX(line(q:), ', ')
          ELSE
             stops(p) = INDEX(line(q:), ', ') + stops(p - 1)
          END IF
          q = stops(p) + 2
       END DO
       DO k = 1, m_dim(1)
          IF (k == 1) THEN
             l = stops(k)
             READ (line(1:l), *) A(j, k)
          ELSE IF (k == m_dim(1)) THEN
             l = stops(k - 1) + 2
             READ (line(l:), *) A(j, k)
          ELSE
             l = stops(k - 1) + 2
             n = stops(k)
             READ (line(l:n), *) A(j, k)
          END IF
       END DO
    END DO

    DO r = 1, m_dim(2)
       c(r) = A(r, i)
    END DO
  END FUNCTION column

END MODULE matrix
