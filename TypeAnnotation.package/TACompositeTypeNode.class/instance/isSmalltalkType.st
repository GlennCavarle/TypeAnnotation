accessing
isSmalltalkType
	^ self type isSmalltalkType and: [ self typeArguments allSatisfy: [ :each | each isSmalltalkType ] ]