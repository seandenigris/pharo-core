private
loadData
	"Load data from an external file as fast as possible."

	| result |
	self dataFile exists
		ifFalse: [ self downloadData ].
	self dataFile exists
		ifFalse: [ self error: 'The spelling dictionary cannot be downloaded from <' , self url , '>.' ].
	self dataFile readStreamDo: [ :stream | | zstream size |
		zstream := ZLibReadStream on: stream binary.
		result := Array new: (size := zstream nextInt32).
		1 to: size do: [ :index | 
			result at: index put: (String withAll: (zstream next: zstream next)) ] ].
	^ result