// Package isogram has a function to test if a string is an isogram
package isogram

import (
	"strings"
)

//IsIsogram returns true or false depending on if string is isogram
func IsIsogram(s string) bool {
	if len(s) == 0 {
		return true
	}
	counts := make(map[rune]int)
	upper := strings.ToUpper(s)
	for _, l := range upper {
		if l >= 65 && l <= 90 {
			counts[l]++
		}
	}
	for _, v := range counts {
		if v > 1 {
			return false
		}
	}
	return true
}
