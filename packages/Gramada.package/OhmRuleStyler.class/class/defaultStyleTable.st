as yet unclassified
defaultStyleTable
	"color can be a valid argument to Color class>>colorFrom: , or nil to
	use the editor text color.
	Multiple emphases can be specified using an array e.g. #(bold italic).
	If emphasis is not specified, #normal will be used.
	if pixel height is not specified , then the editor font size will be used.
	"								
^#(
	"(symbol	color		[emphasisSymbolOrArray		[textStyleName [pixelHeight]]])"		
	(default 						black)
	(commentKeyword 				(green muchDarker) italic)
	(commentText 					(green muchDarker) italic)
	(ruleDeclarationName 			black bold)
	(operator 						black)
	(ruleReferenceName 			blue)
	(altCaseName 					(gray lighter) italic)
	)
							