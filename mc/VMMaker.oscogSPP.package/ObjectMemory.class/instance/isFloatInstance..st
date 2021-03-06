interpreter access
isFloatInstance: oop
	<inline: true>
	"N.B.  Because Slang always inlines is:instanceOf:compactClassIndex:
	 (because is:instanceOf:compactClassIndex: has an inline: pragma) the
	 phrase (objectMemory splObj: ClassFloat) is expanded in-place and is
	 _not_ evaluated if oop has a non-zero CompactClassIndex."
	^self
		is: oop
		instanceOf: (self splObj: ClassFloat) 
		compactClassIndex: ClassFloatCompactIndex