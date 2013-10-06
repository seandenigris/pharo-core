emitting code
pushAsValue: gen
	"pass a structure by value on stack"
	| asm proxy oop bytesToCopy offset |
	
	proxy := gen proxy.
	asm := gen asm.
	
	oop := gen reserveTemp annotation: 'oop'.

	loader emitLoad: gen to: oop.
	
	loader isReceiver ifFalse: [
		"do not check type if argument is receiver, since we know its class"
		self verifyClassOf: oop is: objectClass generator: gen.
	].

	asm mov: oop to: asm EAX;
		add: asm EAX with: 
			(proxy objectFormat varBytesFirstField asUImm32 
				annotation: 'variable-byte first field offset').
	
	"struct size aligned to stack argument alignment"
	asm sub: asm ESP with: self stackSize. 

	"generate code to copy struct contents on a stack.
	source is [EAX]
	destination is [ESP]
	"

	bytesToCopy := self valueSize. 
	offset := 0.	
	"we can afford to read past struct size, since all objects 
	in obj memory are 4-byte aligned"
	[ bytesToCopy > 0 ] whileTrue: [
		asm 
			mov: asm EAX ptr32 + offset to: asm EDX;
			mov: asm EDX to: asm ESP ptr32 + offset.
			
		bytesToCopy := bytesToCopy - 4.
		offset := offset + 4. 
	].
	gen releaseTemps: 1.
	