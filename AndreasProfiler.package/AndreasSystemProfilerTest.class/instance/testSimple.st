tests profiler
testSimple

	self shouldnt: [ AndreasSystemProfiler new spyOn: [ 200 timesRepeat: [ 1.23 printString ] ] ] raise: Error.