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
			mov rax,rcx ;return value in rax	
			ret	
