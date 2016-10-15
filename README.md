# Pharo TypeAnnotation

Experimental type annotations for Pharo.


## Typed AST Nodes

  * TATypedVariableNode
  * TATypedMethodNode
  * TATypedArgumentNode
  
## AST Nodes for types

  * TANullTypeNode
  * TASimpleTypeNode
  * TACompositeTypeNode
    * TABlockClosureTypeNode
    * TAParametrizedTypeNode
      * TACollectionTypeNode
      * TADictionaryTypeNode
  
## Concrete Syntax

  * (__T__)					        Simple type
  * (__T__[]) 				        Collection
  * (__T__->__T__)			    Dictionary
  * ((__T__,__T__)=>__T__)	BlockClosure

### Example

```smalltalk
(Integer->Integer) doSomething: arg1(Integer)
|tmp1(Integer)|

temp1 := arg1*2.
^ Dictionary newFromPairs:{arg1. temp1}
```
