private
filterStretches: ohmNodeStretches
	^ ohmNodeStretches collect: [:stretches | stretches select: self filterBlock]