ORG 100h

start:
    MOV AL, '9'            ; Initialize AL with ASCII value of '9'

print_digit:
    MOV DL, AL             ; Move the current digit into DL
    MOV AH, 02h            ; DOS function 02h (Display Character)
    INT 21h                ; Print the character in DL

    DEC AL                 ; Decrement AL to get the previous digit
    CMP AL, '0' - 1        ; Compare AL to ASCII value before '0'
    JNE print_digit        ; Repeat if AL is greater than or equal to '0'

end_program:
    MOV AH, 4Ch            ; DOS function 4Ch (Terminate Program)
    INT 21h
