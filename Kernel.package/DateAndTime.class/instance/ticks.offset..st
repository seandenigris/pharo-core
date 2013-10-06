private
ticks: ticks offset: utcOffset
	"ticks is {julianDayNumber. secondCount. nanoSeconds}"

	self normalize: 3 ticks: ticks base: NanosInSecond.
	self normalize: 2 ticks: ticks base: SecondsInDay.

	julianDayNumber := ticks at: 1.
	seconds := ticks at: 2.
	nanos := ticks at: 3.
	offset := utcOffset