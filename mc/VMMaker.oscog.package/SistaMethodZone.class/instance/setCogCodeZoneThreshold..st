accessing
setCogCodeZoneThreshold: ratio
	<api>
	<var: #ratio type: #double>
	(ratio >= 0.1 and: [ratio <= 1.0]) ifFalse:
		[^PrimErrBadArgument].
	thresholdRatio := ratio.
	self computeAllocationThreshold.
	^0