
.text:000004D0 ; Attributes: bp-based frame
.text:000004D0
.text:000004D0                 public Java_io_casper_android_security_Security_getSecretKey
.text:000004D0 Java_io_casper_android_security_Security_getSecretKey proc near
.text:000004D0
.text:000004D0 var_58          = dword ptr -58h
.text:000004D0 var_54          = dword ptr -54h
.text:000004D0 var_50          = dword ptr -50h
.text:000004D0 var_44          = dword ptr -44h
.text:000004D0 var_40          = dword ptr -40h
.text:000004D0 var_3C          = dword ptr -3Ch
.text:000004D0 var_35          = dword ptr -35h
.text:000004D0 var_14          = dword ptr -14h
.text:000004D0 var_10          = dword ptr -10h
.text:000004D0 arg_0           = dword ptr  8
.text:000004D0 arg_4           = dword ptr  0Ch
.text:000004D0
.text:000004D0                 push    ebp
.text:000004D1                 mov     ebp, esp
.text:000004D3                 push    ebx
.text:000004D4                 push    edi
.text:000004D5                 push    esi
.text:000004D6                 sub     esp, 4Ch        ; void *
.text:000004D9                 call    $+5
.text:000004DE                 pop     eax
.text:000004DF                 add     eax, 2AFAh
.text:000004E5                 mov     ecx, [ebp+arg_4]
.text:000004E8                 mov     edx, [ebp+arg_0]
.text:000004EB                 lea     esi, [ebp+var_35]
.text:000004EE                 lea     edi, [eax-1A10h]
.text:000004F4                 mov     ebx, 21h
.text:000004F9                 mov     [ebp+var_10], edx
.text:000004FC                 mov     [ebp+var_14], ecx
.text:000004FF                 mov     ecx, esi
.text:00000501                 mov     [esp+58h+var_58], ecx
.text:00000504                 mov     [esp+58h+var_54], edi
.text:00000508                 mov     [esp+58h+var_50], 21h
.text:00000510                 mov     [ebp+var_3C], ebx
.text:00000513                 mov     ebx, eax
.text:00000515                 mov     [ebp+var_40], eax
.text:00000518                 mov     [ebp+var_44], esi
.text:0000051B                 call    _memcpy
.text:00000520                 mov     eax, [ebp+var_10]
.text:00000523                 mov     eax, [eax]
.text:00000525                 mov     eax, [eax+29Ch]
.text:0000052B                 mov     ecx, [ebp+var_10]
.text:0000052E                 mov     [esp+58h+var_58], ecx
.text:00000531                 mov     ecx, [ebp+var_44]
.text:00000534                 mov     [esp+58h+var_54], ecx
.text:00000538                 mov     ebx, [ebp+var_40]
.text:0000053B                 call    eax
.text:0000053D                 add     esp, 4Ch
.text:00000540                 pop     esi
.text:00000541                 pop     edi
.text:00000542                 pop     ebx
.text:00000543                 pop     ebp
.text:00000544                 retn
.text:00000544 Java_io_casper_android_security_Security_getSecretKey endp
.text:00000544
.text:00000544 ; ---------------------------------------------------------------------------
.text:00000545                 align 10h
.text:00000550
.text:00000550 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
.text:00000550
.text:00000550 ; Attributes: bp-based frame
.text:00000550
.text:00000550                 public Java_io_casper_android_security_Security_getVerificationToken
.text:00000550 Java_io_casper_android_security_Security_getVerificationToken proc near
.text:00000550
.text:00000550 var_88          = dword ptr -88h
.text:00000550 var_84          = dword ptr -84h
.text:00000550 var_80          = dword ptr -80h
.text:00000550 var_7C          = dword ptr -7Ch
.text:00000550 var_78          = dword ptr -78h
.text:00000550 var_74          = dword ptr -74h
.text:00000550 var_64          = dword ptr -64h
.text:00000550 var_60          = dword ptr -60h
.text:00000550 var_5C          = dword ptr -5Ch
.text:00000550 var_58          = dword ptr -58h
.text:00000550 var_54          = dword ptr -54h
.text:00000550 var_50          = dword ptr -50h
.text:00000550 var_4C          = dword ptr -4Ch
.text:00000550 var_48          = dword ptr -48h
.text:00000550 var_44          = dword ptr -44h
.text:00000550 var_40          = dword ptr -40h
.text:00000550 var_39          = dword ptr -39h
.text:00000550 var_35          = dword ptr -35h
.text:00000550 var_31          = byte ptr -31h
.text:00000550 var_30          = dword ptr -30h
.text:00000550 var_2C          = dword ptr -2Ch
.text:00000550 var_28          = dword ptr -28h
.text:00000550 var_24          = dword ptr -24h
.text:00000550 var_20          = dword ptr -20h
.text:00000550 var_1C          = dword ptr -1Ch
.text:00000550 var_18          = dword ptr -18h
.text:00000550 var_14          = dword ptr -14h
.text:00000550 var_10          = dword ptr -10h
.text:00000550 var_C           = dword ptr -0Ch
.text:00000550 arg_0           = dword ptr  8
.text:00000550 arg_4           = dword ptr  0Ch
.text:00000550 arg_8           = dword ptr  10h
.text:00000550 arg_C           = dword ptr  14h
.text:00000550
.text:00000550                 push    ebp
.text:00000551                 mov     ebp, esp
.text:00000553                 push    ebx
.text:00000554                 push    edi
.text:00000555                 push    esi
.text:00000556                 sub     esp, 5Ch
.text:00000559                 call    $+5
.text:0000055E                 pop     eax
.text:0000055F                 add     eax, 2A7Ah
.text:00000565                 mov     ecx, [ebp+arg_C]
.text:00000568                 mov     edx, [ebp+arg_8]
.text:0000056B                 mov     esi, [ebp+arg_4]
.text:0000056E                 mov     edi, [ebp+arg_0]
.text:00000571                 lea     ebx, [ebp+var_39]
.text:00000574                 mov     [ebp+var_10], edi
.text:00000577                 mov     [ebp+var_14], esi
.text:0000057A                 mov     [ebp+var_18], edx
.text:0000057D                 mov     [ebp+var_1C], ecx
.text:00000580                 mov     ecx, [ebp+var_10]
.text:00000583                 mov     edx, [ebp+var_18]
.text:00000586                 sub     esp, 10h        ; void *
.text:00000589                 mov     esi, esp
.text:0000058B                 mov     [esi+4], edx
.text:0000058E                 mov     [esi], ecx
.text:00000590                 mov     [ebp+var_48], ebx
.text:00000593                 mov     ebx, eax
.text:00000595                 mov     [ebp+var_4C], eax
.text:00000598                 mov     [ebp+var_50], ecx
.text:0000059B                 call    sub_9B0
.text:000005A0                 add     esp, 10h
.text:000005A3                 sub     esp, 10h
.text:000005A6                 mov     ecx, esp
.text:000005A8                 mov     [ecx+4], eax
.text:000005AB                 mov     eax, [ebp+var_50]
.text:000005AE                 mov     [ecx], eax
.text:000005B0                 mov     ebx, [ebp+var_4C]
.text:000005B3                 call    sub_740
.text:000005B8                 add     esp, 10h
.text:000005BB                 mov     [ebp+var_20], eax
.text:000005BE                 mov     eax, [ebp+var_10]
.text:000005C1                 mov     ecx, [ebp+var_18]
.text:000005C4                 sub     esp, 10h
.text:000005C7                 mov     edx, esp
.text:000005C9                 mov     [edx+4], ecx
.text:000005CC                 mov     [edx], eax
.text:000005CE                 mov     ebx, [ebp+var_4C]
.text:000005D1                 mov     [ebp+var_54], eax
.text:000005D4                 call    sub_CA0
.text:000005D9                 add     esp, 10h
.text:000005DC                 sub     esp, 10h
.text:000005DF                 mov     ecx, esp
.text:000005E1                 mov     [ecx+4], eax
.text:000005E4                 mov     eax, [ebp+var_54]
.text:000005E7                 mov     [ecx], eax
.text:000005E9                 mov     ebx, [ebp+var_4C]
.text:000005EC                 call    sub_740
.text:000005F1                 add     esp, 10h
.text:000005F4                 mov     [ebp+var_24], eax
.text:000005F7                 mov     eax, [ebp+var_10]
.text:000005FA                 mov     ecx, [ebp+var_1C]
.text:000005FD                 sub     esp, 10h
.text:00000600                 mov     edx, esp
.text:00000602                 mov     [edx+4], ecx
.text:00000605                 mov     [edx], eax
.text:00000607                 mov     ebx, [ebp+var_4C]
.text:0000060A                 call    sub_740
.text:0000060F                 add     esp, 10h
.text:00000612                 mov     [ebp+var_28], eax
.text:00000615                 mov     eax, [ebp+var_10]
.text:00000618                 mov     ecx, [ebp+var_24]
.text:0000061B                 sub     esp, 10h
.text:0000061E                 mov     edx, esp
.text:00000620                 mov     [edx+4], ecx
.text:00000623                 mov     [edx], eax
.text:00000625                 mov     ebx, [ebp+var_4C]
.text:00000628                 call    sub_13C0
.text:0000062D                 add     esp, 10h
.text:00000630                 mov     [ebp+var_2C], eax
.text:00000633                 mov     eax, [ebp+var_20]
.text:00000636                 sub     esp, 10h        ; char *
.text:00000639                 mov     ecx, esp
.text:0000063B                 mov     [ecx], eax
.text:0000063D                 mov     ebx, [ebp+var_4C]
.text:00000640                 call    _strlen
.text:00000645                 add     esp, 10h
.text:00000648                 mov     ecx, [ebp+var_2C]
.text:0000064B                 sub     esp, 10h        ; char *
.text:0000064E                 mov     edx, esp
.text:00000650                 mov     [edx], ecx
.text:00000652                 mov     ebx, [ebp+var_4C]
.text:00000655                 mov     [ebp+var_58], eax
.text:00000658                 call    _strlen
.text:0000065D                 add     esp, 10h
.text:00000660                 mov     ecx, [ebp+var_58]
.text:00000663                 add     ecx, eax
.text:00000665                 mov     eax, [ebp+var_28]
.text:00000668                 sub     esp, 10h        ; char *
.text:0000066B                 mov     edx, esp
.text:0000066D                 mov     [edx], eax
.text:0000066F                 mov     ebx, [ebp+var_4C]
.text:00000672                 mov     [ebp+var_5C], ecx
.text:00000675                 call    _strlen
.text:0000067A                 add     esp, 10h
.text:0000067D                 mov     ecx, esp
.text:0000067F                 mov     [ebp+var_30], ecx
.text:00000682                 mov     ecx, [ebp+var_5C]
.text:00000685                 lea     eax, [eax+ecx+11h]
.text:00000689                 and     eax, 0FFFFFFF0h
.text:0000068C                 mov     ecx, esp
.text:0000068E                 sub     ecx, eax
.text:00000690                 mov     esp, ecx
.text:00000692                 mov     eax, [ebp+var_4C]
.text:00000695                 mov     edx, [eax-19EFh]
.text:0000069B                 mov     [ebp+var_39], edx
.text:0000069E                 mov     edx, [eax-19EBh]
.text:000006A4                 mov     [ebp+var_35], edx
.text:000006A7                 mov     al, [eax-19E7h]
.text:000006AD                 mov     [ebp+var_31], al
.text:000006B0                 mov     edx, [ebp+var_20]
.text:000006B3                 mov     esi, [ebp+var_2C]
.text:000006B6                 mov     edi, [ebp+var_28]
.text:000006B9                 sub     esp, 20h        ; char *
.text:000006BC                 mov     [esp+88h+var_88], ecx
.text:000006BF                 mov     ebx, [ebp+var_48]
.text:000006C2                 mov     [esp+88h+var_84], ebx
.text:000006C6                 mov     [esp+88h+var_80], edx
.text:000006CA                 mov     [esp+88h+var_7C], esi
.text:000006CE                 mov     [esp+88h+var_78], edi
.text:000006D2                 mov     ebx, [ebp+var_4C]
.text:000006D5                 mov     [ebp+var_60], ecx
.text:000006D8                 call    sub_3F0
.text:000006DD                 add     esp, 20h
.text:000006E0                 mov     ecx, [ebp+var_10]
.text:000006E3                 sub     esp, 10h
.text:000006E6                 mov     [esp+78h+var_78], ecx
.text:000006E9                 mov     ecx, [ebp+var_60]
.text:000006EC                 mov     [esp+78h+var_74], ecx
.text:000006F0                 mov     ebx, [ebp+var_4C]
.text:000006F3                 mov     [ebp+var_64], eax
.text:000006F6                 call    sub_13C0
.text:000006FB                 add     esp, 10h
.text:000006FE                 mov     [ebp+var_40], eax
.text:00000701                 mov     eax, [ebp+var_10]
.text:00000704                 mov     eax, [eax]
.text:00000706                 mov     eax, [eax+29Ch]
.text:0000070C                 mov     ecx, [ebp+var_10]
.text:0000070F                 mov     edx, [ebp+var_40]
.text:00000712                 sub     esp, 10h
.text:00000715                 mov     [esp+78h+var_78], ecx
.text:00000718                 mov     [esp+78h+var_74], edx
.text:0000071C                 mov     ebx, [ebp+var_4C]
.text:0000071F                 call    eax
.text:00000721                 add     esp, 10h
.text:00000724                 mov     [ebp+var_44], 1
.text:0000072B                 mov     ecx, [ebp+var_30]
.text:0000072E                 mov     esp, ecx
.text:00000730                 lea     esp, [ebp-0Ch]
.text:00000733                 pop     esi
.text:00000734                 pop     edi
.text:00000735                 pop     ebx
.text:00000736                 pop     ebp
.text:00000737                 retn
.text:00000737 Java_io_casper_android_security_Security_getVerificationToken endp
.text:00000737
.text:00000737 ; ---------------------------------------------------------------------------
.text:00000738                 align 10h
.text:00000740
.text:00000740 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
.text:00000740
.text:00000740 ; Attributes: bp-based frame
.text:00000740
.text:00000740 sub_740         proc near               ; CODE XREF: Java_io_casper_android_security_Security_getVerificationToken+63p
.text:00000740                                         ; Java_io_casper_android_security_Security_getVerificationToken+9Cp ...
.text:00000740
.text:00000740 var_A8          = dword ptr -0A8h
.text:00000740 var_A4          = dword ptr -0A4h
.text:00000740 var_A0          = dword ptr -0A0h
.text:00000740 var_9C          = dword ptr -9Ch
.text:00000740 var_94          = dword ptr -94h
.text:00000740 var_90          = dword ptr -90h
.text:00000740 var_8C          = dword ptr -8Ch
.text:00000740 var_88          = dword ptr -88h
.text:00000740 var_84          = dword ptr -84h
.text:00000740 var_80          = dword ptr -80h
.text:00000740 var_7C          = dword ptr -7Ch
.text:00000740 var_78          = dword ptr -78h
.text:00000740 var_74          = dword ptr -74h
.text:00000740 var_70          = dword ptr -70h
.text:00000740 var_6C          = dword ptr -6Ch
.text:00000740 var_68          = dword ptr -68h
.text:00000740 var_64          = dword ptr -64h
.text:00000740 var_60          = dword ptr -60h
.text:00000740 var_5C          = dword ptr -5Ch
.text:00000740 var_58          = dword ptr -58h
.text:00000740 var_41          = dword ptr -41h
.text:00000740 var_3D          = dword ptr -3Dh
.text:00000740 var_39          = byte ptr -39h
.text:00000740 var_38          = dword ptr -38h
.text:00000740 var_34          = dword ptr -34h
.text:00000740 var_2F          = dword ptr -2Fh
.text:00000740 var_1E          = dword ptr -1Eh
.text:00000740 var_1A          = word ptr -1Ah
.text:00000740 var_18          = dword ptr -18h
.text:00000740 var_14          = dword ptr -14h
.text:00000740 var_10          = dword ptr -10h
.text:00000740 arg_0           = dword ptr  8
.text:00000740 arg_4           = dword ptr  0Ch
.text:00000740
.text:00000740                 push    ebp
.text:00000741                 mov     ebp, esp
.text:00000743                 push    ebx
.text:00000744                 push    edi
.text:00000745                 push    esi
.text:00000746                 sub     esp, 9Ch        ; char *
.text:0000074C                 call    $+5
.text:00000751                 pop     eax
.text:00000752                 add     eax, 2887h
.text:00000758                 mov     ecx, [ebp+arg_4]
.text:0000075B                 mov     edx, [ebp+arg_0]
.text:0000075E                 mov     esi, 0
.text:00000763                 lea     edi, [ebp+var_58]
.text:00000766                 lea     ebx, [ebp+var_41]
.text:00000769                 mov     [ebp+var_6C], eax
.text:0000076C                 lea     eax, [eax-1878h]
.text:00000772                 mov     [ebp+var_70], eax
.text:00000775                 mov     eax, 17h
.text:0000077A                 mov     [ebp+var_74], eax
.text:0000077D                 lea     eax, [ebp+var_2F]
.text:00000780                 mov     [ebp+var_78], eax
.text:00000783                 lea     eax, [ebp+var_1E]
.text:00000786                 mov     [ebp+var_7C], eax
.text:00000789                 mov     eax, [ebp+var_6C]
.text:0000078C                 lea     eax, [eax-1892h]
.text:00000792                 mov     [ebp+var_80], eax
.text:00000795                 mov     eax, 11h
.text:0000079A                 mov     [ebp+var_10], edx
.text:0000079D                 mov     [ebp+var_14], ecx
.text:000007A0                 mov     [ebp+var_18], 0
.text:000007A7                 mov     ecx, [ebp+var_6C]
.text:000007AA                 mov     edx, [ecx-1898h]
.text:000007B0                 mov     [ebp+var_1E], edx
.text:000007B3                 mov     cx, [ecx-1894h]
.text:000007BA                 mov     [ebp+var_1A], cx
.text:000007BE                 mov     edx, [ebp+var_78]
.text:000007C1                 mov     [esp+0A8h+var_A8], edx
.text:000007C4                 mov     edx, [ebp+var_80]
.text:000007C7                 mov     [esp+0A8h+var_A4], edx
.text:000007CB                 mov     [esp+0A8h+var_A0], 11h
.text:000007D3                 mov     edx, [ebp+var_6C]
.text:000007D6                 mov     [ebp+var_84], ebx
.text:000007DC                 mov     ebx, edx
.text:000007DE                 mov     [ebp+var_88], eax
.text:000007E4                 mov     [ebp+var_8C], edi
.text:000007EA                 mov     [ebp+var_90], esi
.text:000007F0                 call    _memcpy
.text:000007F5                 mov     eax, [ebp+var_10]
.text:000007F8                 mov     eax, [eax]
.text:000007FA                 mov     eax, [eax+29Ch]
.text:00000800                 mov     edx, [ebp+var_10]
.text:00000803                 mov     [esp+0A8h+var_A8], edx
.text:00000806                 mov     edx, [ebp+var_7C]
.text:00000809                 mov     [esp+0A8h+var_A4], edx
.text:0000080D                 mov     ebx, [ebp+var_6C]
.text:00000810                 call    eax
.text:00000812                 mov     [ebp+var_34], eax
.text:00000815                 mov     eax, [ebp+var_10]
.text:00000818                 mov     eax, [eax]
.text:0000081A                 mov     eax, [eax+18h]
.text:0000081D                 mov     edx, [ebp+var_10]
.text:00000820                 mov     [esp+0A8h+var_A8], edx
.text:00000823                 mov     edx, [ebp+var_78]
.text:00000826                 mov     [esp+0A8h+var_A4], edx
.text:0000082A                 mov     ebx, [ebp+var_6C]
.text:0000082D                 call    eax
.text:0000082F                 mov     [ebp+var_38], eax
.text:00000832                 mov     eax, [ebp+var_6C]
.text:00000835                 mov     edx, [eax-1881h]
.text:0000083B                 mov     [ebp+var_41], edx
.text:0000083E                 mov     edx, [eax-187Dh]
.text:00000844                 mov     [ebp+var_3D], edx
.text:00000847                 mov     al, [eax-1879h]
.text:0000084D                 mov     [ebp+var_39], al
.text:00000850                 mov     edx, [ebp+var_8C]
.text:00000856                 mov     [esp+0A8h+var_A8], edx
.text:00000859                 mov     edx, [ebp+var_70]
.text:0000085C                 mov     [esp+0A8h+var_A4], edx
.text:00000860                 mov     [esp+0A8h+var_A0], 17h
.text:00000868                 mov     ebx, [ebp+var_6C]
.text:0000086B                 call    _memcpy
.text:00000870                 mov     edx, [ebp+var_10]
.text:00000873                 mov     edx, [edx]
.text:00000875                 mov     edx, [edx+84h]
.text:0000087B                 mov     esi, [ebp+var_10]
.text:0000087E                 mov     edi, [ebp+var_38]
.text:00000881                 mov     [esp+0A8h+var_A8], esi
.text:00000884                 mov     [esp+0A8h+var_A4], edi
.text:00000888                 mov     esi, [ebp+var_84]
.text:0000088E                 mov     [esp+0A8h+var_A0], esi
.text:00000892                 mov     edi, [ebp+var_8C]
.text:00000898                 mov     [esp+0A8h+var_9C], edi
.text:0000089C                 mov     ebx, [ebp+var_6C]
.text:0000089F                 call    edx
.text:000008A1                 mov     [ebp+var_5C], eax
.text:000008A4                 mov     eax, [ebp+var_10]
.text:000008A7                 mov     eax, [eax]
.text:000008A9                 mov     eax, [eax+88h]
.text:000008AF                 mov     edx, [ebp+var_10]
.text:000008B2                 mov     esi, [ebp+var_14]
.text:000008B5                 mov     edi, [ebp+var_5C]
.text:000008B8                 mov     ebx, [ebp+var_34]
.text:000008BB                 mov     [esp+0A8h+var_A8], edx
.text:000008BE                 mov     [esp+0A8h+var_A4], esi
.text:000008C2                 mov     [esp+0A8h+var_A0], edi
.text:000008C6                 mov     [esp+0A8h+var_9C], ebx
.text:000008CA                 mov     ebx, [ebp+var_6C]
.text:000008CD                 call    eax
.text:000008CF                 mov     [ebp+var_60], eax
.text:000008D2                 mov     eax, [ebp+var_10]
.text:000008D5                 mov     eax, [eax]
.text:000008D7                 mov     eax, [eax+2ACh]
.text:000008DD                 mov     edx, [ebp+var_10]
.text:000008E0                 mov     esi, [ebp+var_60]
.text:000008E3                 mov     [esp+0A8h+var_A8], edx
.text:000008E6                 mov     [esp+0A8h+var_A4], esi
.text:000008EA                 mov     ebx, [ebp+var_6C]
.text:000008ED                 call    eax
.text:000008EF                 mov     [ebp+var_64], eax
.text:000008F2                 mov     eax, [ebp+var_10]
.text:000008F5                 mov     eax, [eax]
.text:000008F7                 mov     eax, [eax+2E0h]
.text:000008FD                 mov     edx, [ebp+var_10]
.text:00000900                 mov     esi, [ebp+var_60]
.text:00000903                 mov     [esp+0A8h+var_A8], edx
.text:00000906                 mov     [esp+0A8h+var_A4], esi
.text:0000090A                 mov     [esp+0A8h+var_A0], 0
.text:00000912                 mov     ebx, [ebp+var_6C]
.text:00000915                 call    eax
.text:00000917                 mov     [ebp+var_68], eax
.text:0000091A                 cmp     [ebp+var_64], 0
.text:00000921                 jle     loc_963
.text:00000927                 mov     eax, [ebp+var_64]
.text:0000092A                 add     eax, 1
.text:0000092F                 mov     [esp+0A8h+var_A8], eax
.text:00000932                 mov     ebx, [ebp+var_6C]
.text:00000935                 call    sub_400
.text:0000093A                 mov     [ebp+var_18], eax
.text:0000093D                 mov     eax, [ebp+var_18]
.text:00000940                 mov     ebx, [ebp+var_68]
.text:00000943                 mov     ecx, [ebp+var_64]
.text:00000946                 mov     [esp+0A8h+var_A8], eax
.text:00000949                 mov     [esp+0A8h+var_A4], ebx
.text:0000094D                 mov     [esp+0A8h+var_A0], ecx
.text:00000951                 mov     ebx, [ebp+var_6C]
.text:00000954                 call    _memcpy
.text:00000959                 mov     eax, [ebp+var_64]
.text:0000095C                 mov     ecx, [ebp+var_18]
.text:0000095F                 mov     byte ptr [ecx+eax], 0
.text:00000963
.text:00000963 loc_963:                                ; CODE XREF: sub_740+1E1j
.text:00000963                 mov     eax, 0
.text:00000968                 mov     ecx, [ebp+var_10]
.text:0000096B                 mov     ecx, [ecx]
.text:0000096D                 mov     ecx, [ecx+300h]
.text:00000973                 mov     edx, [ebp+var_10]
.text:00000976                 mov     esi, [ebp+var_60]
.text:00000979                 mov     edi, [ebp+var_68]
.text:0000097C                 mov     [esp+0A8h+var_A8], edx
.text:0000097F                 mov     [esp+0A8h+var_A4], esi
.text:00000983                 mov     [esp+0A8h+var_A0], edi
.text:00000987                 mov     [esp+0A8h+var_9C], 0
.text:0000098F                 mov     ebx, [ebp+var_6C]
.text:00000992                 mov     [ebp+var_94], eax
.text:00000998                 call    ecx
.text:0000099A                 mov     eax, [ebp+var_18]
.text:0000099D                 add     esp, 9Ch
.text:000009A3                 pop     esi
.text:000009A4                 pop     edi
.text:000009A5                 pop     ebx
.text:000009A6                 pop     ebp
.text:000009A7                 retn
.text:000009A7 sub_740         endp
.text:000009A7
.text:000009A7 ; ---------------------------------------------------------------------------
.text:000009A8                 align 10h
.text:000009B0
.text:000009B0 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
.text:000009B0
.text:000009B0 ; Attributes: bp-based frame
.text:000009B0
.text:000009B0 ; void *sub_9B0(void *,const void *,size_t)
.text:000009B0 sub_9B0         proc near               ; CODE XREF: Java_io_casper_android_security_Security_getVerificationToken+4Bp
.text:000009B0
.text:000009B0 var_E8          = dword ptr -0E8h
.text:000009B0 var_E4          = dword ptr -0E4h
.text:000009B0 var_E0          = dword ptr -0E0h
.text:000009B0 var_DC          = dword ptr -0DCh
.text:000009B0 var_D8          = dword ptr -0D8h
.text:000009B0 var_D4          = dword ptr -0D4h
.text:000009B0 var_D0          = dword ptr -0D0h
.text:000009B0 var_CC          = dword ptr -0CCh
.text:000009B0 var_C8          = dword ptr -0C8h
.text:000009B0 var_C4          = dword ptr -0C4h
.text:000009B0 var_C0          = dword ptr -0C0h
.text:000009B0 var_BC          = dword ptr -0BCh
.text:000009B0 var_B8          = dword ptr -0B8h
.text:000009B0 var_B4          = dword ptr -0B4h
.text:000009B0 var_B0          = dword ptr -0B0h
.text:000009B0 var_AC          = dword ptr -0ACh
.text:000009B0 var_A8          = dword ptr -0A8h
.text:000009B0 var_A4          = dword ptr -0A4h
.text:000009B0 var_A0          = dword ptr -0A0h
.text:000009B0 var_8B          = dword ptr -8Bh
.text:000009B0 var_87          = dword ptr -87h
.text:000009B0 var_83          = dword ptr -83h
.text:000009B0 var_7F          = word ptr -7Fh
.text:000009B0 var_7D          = byte ptr -7Dh
.text:000009B0 var_7C          = dword ptr -7Ch
.text:000009B0 var_78          = dword ptr -78h
.text:000009B0 var_74          = dword ptr -74h
.text:000009B0 var_6F          = dword ptr -6Fh
.text:000009B0 var_49          = dword ptr -49h
.text:000009B0 var_37          = dword ptr -37h
.text:000009B0 var_18          = dword ptr -18h
.text:000009B0 var_14          = dword ptr -14h
.text:000009B0 var_10          = dword ptr -10h
.text:000009B0 arg_0           = dword ptr  8
.text:000009B0 arg_4           = dword ptr  0Ch
.text:000009B0
.text:000009B0                 push    ebp
.text:000009B1                 mov     ebp, esp
.text:000009B3                 push    ebx
.text:000009B4                 push    edi
.text:000009B5                 push    esi
.text:000009B6                 sub     esp, 0DCh       ; void *
.text:000009BC                 call    $+5
.text:000009C1                 pop     eax
.text:000009C2                 add     eax, 2617h
.text:000009C8                 mov     ecx, [ebp+arg_4]
.text:000009CB                 mov     edx, [ebp+arg_0]
.text:000009CE                 lea     esi, [ebp+var_6F]
.text:000009D1                 lea     edi, [ebp+var_49]
.text:000009D4                 lea     ebx, [ebp+var_37]
.text:000009D7                 mov     [ebp+var_A8], eax
.text:000009DD                 lea     eax, [eax-1960h] ; "()Landroid/content/pm/PackageManager"
.text:000009E3                 mov     [ebp+var_AC], eax
.text:000009E9                 mov     eax, 26h
.text:000009EE                 mov     [ebp+var_B0], eax
.text:000009F4                 mov     eax, [ebp+var_A8] ; "getPackageManager"
.text:000009FA                 lea     eax, [eax-1972h]
.text:00000A00                 mov     [ebp+var_B4], eax
.text:00000A06                 mov     eax, 12h
.text:00000A0B                 mov     [ebp+var_B8], eax
.text:00000A11                 mov     eax, [ebp+var_A8]
.text:00000A17                 lea     eax, [eax-1991h] ; "android/content/ContextWrapper"
.text:00000A1D                 mov     [ebp+var_BC], eax
.text:00000A23                 mov     eax, 1Fh
.text:00000A28                 mov     [ebp+var_14], edx
.text:00000A2B                 mov     [ebp+var_18], ecx
.text:00000A2E                 mov     ecx, ebx
.text:00000A30                 mov     [esp], ecx
.text:00000A33                 mov     ecx, [ebp+var_BC]
.text:00000A39                 mov     [esp+4], ecx
.text:00000A3D                 mov     dword ptr [esp+8], 1Fh
.text:00000A45                 mov     edx, [ebp+var_A8]
.text:00000A4B                 mov     [ebp+var_C0], ebx
.text:00000A51                 mov     ebx, edx
.text:00000A53                 mov     [ebp+var_C4], eax
.text:00000A59                 mov     [ebp+var_C8], edi
.text:00000A5F                 mov     [ebp+var_CC], esi
.text:00000A65                 call    _memcpy
.text:00000A6A                 mov     eax, [ebp+var_C8]
.text:00000A70                 mov     [esp], eax
.text:00000A73                 mov     eax, [ebp+var_B4]
.text:00000A79                 mov     [esp+4], eax
.text:00000A7D                 mov     dword ptr [esp+8], 12h
.text:00000A85                 mov     ebx, [ebp+var_A8]
.text:00000A8B                 call    _memcpy
.text:00000A90                 mov     eax, [ebp+var_CC]
.text:00000A96                 mov     [esp+0E8h+var_E8], eax
.text:00000A99                 mov     eax, [ebp+var_AC]
.text:00000A9F                 mov     [esp+0E8h+var_E4], eax
.text:00000AA3                 mov     [esp+0E8h+var_E0], 26h
.text:00000AAB                 mov     ebx, [ebp+var_A8]
.text:00000AB1                 call    _memcpy
.text:00000AB6                 mov     eax, [ebp+var_14]
.text:00000AB9                 mov     eax, [eax]
.text:00000ABB                 mov     eax, [eax+18h]
.text:00000ABE                 mov     ecx, [ebp+var_14]
.text:00000AC1                 mov     [esp+0E8h+var_E8], ecx
.text:00000AC4                 mov     ecx, [ebp+var_C0]
.text:00000ACA                 mov     [esp+0E8h+var_E4], ecx
.text:00000ACE                 mov     ebx, [ebp+var_A8]
.text:00000AD4                 call    eax
.text:00000AD6                 mov     [ebp+var_74], eax
.text:00000AD9                 mov     eax, [ebp+var_14]
.text:00000ADC                 mov     eax, [eax]
.text:00000ADE                 mov     eax, [eax+84h]
.text:00000AE4                 mov     ecx, [ebp+var_14]
.text:00000AE7                 mov     edx, [ebp+var_74]
.text:00000AEA                 mov     [esp+0E8h+var_E8], ecx
.text:00000AED                 mov     [esp+0E8h+var_E4], edx
.text:00000AF1                 mov     ecx, [ebp+var_C8]
.text:00000AF7                 mov     [esp+0E8h+var_E0], ecx
.text:00000AFB                 mov     edx, [ebp+var_CC]
.text:00000B01                 mov     [esp+0E8h+var_DC], edx
.text:00000B05                 mov     ebx, [ebp+var_A8]
.text:00000B0B                 call    eax
.text:00000B0D                 mov     [ebp+var_78], eax
.text:00000B10                 cmp     [ebp+var_78], 0
.text:00000B17                 jnz     loc_B31
.text:00000B1D                 mov     eax, [ebp+var_A8]
.text:00000B23                 lea     ecx, [eax-1992h]
.text:00000B29                 mov     [ebp+var_10], ecx
.text:00000B2C                 jmp     loc_C8A
.text:00000B31 ; ---------------------------------------------------------------------------
.text:00000B31
.text:00000B31 loc_B31:                                ; CODE XREF: sub_9B0+167j
.text:00000B31                 mov     eax, [ebp+var_14]
.text:00000B34                 mov     eax, [eax]
.text:00000B36                 mov     eax, [eax+88h]
.text:00000B3C                 mov     ecx, [ebp+var_14]
.text:00000B3F                 mov     edx, [ebp+var_18]
.text:00000B42                 mov     esi, [ebp+var_78]
.text:00000B45                 mov     [esp+0E8h+var_E8], ecx
.text:00000B48                 mov     [esp+0E8h+var_E4], edx
.text:00000B4C                 mov     [esp+0E8h+var_E0], esi
.text:00000B50                 mov     ebx, [ebp+var_A8]
.text:00000B56                 call    eax
.text:00000B58                 mov     [ebp+var_7C], eax
.text:00000B5B                 cmp     [ebp+var_7C], 0
.text:00000B62                 jnz     loc_B7C
.text:00000B68                 mov     eax, [ebp+var_A8]
.text:00000B6E                 lea     ecx, [eax-1992h]
.text:00000B74                 mov     [ebp+var_10], ecx
.text:00000B77                 jmp     loc_C8A
.text:00000B7C ; ---------------------------------------------------------------------------
.text:00000B7C
.text:00000B7C loc_B7C:                                ; CODE XREF: sub_9B0+1B2j
.text:00000B7C                 lea     eax, [ebp+var_A0]
.text:00000B82                 lea     ecx, [ebp+var_8B]
.text:00000B88                 mov     edx, [ebp+var_A8]
.text:00000B8E                 lea     esi, [edx-192Bh] ; ()Ljava/lang/String;
.text:00000B94                 mov     edi, 15h
.text:00000B99                 mov     ebx, [edx-193Ah]
.text:00000B9F                 mov     [ebp+var_8B], ebx
.text:00000BA5                 mov     ebx, [edx-1936h]
.text:00000BAB                 mov     [ebp+var_87], ebx
.text:00000BB1                 mov     ebx, [edx-1932h]
.text:00000BB7                 mov     [ebp+var_83], ebx
.text:00000BBD                 mov     dx, [edx-192Eh]
.text:00000BC4                 mov     [ebp+var_7F], dx
.text:00000BC8                 mov     ebx, [ebp+var_A8]
.text:00000BCE                 mov     dl, [ebx-192Ch] ; getPackageName
.text:00000BD4                 mov     [ebp+var_7D], dl
.text:00000BD7                 mov     edx, eax
.text:00000BD9                 mov     [esp], edx
.text:00000BDC                 mov     [esp+4], esi
.text:00000BE0                 mov     dword ptr [esp+8], 15h
.text:00000BE8                 mov     [ebp+var_D0], eax
.text:00000BEE                 mov     [ebp+var_D4], ecx
.text:00000BF4                 mov     [ebp+var_D8], edi
.text:00000BFA                 call    _memcpy
.text:00000BFF                 mov     eax, [ebp+var_14]
.text:00000C02                 mov     eax, [eax]
.text:00000C04                 mov     eax, [eax+84h]
.text:00000C0A                 mov     ecx, [ebp+var_14]
.text:00000C0D                 mov     edx, [ebp+var_74]
.text:00000C10                 mov     [esp], ecx
.text:00000C13                 mov     [esp+4], edx
.text:00000C17                 mov     ecx, [ebp+var_D4]
.text:00000C1D                 mov     [esp+8], ecx
.text:00000C21                 mov     edx, [ebp+var_D0]
.text:00000C27                 mov     [esp+0Ch], edx
.text:00000C2B                 mov     ebx, [ebp+var_A8]
.text:00000C31                 call    eax
.text:00000C33                 mov     [ebp+var_A4], eax
.text:00000C39                 cmp     [ebp+var_A4], 0
.text:00000C43                 jnz     loc_C5D
.text:00000C49                 mov     eax, [ebp+var_A8]
.text:00000C4F                 lea     ecx, [eax-1992h]
.text:00000C55                 mov     [ebp+var_10], ecx
.text:00000C58                 jmp     loc_C8A
.text:00000C5D ; ---------------------------------------------------------------------------
.text:00000C5D
.text:00000C5D loc_C5D:                                ; CODE XREF: sub_9B0+293j
.text:00000C5D                 mov     eax, [ebp+var_14]
.text:00000C60                 mov     eax, [eax]
.text:00000C62                 mov     eax, [eax+88h]
.text:00000C68                 mov     ecx, [ebp+var_14]
.text:00000C6B                 mov     edx, [ebp+var_18]
.text:00000C6E                 mov     esi, [ebp+var_A4]
.text:00000C74                 mov     [esp+0E8h+var_E8], ecx
.text:00000C77                 mov     [esp+0E8h+var_E4], edx
.text:00000C7B                 mov     [esp+0E8h+var_E0], esi
.text:00000C7F                 mov     ebx, [ebp+var_A8]
.text:00000C85                 call    eax
.text:00000C87                 mov     [ebp+var_10], eax
.text:00000C8A
.text:00000C8A loc_C8A:                                ; CODE XREF: sub_9B0+17Cj
.text:00000C8A                                         ; sub_9B0+1C7j ...
.text:00000C8A                 mov     eax, [ebp+var_10]
.text:00000C8D                 add     esp, 0DCh
.text:00000C93                 pop     esi
.text:00000C94                 pop     edi
.text:00000C95                 pop     ebx
.text:00000C96                 pop     ebp
.text:00000C97                 retn
.text:00000C97 sub_9B0         endp
.text:00000C97
.text:00000C97 ; ---------------------------------------------------------------------------
.text:00000C98                 align 10h
.text:00000CA0
.text:00000CA0 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
.text:00000CA0
.text:00000CA0 ; Attributes: bp-based frame
.text:00000CA0
.text:00000CA0 sub_CA0         proc near               ; CODE XREF: Java_io_casper_android_security_Security_getVerificationToken+84p
.text:00000CA0
.text:00000CA0 var_1F8         = dword ptr -1F8h
.text:00000CA0 var_1F4         = dword ptr -1F4h
.text:00000CA0 var_1F0         = dword ptr -1F0h
.text:00000CA0 var_1EC         = dword ptr -1ECh
.text:00000CA0 var_1E8         = dword ptr -1E8h
.text:00000CA0 var_1E0         = dword ptr -1E0h
.text:00000CA0 var_1DC         = dword ptr -1DCh
.text:00000CA0 var_1D8         = dword ptr -1D8h
.text:00000CA0 var_1D4         = dword ptr -1D4h
.text:00000CA0 var_1D0         = dword ptr -1D0h
.text:00000CA0 var_1CC         = dword ptr -1CCh
.text:00000CA0 var_1C8         = dword ptr -1C8h
.text:00000CA0 var_1C4         = dword ptr -1C4h
.text:00000CA0 var_1C0         = dword ptr -1C0h
.text:00000CA0 var_1BC         = dword ptr -1BCh
.text:00000CA0 var_1B8         = dword ptr -1B8h
.text:00000CA0 var_1B4         = dword ptr -1B4h
.text:00000CA0 var_1B0         = dword ptr -1B0h
.text:00000CA0 var_1AC         = dword ptr -1ACh
.text:00000CA0 var_1A8         = dword ptr -1A8h
.text:00000CA0 var_1A4         = dword ptr -1A4h
.text:00000CA0 var_1A0         = dword ptr -1A0h
.text:00000CA0 var_19C         = dword ptr -19Ch
.text:00000CA0 var_198         = dword ptr -198h
.text:00000CA0 var_194         = dword ptr -194h
.text:00000CA0 var_190         = dword ptr -190h
.text:00000CA0 var_18C         = dword ptr -18Ch
.text:00000CA0 var_188         = dword ptr -188h
.text:00000CA0 var_184         = dword ptr -184h
.text:00000CA0 var_180         = dword ptr -180h
.text:00000CA0 var_17C         = dword ptr -17Ch
.text:00000CA0 var_178         = dword ptr -178h
.text:00000CA0 var_174         = dword ptr -174h
.text:00000CA0 var_170         = dword ptr -170h
.text:00000CA0 var_16C         = dword ptr -16Ch
.text:00000CA0 var_168         = dword ptr -168h
.text:00000CA0 var_164         = dword ptr -164h
.text:00000CA0 var_160         = dword ptr -160h
.text:00000CA0 var_15B         = dword ptr -15Bh
.text:00000CA0 var_146         = dword ptr -146h
.text:00000CA0 var_142         = dword ptr -142h
.text:00000CA0 var_13E         = dword ptr -13Eh
.text:00000CA0 var_13A         = word ptr -13Ah
.text:00000CA0 var_138         = dword ptr -138h
.text:00000CA0 var_134         = dword ptr -134h
.text:00000CA0 var_130         = dword ptr -130h
.text:00000CA0 var_12C         = dword ptr -12Ch
.text:00000CA0 var_127         = dword ptr -127h
.text:00000CA0 var_107         = dword ptr -107h
.text:00000CA0 var_103         = dword ptr -103h
.text:00000CA0 var_FF          = word ptr -0FFh
.text:00000CA0 var_FD          = byte ptr -0FDh
.text:00000CA0 var_FC          = dword ptr -0FCh
.text:00000CA0 var_F8          = dword ptr -0F8h
.text:00000CA0 var_F1          = dword ptr -0F1h
.text:00000CA0 var_BB          = dword ptr -0BBh
.text:00000CA0 var_B7          = dword ptr -0B7h
.text:00000CA0 var_B3          = dword ptr -0B3h
.text:00000CA0 var_AF          = word ptr -0AFh
.text:00000CA0 var_AD          = byte ptr -0ADh
.text:00000CA0 var_AC          = dword ptr -0ACh
.text:00000CA0 var_A8          = dword ptr -0A8h
.text:00000CA0 var_A4          = dword ptr -0A4h
.text:00000CA0 var_A0          = dword ptr -0A0h
.text:00000CA0 var_8B          = dword ptr -8Bh
.text:00000CA0 var_87          = dword ptr -87h
.text:00000CA0 var_83          = dword ptr -83h
.text:00000CA0 var_7F          = word ptr -7Fh
.text:00000CA0 var_7D          = byte ptr -7Dh
.text:00000CA0 var_7C          = dword ptr -7Ch
.text:00000CA0 var_78          = dword ptr -78h
.text:00000CA0 var_74          = dword ptr -74h
.text:00000CA0 var_6F          = dword ptr -6Fh
.text:00000CA0 var_49          = dword ptr -49h
.text:00000CA0 var_37          = dword ptr -37h
.text:00000CA0 var_18          = dword ptr -18h
.text:00000CA0 var_14          = dword ptr -14h
.text:00000CA0 var_10          = dword ptr -10h
.text:00000CA0 arg_0           = dword ptr  8
.text:00000CA0 arg_4           = dword ptr  0Ch
.text:00000CA0
.text:00000CA0                 push    ebp
.text:00000CA1                 mov     ebp, esp
.text:00000CA3                 push    ebx
.text:00000CA4                 push    edi
.text:00000CA5                 push    esi
.text:00000CA6                 sub     esp, 1ECh       ; void *
.text:00000CAC                 call    $+5
.text:00000CB1                 pop     eax
.text:00000CB2                 add     eax, 2327h
.text:00000CB8                 mov     ecx, [ebp+arg_4]
.text:00000CBB                 mov     edx, [ebp+arg_0]
.text:00000CBE                 lea     esi, [ebp+var_6F]
.text:00000CC1                 lea     edi, [ebp+var_49]
.text:00000CC4                 lea     ebx, [ebp+var_37]
.text:00000CC7                 mov     [ebp+var_168], eax
.text:00000CCD                 lea     eax, [eax-1960h]
.text:00000CD3                 mov     [ebp+var_16C], eax
.text:00000CD9                 mov     eax, 26h
.text:00000CDE                 mov     [ebp+var_170], eax
.text:00000CE4                 mov     eax, [ebp+var_168]
.text:00000CEA                 lea     eax, [eax-1972h]
.text:00000CF0                 mov     [ebp+var_174], eax
.text:00000CF6                 mov     eax, 12h
.text:00000CFB                 mov     [ebp+var_178], eax
.text:00000D01                 mov     eax, [ebp+var_168]
.text:00000D07                 lea     eax, [eax-1991h]
.text:00000D0D                 mov     [ebp+var_17C], eax
.text:00000D13                 mov     eax, 1Fh
.text:00000D18                 mov     [ebp+var_14], edx
.text:00000D1B                 mov     [ebp+var_18], ecx
.text:00000D1E                 mov     ecx, ebx
.text:00000D20                 mov     [esp+1F8h+var_1F8], ecx
.text:00000D23                 mov     ecx, [ebp+var_17C]
.text:00000D29                 mov     [esp+1F8h+var_1F4], ecx
.text:00000D2D                 mov     [esp+1F8h+var_1F0], 1Fh
.text:00000D35                 mov     edx, [ebp+var_168]
.text:00000D3B                 mov     [ebp+var_180], ebx
.text:00000D41                 mov     ebx, edx
.text:00000D43                 mov     [ebp+var_184], eax
.text:00000D49                 mov     [ebp+var_188], edi
.text:00000D4F                 mov     [ebp+var_18C], esi
.text:00000D55                 call    _memcpy
.text:00000D5A                 mov     eax, [ebp+var_188]
.text:00000D60                 mov     [esp+1F8h+var_1F8], eax
.text:00000D63                 mov     eax, [ebp+var_174]
.text:00000D69                 mov     [esp+1F8h+var_1F4], eax
.text:00000D6D                 mov     [esp+1F8h+var_1F0], 12h
.text:00000D75                 mov     ebx, [ebp+var_168]
.text:00000D7B                 call    _memcpy
.text:00000D80                 mov     eax, [ebp+var_18C]
.text:00000D86                 mov     [esp+1F8h+var_1F8], eax
.text:00000D89                 mov     eax, [ebp+var_16C]
.text:00000D8F                 mov     [esp+1F8h+var_1F4], eax
.text:00000D93                 mov     [esp+1F8h+var_1F0], 26h
.text:00000D9B                 mov     ebx, [ebp+var_168]
.text:00000DA1                 call    _memcpy
.text:00000DA6                 mov     eax, [ebp+var_14]
.text:00000DA9                 mov     eax, [eax]
.text:00000DAB                 mov     eax, [eax+18h]
.text:00000DAE                 mov     ecx, [ebp+var_14]
.text:00000DB1                 mov     [esp+1F8h+var_1F8], ecx
.text:00000DB4                 mov     ecx, [ebp+var_180]
.text:00000DBA                 mov     [esp+1F8h+var_1F4], ecx
.text:00000DBE                 mov     ebx, [ebp+var_168]
.text:00000DC4                 call    eax
.text:00000DC6                 mov     [ebp+var_74], eax
.text:00000DC9                 mov     eax, [ebp+var_14]
.text:00000DCC                 mov     eax, [eax]
.text:00000DCE                 mov     eax, [eax+84h]
.text:00000DD4                 mov     ecx, [ebp+var_14]
.text:00000DD7                 mov     edx, [ebp+var_74]
.text:00000DDA                 mov     [esp+1F8h+var_1F8], ecx
.text:00000DDD                 mov     [esp+1F8h+var_1F4], edx
.text:00000DE1                 mov     ecx, [ebp+var_188]
.text:00000DE7                 mov     [esp+1F8h+var_1F0], ecx
.text:00000DEB                 mov     edx, [ebp+var_18C]
.text:00000DF1                 mov     [esp+1F8h+var_1EC], edx
.text:00000DF5                 mov     ebx, [ebp+var_168]
.text:00000DFB                 call    eax
.text:00000DFD                 mov     [ebp+var_78], eax
.text:00000E00                 cmp     [ebp+var_78], 0
.text:00000E07                 jnz     loc_E21
.text:00000E0D                 mov     eax, [ebp+var_168]
.text:00000E13                 lea     ecx, [eax-1992h]
.text:00000E19                 mov     [ebp+var_10], ecx
.text:00000E1C                 jmp     loc_13A6
.text:00000E21 ; ---------------------------------------------------------------------------
.text:00000E21
.text:00000E21 loc_E21:                                ; CODE XREF: sub_CA0+167j
.text:00000E21                 mov     eax, [ebp+var_14]
.text:00000E24                 mov     eax, [eax]
.text:00000E26                 mov     eax, [eax+88h]
.text:00000E2C                 mov     ecx, [ebp+var_14]
.text:00000E2F                 mov     edx, [ebp+var_18]
.text:00000E32                 mov     esi, [ebp+var_78]
.text:00000E35                 mov     [esp+1F8h+var_1F8], ecx
.text:00000E38                 mov     [esp+1F8h+var_1F4], edx
.text:00000E3C                 mov     [esp+1F8h+var_1F0], esi
.text:00000E40                 mov     ebx, [ebp+var_168]
.text:00000E46                 call    eax
.text:00000E48                 mov     [ebp+var_7C], eax
.text:00000E4B                 cmp     [ebp+var_7C], 0
.text:00000E52                 jnz     loc_E6C
.text:00000E58                 mov     eax, [ebp+var_168]
.text:00000E5E                 lea     ecx, [eax-1992h]
.text:00000E64                 mov     [ebp+var_10], ecx
.text:00000E67                 jmp     loc_13A6
.text:00000E6C ; ---------------------------------------------------------------------------
.text:00000E6C
.text:00000E6C loc_E6C:                                ; CODE XREF: sub_CA0+1B2j
.text:00000E6C                 lea     eax, [ebp+var_A0]
.text:00000E72                 lea     ecx, [ebp+var_8B]
.text:00000E78                 mov     edx, [ebp+var_168]
.text:00000E7E                 lea     esi, [edx-192Bh]
.text:00000E84                 mov     edi, 15h
.text:00000E89                 mov     ebx, [edx-193Ah]
.text:00000E8F                 mov     [ebp+var_8B], ebx
.text:00000E95                 mov     ebx, [edx-1936h]
.text:00000E9B                 mov     [ebp+var_87], ebx
.text:00000EA1                 mov     ebx, [edx-1932h]
.text:00000EA7                 mov     [ebp+var_83], ebx
.text:00000EAD                 mov     dx, [edx-192Eh]
.text:00000EB4                 mov     [ebp+var_7F], dx
.text:00000EB8                 mov     ebx, [ebp+var_168]
.text:00000EBE                 mov     dl, [ebx-192Ch]
.text:00000EC4                 mov     [ebp+var_7D], dl
.text:00000EC7                 mov     edx, eax
.text:00000EC9                 mov     [esp+1F8h+var_1F8], edx
.text:00000ECC                 mov     [esp+1F8h+var_1F4], esi
.text:00000ED0                 mov     [esp+1F8h+var_1F0], 15h
.text:00000ED8                 mov     [ebp+var_190], eax
.text:00000EDE                 mov     [ebp+var_194], ecx
.text:00000EE4                 mov     [ebp+var_198], edi
.text:00000EEA                 call    _memcpy
.text:00000EEF                 mov     eax, [ebp+var_14]
.text:00000EF2                 mov     eax, [eax]
.text:00000EF4                 mov     eax, [eax+84h]
.text:00000EFA                 mov     ecx, [ebp+var_14]
.text:00000EFD                 mov     edx, [ebp+var_74]
.text:00000F00                 mov     [esp+1F8h+var_1F8], ecx
.text:00000F03                 mov     [esp+1F8h+var_1F4], edx
.text:00000F07                 mov     ecx, [ebp+var_194]
.text:00000F0D                 mov     [esp+1F8h+var_1F0], ecx
.text:00000F11                 mov     edx, [ebp+var_190]
.text:00000F17                 mov     [esp+1F8h+var_1EC], edx
.text:00000F1B                 mov     ebx, [ebp+var_168]
.text:00000F21                 call    eax
.text:00000F23                 mov     [ebp+var_A4], eax
.text:00000F29                 cmp     [ebp+var_A4], 0
.text:00000F33                 jnz     loc_F4D
.text:00000F39                 mov     eax, [ebp+var_168]
.text:00000F3F                 lea     ecx, [eax-1992h]
.text:00000F45                 mov     [ebp+var_10], ecx
.text:00000F48                 jmp     loc_13A6
.text:00000F4D ; ---------------------------------------------------------------------------
.text:00000F4D
.text:00000F4D loc_F4D:                                ; CODE XREF: sub_CA0+293j
.text:00000F4D                 lea     eax, [ebp+var_15B]
.text:00000F53                 lea     ecx, [ebp+var_146]
.text:00000F59                 mov     edx, [ebp+var_168]
.text:00000F5F                 lea     esi, [edx-192Bh]
.text:00000F65                 mov     edi, 15h
.text:00000F6A                 mov     ebx, 0
.text:00000F6F                 lea     edx, [ebp+var_127]
.text:00000F75                 mov     [ebp+var_19C], eax
.text:00000F7B                 lea     eax, [ebp+var_107]
.text:00000F81                 mov     [ebp+var_1A0], eax
.text:00000F87                 mov     eax, [ebp+var_168]
.text:00000F8D                 lea     eax, [eax-18C6h]
.text:00000F93                 mov     [ebp+var_1A4], eax
.text:00000F99                 mov     eax, 20h
.text:00000F9E                 mov     [ebp+var_1A8], eax
.text:00000FA4                 mov     eax, 40h
.text:00000FA9                 mov     [ebp+var_1AC], eax
.text:00000FAF                 lea     eax, [ebp+var_F1]
.text:00000FB5                 mov     [ebp+var_1B0], eax
.text:00000FBB                 lea     eax, [ebp+var_BB]
.text:00000FC1                 mov     [ebp+var_1B4], eax
.text:00000FC7                 mov     eax, [ebp+var_168]
.text:00000FCD                 lea     eax, [eax-1907h]
.text:00000FD3                 mov     [ebp+var_1B8], eax
.text:00000FD9                 mov     eax, 36h
.text:00000FDE                 mov     [ebp+var_1BC], eax
.text:00000FE4                 mov     eax, [ebp+var_14]
.text:00000FE7                 mov     eax, [eax]
.text:00000FE9                 mov     eax, [eax+88h]
.text:00000FEF                 mov     [ebp+var_1C0], eax
.text:00000FF5                 mov     eax, [ebp+var_14]
.text:00000FF8                 mov     [ebp+var_1C4], eax
.text:00000FFE                 mov     eax, [ebp+var_18]
.text:00001001                 mov     [ebp+var_1C8], eax
.text:00001007                 mov     eax, [ebp+var_A4]
.text:0000100D                 mov     [ebp+var_1CC], eax
.text:00001013                 mov     eax, [ebp+var_1C4]
.text:00001019                 mov     [esp+1F8h+var_1F8], eax
.text:0000101C                 mov     eax, [ebp+var_1C8]
.text:00001022                 mov     [esp+1F8h+var_1F4], eax
.text:00001026                 mov     eax, [ebp+var_1CC]
.text:0000102C                 mov     [esp+1F8h+var_1F0], eax
.text:00001030                 mov     eax, [ebp+var_168]
.text:00001036                 mov     [ebp+var_1D0], ebx
.text:0000103C                 mov     ebx, eax
.text:0000103E                 mov     eax, [ebp+var_1C0]
.text:00001044                 mov     [ebp+var_1D4], ecx
.text:0000104A                 mov     [ebp+var_1D8], edx
.text:00001050                 mov     [ebp+var_1DC], esi
.text:00001056                 mov     [ebp+var_1E0], edi
.text:0000105C                 call    eax
.text:0000105E                 mov     [ebp+var_A8], eax
.text:00001064                 mov     eax, [ebp+var_14]
.text:00001067                 mov     eax, [eax]
.text:00001069                 mov     eax, [eax+7Ch]
.text:0000106C                 mov     ecx, [ebp+var_14]
.text:0000106F                 mov     edx, [ebp+var_7C]
.text:00001072                 mov     [esp+1F8h+var_1F8], ecx
.text:00001075                 mov     [esp+1F8h+var_1F4], edx
.text:00001079                 mov     ebx, [ebp+var_168]
.text:0000107F                 call    eax
.text:00001081                 mov     [ebp+var_AC], eax
.text:00001087                 mov     eax, [ebp+var_168]
.text:0000108D                 mov     ecx, [eax-1916h]
.text:00001093                 mov     [ebp+var_BB], ecx
.text:00001099                 mov     ecx, [eax-1912h]
.text:0000109F                 mov     [ebp+var_B7], ecx
.text:000010A5                 mov     ecx, [eax-190Eh]
.text:000010AB                 mov     [ebp+var_B3], ecx
.text:000010B1                 mov     si, [eax-190Ah]
.text:000010B8                 mov     [ebp+var_AF], si
.text:000010BF                 mov     al, [eax-1908h]
.text:000010C5                 mov     [ebp+var_AD], al
.text:000010CB                 mov     ecx, [ebp+var_1B0]
.text:000010D1                 mov     [esp+1F8h+var_1F8], ecx
.text:000010D4                 mov     ecx, [ebp+var_1B8]
.text:000010DA                 mov     [esp+1F8h+var_1F4], ecx
.text:000010DE                 mov     [esp+1F8h+var_1F0], 36h
.text:000010E6                 mov     ebx, [ebp+var_168]
.text:000010EC                 call    _memcpy
.text:000010F1                 mov     ecx, [ebp+var_14]
.text:000010F4                 mov     ecx, [ecx]
.text:000010F6                 mov     ecx, [ecx+84h]
.text:000010FC                 mov     edx, [ebp+var_14]
.text:000010FF                 mov     edi, [ebp+var_AC]
.text:00001105                 mov     [esp+1F8h+var_1F8], edx
.text:00001108                 mov     [esp+1F8h+var_1F4], edi
.text:0000110C                 mov     edx, [ebp+var_1B4]
.text:00001112                 mov     [esp+1F8h+var_1F0], edx
.text:00001116                 mov     edi, [ebp+var_1B0]
.text:0000111C                 mov     [esp+1F8h+var_1EC], edi
.text:00001120                 mov     ebx, [ebp+var_168]
.text:00001126                 call    ecx
.text:00001128                 mov     [ebp+var_F8], eax
.text:0000112E                 mov     eax, [ebp+var_14]
.text:00001131                 mov     eax, [eax]
.text:00001133                 mov     eax, [eax+88h]
.text:00001139                 mov     ecx, [ebp+var_14]
.text:0000113C                 mov     edx, [ebp+var_7C]
.text:0000113F                 mov     edi, [ebp+var_F8]
.text:00001145                 mov     ebx, [ebp+var_A8]
.text:0000114B                 mov     [esp+1F8h+var_1F8], ecx
.text:0000114E                 mov     [esp+1F8h+var_1F4], edx
.text:00001152                 mov     [esp+1F8h+var_1F0], edi
.text:00001156                 mov     [esp+1F8h+var_1EC], ebx
.text:0000115A                 mov     [esp+1F8h+var_1E8], 40h
.text:00001162                 mov     ebx, [ebp+var_168]
.text:00001168                 call    eax
.text:0000116A                 mov     [ebp+var_FC], eax
.text:00001170                 mov     eax, [ebp+var_168]
.text:00001176                 mov     ecx, [eax-18D1h]
.text:0000117C                 mov     [ebp+var_107], ecx
.text:00001182                 mov     ecx, [eax-18CDh]
.text:00001188                 mov     [ebp+var_103], ecx
.text:0000118E                 mov     si, [eax-18C9h]
.text:00001195                 mov     [ebp+var_FF], si
.text:0000119C                 mov     al, [eax-18C7h]
.text:000011A2                 mov     [ebp+var_FD], al
.text:000011A8                 mov     ecx, [ebp+var_1D8]
.text:000011AE                 mov     [esp+1F8h+var_1F8], ecx
.text:000011B1                 mov     ecx, [ebp+var_1A4]
.text:000011B7                 mov     [esp+1F8h+var_1F4], ecx
.text:000011BB                 mov     [esp+1F8h+var_1F0], 20h
.text:000011C3                 mov     ebx, [ebp+var_168]
.text:000011C9                 call    _memcpy
.text:000011CE                 mov     ecx, [ebp+var_14]
.text:000011D1                 mov     ecx, [ecx]
.text:000011D3                 mov     ecx, [ecx+7Ch]
.text:000011D6                 mov     edx, [ebp+var_14]
.text:000011D9                 mov     edi, [ebp+var_FC]
.text:000011DF                 mov     [esp+1F8h+var_1F8], edx
.text:000011E2                 mov     [esp+1F8h+var_1F4], edi
.text:000011E6                 mov     ebx, [ebp+var_168]
.text:000011EC                 call    ecx
.text:000011EE                 mov     [ebp+var_12C], eax
.text:000011F4                 mov     eax, [ebp+var_14]
.text:000011F7                 mov     eax, [eax]
.text:000011F9                 mov     eax, [eax+178h]
.text:000011FF                 mov     ecx, [ebp+var_14]
.text:00001202                 mov     edx, [ebp+var_12C]
.text:00001208                 mov     [esp+1F8h+var_1F8], ecx
.text:0000120B                 mov     [esp+1F8h+var_1F4], edx
.text:0000120F                 mov     ecx, [ebp+var_1A0]
.text:00001215                 mov     [esp+1F8h+var_1F0], ecx
.text:00001219                 mov     edx, [ebp+var_1D8]
.text:0000121F                 mov     [esp+1F8h+var_1EC], edx
.text:00001223                 mov     ebx, [ebp+var_168]
.text:00001229                 call    eax
.text:0000122B                 mov     [ebp+var_130], eax
.text:00001231                 mov     eax, [ebp+var_14]
.text:00001234                 mov     eax, [eax]
.text:00001236                 mov     eax, [eax+17Ch]
.text:0000123C                 mov     ecx, [ebp+var_14]
.text:0000123F                 mov     edx, [ebp+var_FC]
.text:00001245                 mov     edi, [ebp+var_130]
.text:0000124B                 mov     [esp+1F8h+var_1F8], ecx
.text:0000124E                 mov     [esp+1F8h+var_1F4], edx
.text:00001252                 mov     [esp+1F8h+var_1F0], edi
.text:00001256                 mov     ebx, [ebp+var_168]
.text:0000125C                 call    eax
.text:0000125E                 mov     [ebp+var_134], eax
.text:00001264                 mov     eax, [ebp+var_14]
.text:00001267                 mov     eax, [eax]
.text:00001269                 mov     eax, [eax+2B4h]
.text:0000126F                 mov     ecx, [ebp+var_14]
.text:00001272                 mov     edx, [ebp+var_134]
.text:00001278                 mov     [esp+1F8h+var_1F8], ecx
.text:0000127B                 mov     [esp+1F8h+var_1F4], edx
.text:0000127F                 mov     [esp+1F8h+var_1F0], 0
.text:00001287                 mov     ebx, [ebp+var_168]
.text:0000128D                 call    eax
.text:0000128F                 mov     [ebp+var_138], eax
.text:00001295                 mov     eax, [ebp+var_168]
.text:0000129B                 mov     ecx, [eax-18A6h]
.text:000012A1                 mov     [ebp+var_146], ecx
.text:000012A7                 mov     ecx, [eax-18A2h]
.text:000012AD                 mov     [ebp+var_142], ecx
.text:000012B3                 mov     ecx, [eax-189Eh]
.text:000012B9                 mov     [ebp+var_13E], ecx
.text:000012BF                 mov     si, [eax-189Ah]
.text:000012C6                 mov     [ebp+var_13A], si
.text:000012CD                 mov     ecx, [ebp+var_19C]
.text:000012D3                 mov     [esp+1F8h+var_1F8], ecx
.text:000012D6                 mov     ecx, [ebp+var_1DC]
.text:000012DC                 mov     [esp+1F8h+var_1F4], ecx
.text:000012E0                 mov     [esp+1F8h+var_1F0], 15h
.text:000012E8                 mov     ebx, eax
.text:000012EA                 call    _memcpy
.text:000012EF                 mov     eax, [ebp+var_14]
.text:000012F2                 mov     eax, [eax]
.text:000012F4                 mov     eax, [eax+7Ch]
.text:000012F7                 mov     ecx, [ebp+var_14]
.text:000012FA                 mov     edx, [ebp+var_138]
.text:00001300                 mov     [esp+1F8h+var_1F8], ecx
.text:00001303                 mov     [esp+1F8h+var_1F4], edx
.text:00001307                 mov     ebx, [ebp+var_168]
.text:0000130D                 call    eax
.text:0000130F                 mov     [ebp+var_160], eax
.text:00001315                 mov     eax, [ebp+var_14]
.text:00001318                 mov     eax, [eax]
.text:0000131A                 mov     eax, [eax+84h]
.text:00001320                 mov     ecx, [ebp+var_14]
.text:00001323                 mov     edx, [ebp+var_160]
.text:00001329                 mov     [esp+1F8h+var_1F8], ecx
.text:0000132C                 mov     [esp+1F8h+var_1F4], edx
.text:00001330                 mov     ecx, [ebp+var_1D4]
.text:00001336                 mov     [esp+1F8h+var_1F0], ecx
.text:0000133A                 mov     edx, [ebp+var_19C]
.text:00001340                 mov     [esp+1F8h+var_1EC], edx
.text:00001344                 mov     ebx, [ebp+var_168]
.text:0000134A                 call    eax
.text:0000134C                 mov     [ebp+var_164], eax
.text:00001352                 cmp     [ebp+var_164], 0
.text:0000135C                 jnz     loc_1376
.text:00001362                 mov     eax, [ebp+var_168]
.text:00001368                 lea     ecx, [eax-1992h]
.text:0000136E                 mov     [ebp+var_10], ecx
.text:00001371                 jmp     loc_13A6
.text:00001376 ; ---------------------------------------------------------------------------
.text:00001376
.text:00001376 loc_1376:                               ; CODE XREF: sub_CA0+6BCj
.text:00001376                 mov     eax, [ebp+var_14]
.text:00001379                 mov     eax, [eax]
.text:0000137B                 mov     eax, [eax+88h]
.text:00001381                 mov     ecx, [ebp+var_14]
.text:00001384                 mov     edx, [ebp+var_138]
.text:0000138A                 mov     esi, [ebp+var_164]
.text:00001390                 mov     [esp+1F8h+var_1F8], ecx
.text:00001393                 mov     [esp+1F8h+var_1F4], edx
.text:00001397                 mov     [esp+1F8h+var_1F0], esi
.text:0000139B                 mov     ebx, [ebp+var_168]
.text:000013A1                 call    eax
.text:000013A3                 mov     [ebp+var_10], eax
.text:000013A6
.text:000013A6 loc_13A6:                               ; CODE XREF: sub_CA0+17Cj
.text:000013A6                                         ; sub_CA0+1C7j ...
.text:000013A6                 mov     eax, [ebp+var_10]
.text:000013A9                 add     esp, 1ECh
.text:000013AF                 pop     esi
.text:000013B0                 pop     edi
.text:000013B1                 pop     ebx
.text:000013B2                 pop     ebp
.text:000013B3                 retn
.text:000013B3 sub_CA0         endp
.text:000013B3
.text:000013B3 ; ---------------------------------------------------------------------------
.text:000013B4                 align 10h
.text:000013C0
.text:000013C0 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
.text:000013C0
.text:000013C0 ; Attributes: bp-based frame
.text:000013C0
.text:000013C0 sub_13C0        proc near               ; CODE XREF: Java_io_casper_android_security_Security_getVerificationToken+D8p
.text:000013C0                                         ; Java_io_casper_android_security_Security_getVerificationToken+1A6p
.text:000013C0
.text:000013C0 var_B8          = dword ptr -0B8h
.text:000013C0 var_B4          = dword ptr -0B4h
.text:000013C0 var_B0          = dword ptr -0B0h
.text:000013C0 var_AC          = dword ptr -0ACh
.text:000013C0 var_A8          = dword ptr -0A8h
.text:000013C0 var_A4          = dword ptr -0A4h
.text:000013C0 var_A0          = dword ptr -0A0h
.text:000013C0 var_9C          = dword ptr -9Ch
.text:000013C0 var_98          = dword ptr -98h
.text:000013C0 var_94          = dword ptr -94h
.text:000013C0 var_90          = dword ptr -90h
.text:000013C0 var_8C          = dword ptr -8Ch
.text:000013C0 var_88          = dword ptr -88h
.text:000013C0 var_84          = dword ptr -84h
.text:000013C0 var_80          = dword ptr -80h
.text:000013C0 var_7C          = dword ptr -7Ch
.text:000013C0 var_78          = dword ptr -78h
.text:000013C0 var_74          = dword ptr -74h
.text:000013C0 var_70          = dword ptr -70h
.text:000013C0 var_6C          = dword ptr -6Ch
.text:000013C0 var_45          = dword ptr -45h
.text:000013C0 var_41          = dword ptr -41h
.text:000013C0 var_3D          = word ptr -3Dh
.text:000013C0 var_3B          = byte ptr -3Bh
.text:000013C0 var_3A          = dword ptr -3Ah
.text:000013C0 var_18          = dword ptr -18h
.text:000013C0 var_14          = dword ptr -14h
.text:000013C0 var_10          = dword ptr -10h
.text:000013C0 arg_0           = dword ptr  8
.text:000013C0 arg_4           = dword ptr  0Ch
.text:000013C0
.text:000013C0                 push    ebp
.text:000013C1                 mov     ebp, esp
.text:000013C3                 push    ebx
.text:000013C4                 push    edi
.text:000013C5                 push    esi
.text:000013C6                 sub     esp, 0ACh       ; void *
.text:000013CC                 call    $+5
.text:000013D1                 pop     eax
.text:000013D2                 add     eax, 1C07h
.text:000013D8                 mov     ecx, [ebp+arg_4]
.text:000013DB                 mov     edx, [ebp+arg_0]
.text:000013DE                 lea     esi, [ebp+var_6C]
.text:000013E1                 lea     edi, [ebp+var_45]
.text:000013E4                 lea     ebx, [ebp+var_3A]
.text:000013E7                 mov     [ebp+var_7C], eax
.text:000013EA                 lea     eax, [eax-19B9h]
.text:000013F0                 mov     [ebp+var_80], eax
.text:000013F3                 mov     eax, 27h
.text:000013F8                 mov     [ebp+var_84], eax
.text:000013FE                 mov     eax, [ebp+var_7C]
.text:00001401                 lea     eax, [eax-19E6h]
.text:00001407                 mov     [ebp+var_88], eax
.text:0000140D                 mov     eax, 22h
.text:00001412                 mov     [ebp+var_14], edx
.text:00001415                 mov     [ebp+var_18], ecx
.text:00001418                 mov     ecx, ebx
.text:0000141A                 mov     [esp+0B8h+var_B8], ecx
.text:0000141D                 mov     ecx, [ebp+var_88]
.text:00001423                 mov     [esp+0B8h+var_B4], ecx
.text:00001427                 mov     [esp+0B8h+var_B0], 22h
.text:0000142F                 mov     edx, [ebp+var_7C]
.text:00001432                 mov     [ebp+var_8C], ebx
.text:00001438                 mov     ebx, edx
.text:0000143A                 mov     [ebp+var_90], eax
.text:00001440                 mov     [ebp+var_94], edi
.text:00001446                 mov     [ebp+var_98], esi
.text:0000144C                 call    _memcpy
.text:00001451                 mov     eax, [ebp+var_7C]
.text:00001454                 mov     ecx, [eax-19C4h]
.text:0000145A                 mov     [ebp+var_45], ecx
.text:0000145D                 mov     ecx, [eax-19C0h]
.text:00001463                 mov     [ebp+var_41], ecx
.text:00001466                 mov     si, [eax-19BCh]
.text:0000146D                 mov     [ebp+var_3D], si
.text:00001471                 mov     al, [eax-19BAh]
.text:00001477                 mov     [ebp+var_3B], al
.text:0000147A                 mov     ecx, [ebp+var_98]
.text:00001480                 mov     [esp+0B8h+var_B8], ecx
.text:00001483                 mov     ecx, [ebp+var_80]
.text:00001486                 mov     [esp+0B8h+var_B4], ecx
.text:0000148A                 mov     [esp+0B8h+var_B0], 27h
.text:00001492                 mov     ebx, [ebp+var_7C]
.text:00001495                 call    _memcpy
.text:0000149A                 mov     ecx, [ebp+var_14]
.text:0000149D                 mov     ecx, [ecx]
.text:0000149F                 mov     ecx, [ecx+18h]
.text:000014A2                 mov     edx, [ebp+var_14]
.text:000014A5                 mov     [esp+0B8h+var_B8], edx
.text:000014A8                 mov     edx, [ebp+var_8C]
.text:000014AE                 mov     [esp+0B8h+var_B4], edx
.text:000014B2                 mov     ebx, [ebp+var_7C]
.text:000014B5                 call    ecx
.text:000014B7                 mov     [ebp+var_70], eax
.text:000014BA                 mov     eax, [ebp+var_14]
.text:000014BD                 mov     eax, [eax]
.text:000014BF                 mov     eax, [eax+1C4h]
.text:000014C5                 mov     ecx, [ebp+var_14]
.text:000014C8                 mov     edx, [ebp+var_70]
.text:000014CB                 mov     [esp+0B8h+var_B8], ecx
.text:000014CE                 mov     [esp+0B8h+var_B4], edx
.text:000014D2                 mov     ecx, [ebp+var_94]
.text:000014D8                 mov     [esp+0B8h+var_B0], ecx
.text:000014DC                 mov     edx, [ebp+var_98]
.text:000014E2                 mov     [esp+0B8h+var_AC], edx
.text:000014E6                 mov     ebx, [ebp+var_7C]
.text:000014E9                 call    eax
.text:000014EB                 mov     [ebp+var_74], eax
.text:000014EE                 cmp     [ebp+var_74], 0
.text:000014F5                 jnz     loc_150C
.text:000014FB                 mov     eax, [ebp+var_7C]
.text:000014FE                 lea     ecx, [eax-1992h]
.text:00001504                 mov     [ebp+var_10], ecx
.text:00001507                 jmp     loc_15BA
.text:0000150C ; ---------------------------------------------------------------------------
.text:0000150C
.text:0000150C loc_150C:                               ; CODE XREF: sub_13C0+135j
.text:0000150C                 mov     eax, [ebp+var_14]
.text:0000150F                 mov     eax, [eax]
.text:00001511                 mov     eax, [eax+1C8h]
.text:00001517                 mov     ecx, [ebp+var_14]
.text:0000151A                 mov     edx, [ebp+var_70]
.text:0000151D                 mov     esi, [ebp+var_74]
.text:00001520                 mov     edi, [ebp+var_14]
.text:00001523                 mov     edi, [edi]
.text:00001525                 mov     edi, [edi+29Ch]
.text:0000152B                 mov     ebx, [ebp+var_14]
.text:0000152E                 mov     [ebp+var_9C], eax
.text:00001534                 mov     eax, [ebp+var_18]
.text:00001537                 mov     [esp+0B8h+var_B8], ebx
.text:0000153A                 mov     [esp+0B8h+var_B4], eax
.text:0000153E                 mov     ebx, [ebp+var_7C]
.text:00001541                 mov     [ebp+var_A0], esi
.text:00001547                 mov     [ebp+var_A4], ecx
.text:0000154D                 mov     [ebp+var_A8], edx
.text:00001553                 call    edi
.text:00001555                 mov     ecx, [ebp+var_A4]
.text:0000155B                 mov     [esp+0B8h+var_B8], ecx
.text:0000155E                 mov     edx, [ebp+var_A8]
.text:00001564                 mov     [esp+0B8h+var_B4], edx
.text:00001568                 mov     esi, [ebp+var_A0]
.text:0000156E                 mov     [esp+0B8h+var_B0], esi
.text:00001572                 mov     [esp+0B8h+var_AC], eax
.text:00001576                 mov     ebx, [ebp+var_7C]
.text:00001579                 mov     eax, [ebp+var_9C]
.text:0000157F                 call    eax
.text:00001581                 mov     [ebp+var_78], eax
.text:00001584                 cmp     [ebp+var_78], 0
.text:0000158B                 jnz     loc_15A2
.text:00001591                 mov     eax, [ebp+var_7C]
.text:00001594                 lea     ecx, [eax-1992h]
.text:0000159A                 mov     [ebp+var_10], ecx
.text:0000159D                 jmp     loc_15BA
.text:000015A2 ; ---------------------------------------------------------------------------
.text:000015A2
.text:000015A2 loc_15A2:                               ; CODE XREF: sub_13C0+1CBj
.text:000015A2                 mov     eax, [ebp+var_14]
.text:000015A5                 mov     ecx, [ebp+var_78]
.text:000015A8                 mov     [esp+0B8h+var_B8], eax
.text:000015AB                 mov     [esp+0B8h+var_B4], ecx
.text:000015AF                 mov     ebx, [ebp+var_7C]
.text:000015B2                 call    sub_740
.text:000015B7                 mov     [ebp+var_10], eax
.text:000015BA
.text:000015BA loc_15BA:                               ; CODE XREF: sub_13C0+147j
.text:000015BA                                         ; sub_13C0+1DDj
.text:000015BA                 mov     eax, [ebp+var_10]
.text:000015BD                 add     esp, 0ACh
.text:000015C3                 pop     esi
.text:000015C4                 pop     edi
.text:000015C5                 pop     ebx
.text:000015C6                 pop     ebp
.text:000015C7                 retn
.text:000015C7 sub_13C0        endp
.text:000015C7
.text:000015C7 _text           ends
.text:000015C7

;
;
;		SNIP
;
;

rodata:000015C8 _rodata         segment byte public 'CONST' use32
.rodata:000015C8                 assume cs:_rodata
.rodata:000015C8                 ;org 15C8h
.rodata:000015C8 ac789742f186a16 db 'c789742f186a167dd73e59b1ce3d4873',0	; modified for pricacy
.rodata:000015E9 aSSS            db '%s|%s|%s',0
.rodata:000015F2 aIoCasperAndroi db 'io/casper/android/util/CryptoUtil',0
.rodata:00001614 aGetmd5hash     db 'getMD5Hash',0
.rodata:0000161F aLjavaLangStrin db '(Ljava/lang/String;)Ljava/lang/String;',0
.rodata:00001646                 db    0
.rodata:00001647 aAndroidContent db 'android/content/ContextWrapper',0
.rodata:00001666 aGetpackagemana db 'getPackageManager',0
.rodata:00001678 aLandroidConten db '()Landroid/content/pm/PackageManager;',0
.rodata:0000169E aGetpackagename db 'getPackageName',0
.rodata:000016AD aLjavaLangStr_0 db '()Ljava/lang/String;',0
.rodata:000016C2 aGetpackageinfo db 'getPackageInfo',0
.rodata:000016D1 aLjavaLangStr_1 db '(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;',0
.rodata:00001707 aSignatures     db 'signatures',0
.rodata:00001712 aLandroidCont_0 db '[Landroid/content/pm/Signature;',0
.rodata:00001732 aTocharsstring  db 'toCharsString',0
.rodata:00001740 aUtf8           db 'utf-8',0
.rodata:00001746 aJavaLangString db 'java/lang/String',0
.rodata:00001757 aGetbytes       db 'getBytes',0
.rodata:00001760 aLjavaLangStr_2 db '(Ljava/lang/String;)[B',0
.rodata:00001760 _rodata         ends

