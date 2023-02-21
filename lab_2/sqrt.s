                                #gcc 12.2 -O1
SQRT:                           #функция вычисления квадратного корня
        test    edi, edi        #проверка num > 0
        jle     .L4             #переход в .L4 при True
        mov     eax, 1          #int sub = 1
        mov     edx, 0          #int count = 0
.L3:
        sub     edi, eax        #num = num - sub
        add     eax, 2          #sub = sub + 2
        add     edx, 1          #count = count + 1
        test    edi, edi        #проверка num > 0
        jg      .L3             #переход в .L3 при True
.L1:
        mov     eax, edx        #присвоение значение переменной для вывода из функции
        ret                     #SQRT() возвращает значение
.L4:
        mov     edx, 0          #int count = 0
        jmp     .L1             #переход к .L1
main:                           #основная функция                 
        mov     edi, 64         #int num = 64 (параметр функции SQRT())
        call    SQRT            #вызов функции SQRT()
        ret                     #main() возвращает значение