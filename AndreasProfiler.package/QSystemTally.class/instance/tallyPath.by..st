tallying
tallyPath: context by: count
	"Tally the context chain"
	| aMethod tally |
	aMethod := context method.
	tally := receivers.
	[tally == nil] whileFalse:[
		tally method == aMethod ifTrue:[^tally bumpBy: count].
		tally := tally nextLink.
	].
	tally := QSystemTally new class: context receiver class method: aMethod.
	tally nextLink: receivers.
	receivers := tally.
	^tally bumpBy: count