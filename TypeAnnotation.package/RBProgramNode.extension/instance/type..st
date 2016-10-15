*TypeAnnotation
type: aType
	aType ifNil: [ ^ nil ].
	aType parent: self.
	self propertyAt: #type put: aType