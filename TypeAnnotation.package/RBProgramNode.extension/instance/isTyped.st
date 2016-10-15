*TypeAnnotation
isTyped
	^ (self hasProperty: #type) and: [ (self propertyAt: #type) isNotNil ]