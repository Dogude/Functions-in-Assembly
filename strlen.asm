   	format PE64

section '.text' code executable readable
	
	
	mov rcx,mystr
	call strl
	
	mov rcx, fstr
	mov rdx, rax
	call [printf]
	
		
	mov rcx,0
	call [ExitProcess]
	
	
	strl:	
		
		mov rax,rcx	
		xor rcx,rcx
			
		p0:	
			cmp byte [rax] , 0					
			je p1
			inc rcx
			inc rax
			jmp p0
			
		p1:	
			mov rax,rcx	
			ret	
			
section '.data' data readable writeable
	
	fstr db "%d",0
	
	mystr db "kkalemm",0	
	
section '.idata' import data readable writeable
		
	dd 0,0,0,RVA kernel_name,RVA kernel_table
	dd 0,0,0,RVA cname,RVA c_table
	dd 0,0,0,0,0
	
	kernel_table:
		ExitProcess dq RVA _ExitProcess 
		dq 0
		
		
	c_table:
		puts dq RVA _puts	
		printf dq RVA _printf
		strlen dq RVA _strlen
		dq 0

	
	kernel_name db 'KERNEL32.DLL',0
	cname db 'MSVCRT.DLL',0

	_ExitProcess dw 0
		db 'ExitProcess',0
	_puts dw 0 
		db 'puts',0
	_printf dw 0
		db 'printf',0
	_strlen dw 0 
		db 'strlen',0

	
