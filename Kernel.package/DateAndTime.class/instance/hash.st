private
hash
	| totalSeconds |
	totalSeconds := seconds - offset asSeconds.
	^ ((totalSeconds // 86400 + julianDayNumber) hashMultiply bitXor: totalSeconds \\ 86400) bitXor: nanos