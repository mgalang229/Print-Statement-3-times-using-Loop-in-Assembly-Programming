.model small 
                       
.data
    
  string_message db 10, 13, "1 and 5$" 
  
.code           

main proc far 
    
   mov ax, @data          
   mov ds, ax
   
   mov cx, 3                ; store 3 to cx (3x looping)
   
   Print:                   ; label for printing
   
   lea dx, string_message   ; print message "1 and 5"
   mov ah, 09h
   int 21h
   
   loop Print               ; print (3x) times using a loop
    
   mov ah, 4ch              ; end program
   int 21h
      
    
endp    

end main
