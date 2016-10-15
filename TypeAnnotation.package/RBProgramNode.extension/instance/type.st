*TypeAnnotation
type
	^ self propertyAt: #type ifAbsentPut: [ TANullTypeNode new ]