push   rbp
mov    rbp,rsp
sub    rsp,0x100
mov    eax,0x63
mov    BYTE PTR [rbp-0x80],al
mov    eax,0x0
leave
ret

; array index for arr[128] = 0x63
