inline primitive generators generated code
genLowcodeFloat64Neg
	<option: #LowcodeVM>
	<inline: true>
	"Generated by the Lowcode instruction generator."
	| value result |
	self allocateRegistersForLowcodeFloatResultFloat: [:valueValue :resultValue |
		value := valueValue.
		result := resultValue.
	].

	self ssNativeTop nativePopToReg: value.
	self ssNativePop: 1.

	self XorRd: result Rd: result.
	self SubRd: value Rd: result.
	self ssPushNativeRegisterDoubleFloat: result.

	^ 0

