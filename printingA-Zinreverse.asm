ORG 100h

start:
    MOV AL, 'Z'            ; Initialize AL with ASCII value of 'Z'

print_char:
    MOV DL, AL             ; Move the current character into DL
    MOV AH, 02h            ; DOS function 02h (Display Character)
    INT 21h                ; Print the character in DL
    
    DEC AL                 ; Decrement AL to get the previous character
    CMP AL, 'A' - 1        ; Compare AL to ASCII value before 'A'
    JNE print_char         ; Repeat if AL is greater than or equal to 'A'

end_program:
    MOV AH, 4Ch            ; DOS function 4Ch (Terminate Program)
    INT 21h
