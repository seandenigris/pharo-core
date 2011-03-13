selector: selOrFalse arguments: args precedence: p temporaries: temps block: blk encoder: anEncoder primitive: prim 
	"Initialize the receiver with respect to the arguments given."

	encoder := anEncoder.
	selectorOrFalse := selOrFalse.
	precedence := p.
	arguments := args.
	temporaries := temps.
	block := blk.
	primitive := prim