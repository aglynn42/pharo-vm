simulation support
sizeof: objectSymbolOrClass
	<doNotGenerate>
	objectSymbolOrClass isInteger ifTrue:
		[^interpreterProxy wordSize].
	"In the simulator file handles are just integer indices into openFiles and so need
	 only be BytesPerWord big. But in the actual VM they are at least 5 words long."
	objectSymbolOrClass == #SQFile ifTrue:
		[^interpreterProxy wordSize * 5].
	"We assume the file offset type is always 64-bits."
	objectSymbolOrClass == #squeakFileOffsetType ifTrue:
		[^8].
	^super sizeof: objectSymbolOrClass