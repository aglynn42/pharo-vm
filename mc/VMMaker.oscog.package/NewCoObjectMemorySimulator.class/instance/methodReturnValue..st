simulation only
methodReturnValue: oop
	"hack around the CoInterpreter/ObjectMemory split refactoring"
	^coInterpreter methodReturnValue: oop