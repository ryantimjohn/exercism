package diffsquares

// SquareOfSum returns the square of the sum of nums up to n
func SquareOfSum(n int) int {
	sum := 0
	for i := 1; i < n+1; i++ {
		sum += i
	}
	sum *= sum
	return sum
}

// SumOfSquares returns the sum of squares of nums up till n
func SumOfSquares(n int) int {
	return ((n) * (n + 1) * (2*n + 1)) / 6
}

// Difference returns different between the square of the sum and the sum of the squares up till n
func Difference(n int) int {
	return SquareOfSum(n) - SumOfSquares(n)
}