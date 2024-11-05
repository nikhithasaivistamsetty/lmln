ORG 100h

start:
    MOV AL, 'A'            ; Initialize AL with ASCII value of 'A'

print_char:
    MOV DL, AL             ; Move the current character into DL
    MOV AH, 02h            ; DOS function 02h (Display Character)
    INT 21h                ; Print the character in DL

    INC AL                 ; Increment AL to get the next character
    CMP AL, 'Z' + 1        ; Compare AL to ASCII value after 'Z'
    JNE print_char         ; Repeat if AL is less than or equal to 'Z'

end_program:
    MOV AH, 4Ch            ; DOS function 4Ch (Terminate Program)
    INT 21h
