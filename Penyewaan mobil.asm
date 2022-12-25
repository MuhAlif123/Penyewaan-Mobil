.model small            
.code
org 100h
jmp mulai
    nama    db 0dh, 0ah, 0dh, 0ah,"Nama Lengkap  : ", '$'
    nik     db 0dh, 0ah,"NIK   : ", '$'
    no      db 0dh, 0ah,"No. HP     : ", '$'
    alm     db 0dh, 0ah,"Alamat :", '$'
        tampung_nama db 30,?,30 dup (?)
        tampung_nik db 30,?,30 dup (?)
        tampung_no db 30,?,30 dup (?)
        tampung_alm db 30,?,30 dup (?)
        
    m1      db 0dh, 0ah,"---- PROGRAM PERSEWAAN MOBIL ----", '$'  
    m2      db 0dh, 0ah,"         ", '$'
    m3      db 0dh, 0ah,"Silakan masukkan data diri anda." , '$' 
    m4      db 0dh, 0dh, 0dh, 0ah, 0dh, 0ah, "Selamat datang di persewaan mobil lancar jaya....", '$' 
    m5      db 0dh, 0ah," "
            db 0dh, 0ah, "Berikut Mobil yang tersedia saat ini : ", 0dh, 0ah      

            db "==========================================================", 0dh, 0ah
            db "|| 1.  Mobil Toyota Avanza         (12 Jam) Rp.215.000  ||", 0dh, 0ah  
            db "|| 2.  Mobil Kijang Inova          (12 Jam) Rp.245.000  ||", 0dh, 0ah
            db "|| 3.  Mobil Daihatsu Xenia        (12 jam) Rp.235.000  ||", 0dh, 0ah
            db "|| 4.  Mobil Suzuki Ertiga         (12 jam) Rp.220.000  ||", 0dh, 0ah 
            db "|| 5.  Mobil Toyota Avanza         (12 Jam) Rp.265.000  ||", 0dh, 0ah  
            db "|| 6.  Mobil Kijang Inova          (12 Jam) Rp.275.000  ||", 0dh, 0ah
            db "|| 7.  Mobil Daihatsu Xenia        (12 jam) Rp.285.000  ||", 0dh, 0ah
            db "|| 8.  Mobil Suzuki Ertiga         (12 jam) Rp.270.000  ||", 0dh, 0ah 
            db "=======================================================", 0dh, 0ah
            db 0dh, 0ah, "Mobil nomor berapa yang akan anda sewa ? ", '$'
    m6      db 0dh, 0ah, 0dh, 0ah, "Proses berhasil, berikut rinciannya :", '$'
    m7      db 0dh, 0ah, "Pengambilan Mobil bisa dilakukan dikonter kami ", '$'
    m8      db 0dh, 0ah, 0dh, 0ah,"Apakah ada tambahan Mobil yang disewa ?(Y, N)", '$'
    salah   db 0dh, 0ah, "Tidak ada pilihan.", '$'
    sewa1    db 0dh, 0ah, 0dh, 0ah, "Mobil Toyota Avanza        (12 jam)",0dh, 0ah, "Harga          Rp.225.000",0dh, 0ah,0dh, 0ah, "Mobil harap dikembalikan pada waktunya." , '$'
    sewa2    db 0dh, 0ah, 0dh, 0ah, "Mobil Kijang Inova         (12 jam)",0dh, 0ah, "Harga          Rp.245.000",0dh, 0ah,0dh, 0ah, "Mobil harap dikembalikan pada waktunya. " , '$'
    sewa3    db 0dh, 0ah, 0dh, 0ah, "Mobil Daihatsu Xenia       (12 jam)",0dh, 0ah, "Harga          Rp.235.000",0dh, 0ah,0dh, 0ah, "Mobil harap dikembalikan pada waktunya." , '$'
    sewa4    db 0dh, 0ah, 0dh, 0ah, "Mobil Suzuki Ertiga        (12 jam)",0dh, 0ah, "Harga          Rp.220.000",0dh, 0ah,0dh, 0ah, "Mobil harap dikembalikan pada waktunya." , '$'
    sewa5    db 0dh, 0ah, 0dh, 0ah, "Mobil Toyota Avanza        <24 jam)",0dh, 0ah, "Harga          Rp.265.000",0dh, 0ah,0dh, 0ah, "Mobil harap dikembalikan pada waktunya." , '$'
    sewa6    db 0dh, 0ah, 0dh, 0ah, "Mobil Kijang Inova         (24 jam)",0dh, 0ah, "Harga          Rp.275.000",0dh, 0ah,0dh, 0ah, "Mobil harap dikembalikan pada waktunya. " , '$'
    sewa7    db 0dh, 0ah, 0dh, 0ah, "Mobil Daihatsu Xenia       (24 jam)",0dh, 0ah, "Harga          Rp.285.000",0dh, 0ah,0dh, 0ah, "Mobil harap dikembalikan pada waktunya." , '$'
    sewa8    db 0dh, 0ah, 0dh, 0ah, "Mobil Suzuki Ertiga        (24 jam)",0dh, 0ah, "Harga          Rp.270.000",0dh, 0ah,0dh, 0ah, "Mobil harap dikembalikan pada waktunya." , '$'
    

mulai:
    mov ah,09h
    lea dx,m1
    int 21h
        
    mov ah,09h
    lea dx,m2
    int 21h        
        
    mov ah,09h
    lea dx,m3
    int 21h       
                               
    mov ah,09h
    lea dx,nama
    int 21h        

    MOV ah, 0ah
    LEA dx, tampung_nama
    INT 21h
    PUSH dx 
    
    MOV ah, 09
    LEA dx, nik
    INT 21h
    
    MOV ah, 0ah
    LEA dx, tampung_nik
    INT 21h
    PUSH dx    
          
    MOV ah, 09
    LEA dx, no
    INT 21h
              
    MOV ah, 0ah
    LEA dx, tampung_no
    INT 21h
    PUSH dx
    
    MOV ah, 09
    LEA dx, alm
    INT 21h
              
    MOV ah, 0ah
    LEA dx, tampung_alm
    INT 21h
    PUSH dx
    
    MOV ah, 09
    LEA dx, m4
    INT 21h

mulai2:        
    MOV ah, 09
    LEA dx, m5
    INT 21h   
    
Proses1:
    MOV ah, 01
    INT 21h
    
    CMP al, '1'
    JE mobil1
    
    CMP al, '2'
    JE mobil2
    
    CMP al, '3'
    JE mobil3   
    
    CMP al, '4'
    JE mobil4    
      
    CMP al, '5'
    JE mobil5 
    
    CMP al, '6'
    JE mobil6
    
    CMP al, '7'
    JE mobil7
    
    CMP al, '8'
    JE mobil8   
          
    JNE input_salah 
    
Proses2:
    MOV ah, 09
    LEA dx, m8
    INT 21h
    MOV ah, 01
    INT 21h
    
    CMP al, 'Y'
    JE sewa_lagi
    
    CMP al, 'y'
    JE sewa_lagi
    
    CMP al, 'N'
    JE end
    
    CMP al, 'n'
    JE end
    
    JNE input_salah

mobil1:
     MOV ah, 09
     LEA dx, m6
     INT 21h
     
     MOV ah, 09
     LEA dx, sewa1
     INT 21h   
     
     JMP Proses2
     
mobil2:
     MOV ah, 09
     LEA dx, m6
     INT 21h
     
     MOV ah, 09
     LEA dx, sewa2       
     
     INT 21h   
     
     JMP Proses2

mobil3:
     MOV ah, 09
     LEA dx, m6
     INT 21h
     
     MOV ah, 09
     LEA dx, sewa3
     INT 21h
     
     JMP Proses2 
     
mobil4:
     MOV ah, 09
     LEA dx, m6
     INT 21h
     
     MOV ah, 09
     LEA dx, sewa4
     INT 21h
     
     JMP Proses2
     
mobil5:
     MOV ah, 09
     LEA dx, m6
     INT 21h
     
     MOV ah, 09
     LEA dx, sewa5
     INT 21h
     
     JMP Proses2 
     
mobil6:
     MOV ah, 09
     LEA dx, m6
     INT 21h
     
     MOV ah, 09
     LEA dx, sewa6
     INT 21h   
     
     JMP Proses2
     
mobil7:
     MOV ah, 09
     LEA dx, m6
     INT 21h
     
     MOV ah, 09
     LEA dx, sewa7       
     
     INT 21h   
     
     JMP Proses2

mobil8:
     MOV ah, 09
     LEA dx, m6
     INT 21h
     
     MOV ah, 09
     LEA dx, sewa8
     INT 21h
     
     JMP Proses2 

sewa_lagi:
    JMP mulai2

end:
    MOV ah, 09
    LEA dx, m7
    INT 21h
    INT 20h
    JMP Exit

input_salah:
    MOV ah, 09
    LEA dx, salah
    INT 21h
    
    JMP Proses2

JMP Exit
Exit:
RET