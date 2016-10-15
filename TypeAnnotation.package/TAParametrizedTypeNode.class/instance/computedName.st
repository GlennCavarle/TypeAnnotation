accessing
computedName
	^ self type name , '{' , ((self typeArguments collect: [ :each | each computedName ]) joinUsing: ',')
		, '}'