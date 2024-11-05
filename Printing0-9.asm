ORG 100h

start:
    MOV AL, '0'            ; Initialize AL with ASCII value of '0'

print_digit:
    MOV DL, AL             ; Move the current digit into DL
    MOV AH, 02h            ; DOS function 02h (Display Character)
    INT 21h                ; Print the character in DL
    
    INC AL                 ; Increment AL to get the next digit
    CMP AL, '9' + 1        ; Compare AL to ASCII value of ':'
    JNE print_digit        ; Repeat if AL is less than ':'

end_program:
    MOV AH, 4Ch            ; DOS function 4Ch (Terminate Program)
    INT 21h
