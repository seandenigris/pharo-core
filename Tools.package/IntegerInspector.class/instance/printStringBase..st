accessing
printStringBase: base
	"Answer a representation of the Integer object I am inspecting in the given base."

	^ String streamContents: [ :stream | object printOn: stream base: base showRadix: true ]