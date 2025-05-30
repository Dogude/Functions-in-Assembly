    push   rbp
   	mov    rbp,rsp
   	sub    rsp,0x10
  	lea    rax,[rbp-0x8]
   	mov    QWORD PTR [rbp-0x10],rax
   	mov    rax,QWORD PTR [rbp-0x10]
   	add    rax,0x4                     ; jump 4 byte
   	mov    ecx,DWORD PTR [rax]         ; get int content
  	mov    rdx,rcx
  	add    ecx,0x1                     ; increment it
   	mov    DWORD PTR [rax],ecx         ; then restore it
   	mov    eax,0x0
   	leave
   	ret
