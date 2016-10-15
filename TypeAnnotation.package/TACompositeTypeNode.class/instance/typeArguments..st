accessing
typeArguments: aCollection
	aCollection do: [ :each | self addTypeArgument: each ]