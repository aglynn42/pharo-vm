translation
moduleName
	"CogAbstractInstruction subclasses collect: [:ea| ea moduleName]"
	^'cogit', self ISA, ((initializationOptions at: #ABI ifAbsent: ['']) copyWithout: $_)