    push   rbp
   	mov    rbp,rsp
   	sub    rsp,0x10
  	lea    rax,[rbp-0x8]
   	mov    QWORD PTR [rbp-0x10],rax
   	mov    rax,QWORD PTR [rbp-0x10]
   	add    rax,0x4
   	mov    ecx,DWORD PTR [rax]
  	mov    rdx,rcx
  	add    ecx,0x1
   	mov    DWORD PTR [rax],ecx
   	mov    eax,0x0
   	leave
   	ret
