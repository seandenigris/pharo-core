event handling
handleYearTouched

	| newYear dayCount |
	newYear := UIManager default 
		chooseOrRequestFrom: (2000 to: 2020)
		lines: #()
		title: 'Choose a year:'.

	newYear isNil
		ifTrue: [^self].

	newYear := newYear asNumber.
	dayCount := (Month month: date monthIndex year: newYear) daysInMonth.
	self date: (Date newDay: (date dayOfMonth min: dayCount) month: date monthIndex year: newYear).
	self changed.