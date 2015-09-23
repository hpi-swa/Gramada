as yet unclassified
AltRec: aNode withTerm: term withPrimitive: primitive withAlt: alt 
  ^ (self value: term) , ' | ' , (self value: alt)