level03:     file format elf32-i386


Disassembly of section .init:

08048340 <_init>:
 8048340:	53                   	push   ebx
 8048341:	83 ec 08             	sub    esp,0x8
 8048344:	e8 00 00 00 00       	call   8048349 <_init+0x9>
 8048349:	5b                   	pop    ebx
 804834a:	81 c3 ab 1c 00 00    	add    ebx,0x1cab
 8048350:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 8048356:	85 c0                	test   eax,eax
 8048358:	74 05                	je     804835f <_init+0x1f>
 804835a:	e8 61 00 00 00       	call   80483c0 <__gmon_start__@plt>
 804835f:	e8 1c 01 00 00       	call   8048480 <frame_dummy>
 8048364:	e8 27 02 00 00       	call   8048590 <__do_global_ctors_aux>
 8048369:	83 c4 08             	add    esp,0x8
 804836c:	5b                   	pop    ebx
 804836d:	c3                   	ret    

Disassembly of section .plt:

08048370 <setresuid@plt-0x10>:
 8048370:	ff 35 f8 9f 04 08    	push   DWORD PTR ds:0x8049ff8
 8048376:	ff 25 fc 9f 04 08    	jmp    DWORD PTR ds:0x8049ffc
 804837c:	00 00                	add    BYTE PTR [eax],al
	...

08048380 <setresuid@plt>:
 8048380:	ff 25 00 a0 04 08    	jmp    DWORD PTR ds:0x804a000
 8048386:	68 00 00 00 00       	push   0x0
 804838b:	e9 e0 ff ff ff       	jmp    8048370 <_init+0x30>

08048390 <geteuid@plt>:
 8048390:	ff 25 04 a0 04 08    	jmp    DWORD PTR ds:0x804a004
 8048396:	68 08 00 00 00       	push   0x8
 804839b:	e9 d0 ff ff ff       	jmp    8048370 <_init+0x30>

080483a0 <getegid@plt>:
 80483a0:	ff 25 08 a0 04 08    	jmp    DWORD PTR ds:0x804a008
 80483a6:	68 10 00 00 00       	push   0x10
 80483ab:	e9 c0 ff ff ff       	jmp    8048370 <_init+0x30>

080483b0 <system@plt>:
 80483b0:	ff 25 0c a0 04 08    	jmp    DWORD PTR ds:0x804a00c
 80483b6:	68 18 00 00 00       	push   0x18
 80483bb:	e9 b0 ff ff ff       	jmp    8048370 <_init+0x30>

080483c0 <__gmon_start__@plt>:
 80483c0:	ff 25 10 a0 04 08    	jmp    DWORD PTR ds:0x804a010
 80483c6:	68 20 00 00 00       	push   0x20
 80483cb:	e9 a0 ff ff ff       	jmp    8048370 <_init+0x30>

080483d0 <__libc_start_main@plt>:
 80483d0:	ff 25 14 a0 04 08    	jmp    DWORD PTR ds:0x804a014
 80483d6:	68 28 00 00 00       	push   0x28
 80483db:	e9 90 ff ff ff       	jmp    8048370 <_init+0x30>

080483e0 <setresgid@plt>:
 80483e0:	ff 25 18 a0 04 08    	jmp    DWORD PTR ds:0x804a018
 80483e6:	68 30 00 00 00       	push   0x30
 80483eb:	e9 80 ff ff ff       	jmp    8048370 <_init+0x30>

Disassembly of section .text:

080483f0 <_start>:
 80483f0:	31 ed                	xor    ebp,ebp
 80483f2:	5e                   	pop    esi
 80483f3:	89 e1                	mov    ecx,esp
 80483f5:	83 e4 f0             	and    esp,0xfffffff0
 80483f8:	50                   	push   eax
 80483f9:	54                   	push   esp
 80483fa:	52                   	push   edx
 80483fb:	68 80 85 04 08       	push   0x8048580
 8048400:	68 10 85 04 08       	push   0x8048510
 8048405:	51                   	push   ecx
 8048406:	56                   	push   esi
 8048407:	68 a4 84 04 08       	push   0x80484a4
 804840c:	e8 bf ff ff ff       	call   80483d0 <__libc_start_main@plt>
 8048411:	f4                   	hlt    
 8048412:	90                   	nop
 8048413:	90                   	nop
 8048414:	90                   	nop
 8048415:	90                   	nop
 8048416:	90                   	nop
 8048417:	90                   	nop
 8048418:	90                   	nop
 8048419:	90                   	nop
 804841a:	90                   	nop
 804841b:	90                   	nop
 804841c:	90                   	nop
 804841d:	90                   	nop
 804841e:	90                   	nop
 804841f:	90                   	nop

08048420 <__do_global_dtors_aux>:
 8048420:	55                   	push   ebp
 8048421:	89 e5                	mov    ebp,esp
 8048423:	53                   	push   ebx
 8048424:	83 ec 04             	sub    esp,0x4
 8048427:	80 3d 24 a0 04 08 00 	cmp    BYTE PTR ds:0x804a024,0x0
 804842e:	75 3f                	jne    804846f <__do_global_dtors_aux+0x4f>
 8048430:	a1 28 a0 04 08       	mov    eax,ds:0x804a028
 8048435:	bb 20 9f 04 08       	mov    ebx,0x8049f20
 804843a:	81 eb 1c 9f 04 08    	sub    ebx,0x8049f1c
 8048440:	c1 fb 02             	sar    ebx,0x2
 8048443:	83 eb 01             	sub    ebx,0x1
 8048446:	39 d8                	cmp    eax,ebx
 8048448:	73 1e                	jae    8048468 <__do_global_dtors_aux+0x48>
 804844a:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048450:	83 c0 01             	add    eax,0x1
 8048453:	a3 28 a0 04 08       	mov    ds:0x804a028,eax
 8048458:	ff 14 85 1c 9f 04 08 	call   DWORD PTR [eax*4+0x8049f1c]
 804845f:	a1 28 a0 04 08       	mov    eax,ds:0x804a028
 8048464:	39 d8                	cmp    eax,ebx
 8048466:	72 e8                	jb     8048450 <__do_global_dtors_aux+0x30>
 8048468:	c6 05 24 a0 04 08 01 	mov    BYTE PTR ds:0x804a024,0x1
 804846f:	83 c4 04             	add    esp,0x4
 8048472:	5b                   	pop    ebx
 8048473:	5d                   	pop    ebp
 8048474:	c3                   	ret    
 8048475:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 8048479:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048480 <frame_dummy>:
 8048480:	55                   	push   ebp
 8048481:	89 e5                	mov    ebp,esp
 8048483:	83 ec 18             	sub    esp,0x18
 8048486:	a1 24 9f 04 08       	mov    eax,ds:0x8049f24
 804848b:	85 c0                	test   eax,eax
 804848d:	74 12                	je     80484a1 <frame_dummy+0x21>
 804848f:	b8 00 00 00 00       	mov    eax,0x0
 8048494:	85 c0                	test   eax,eax
 8048496:	74 09                	je     80484a1 <frame_dummy+0x21>
 8048498:	c7 04 24 24 9f 04 08 	mov    DWORD PTR [esp],0x8049f24
 804849f:	ff d0                	call   eax
 80484a1:	c9                   	leave  
 80484a2:	c3                   	ret    
 80484a3:	90                   	nop

080484a4 <main>:
 80484a4:	55                   	push   ebp
 80484a5:	89 e5                	mov    ebp,esp
 80484a7:	83 e4 f0             	and    esp,0xfffffff0
 80484aa:	83 ec 20             	sub    esp,0x20
 80484ad:	e8 ee fe ff ff       	call   80483a0 <getegid@plt>
 80484b2:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
 80484b6:	e8 d5 fe ff ff       	call   8048390 <geteuid@plt>
 80484bb:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
 80484bf:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 80484c3:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80484c7:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 80484cb:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80484cf:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
 80484d3:	89 04 24             	mov    DWORD PTR [esp],eax
 80484d6:	e8 05 ff ff ff       	call   80483e0 <setresgid@plt>
 80484db:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 80484df:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80484e3:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 80484e7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80484eb:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
 80484ef:	89 04 24             	mov    DWORD PTR [esp],eax
 80484f2:	e8 89 fe ff ff       	call   8048380 <setresuid@plt>
 80484f7:	c7 04 24 e0 85 04 08 	mov    DWORD PTR [esp],0x80485e0
 80484fe:	e8 ad fe ff ff       	call   80483b0 <system@plt>
 8048503:	c9                   	leave  
 8048504:	c3                   	ret    
 8048505:	90                   	nop
 8048506:	90                   	nop
 8048507:	90                   	nop
 8048508:	90                   	nop
 8048509:	90                   	nop
 804850a:	90                   	nop
 804850b:	90                   	nop
 804850c:	90                   	nop
 804850d:	90                   	nop
 804850e:	90                   	nop
 804850f:	90                   	nop

08048510 <__libc_csu_init>:
 8048510:	55                   	push   ebp
 8048511:	57                   	push   edi
 8048512:	56                   	push   esi
 8048513:	53                   	push   ebx
 8048514:	e8 69 00 00 00       	call   8048582 <__i686.get_pc_thunk.bx>
 8048519:	81 c3 db 1a 00 00    	add    ebx,0x1adb
 804851f:	83 ec 1c             	sub    esp,0x1c
 8048522:	8b 6c 24 30          	mov    ebp,DWORD PTR [esp+0x30]
 8048526:	8d bb 20 ff ff ff    	lea    edi,[ebx-0xe0]
 804852c:	e8 0f fe ff ff       	call   8048340 <_init>
 8048531:	8d 83 20 ff ff ff    	lea    eax,[ebx-0xe0]
 8048537:	29 c7                	sub    edi,eax
 8048539:	c1 ff 02             	sar    edi,0x2
 804853c:	85 ff                	test   edi,edi
 804853e:	74 29                	je     8048569 <__libc_csu_init+0x59>
 8048540:	31 f6                	xor    esi,esi
 8048542:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 8048548:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
 804854c:	89 2c 24             	mov    DWORD PTR [esp],ebp
 804854f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048553:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
 8048557:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804855b:	ff 94 b3 20 ff ff ff 	call   DWORD PTR [ebx+esi*4-0xe0]
 8048562:	83 c6 01             	add    esi,0x1
 8048565:	39 fe                	cmp    esi,edi
 8048567:	75 df                	jne    8048548 <__libc_csu_init+0x38>
 8048569:	83 c4 1c             	add    esp,0x1c
 804856c:	5b                   	pop    ebx
 804856d:	5e                   	pop    esi
 804856e:	5f                   	pop    edi
 804856f:	5d                   	pop    ebp
 8048570:	c3                   	ret    
 8048571:	eb 0d                	jmp    8048580 <__libc_csu_fini>
 8048573:	90                   	nop
 8048574:	90                   	nop
 8048575:	90                   	nop
 8048576:	90                   	nop
 8048577:	90                   	nop
 8048578:	90                   	nop
 8048579:	90                   	nop
 804857a:	90                   	nop
 804857b:	90                   	nop
 804857c:	90                   	nop
 804857d:	90                   	nop
 804857e:	90                   	nop
 804857f:	90                   	nop

08048580 <__libc_csu_fini>:
 8048580:	f3 c3                	repz ret 

08048582 <__i686.get_pc_thunk.bx>:
 8048582:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 8048585:	c3                   	ret    
 8048586:	90                   	nop
 8048587:	90                   	nop
 8048588:	90                   	nop
 8048589:	90                   	nop
 804858a:	90                   	nop
 804858b:	90                   	nop
 804858c:	90                   	nop
 804858d:	90                   	nop
 804858e:	90                   	nop
 804858f:	90                   	nop

08048590 <__do_global_ctors_aux>:
 8048590:	55                   	push   ebp
 8048591:	89 e5                	mov    ebp,esp
 8048593:	53                   	push   ebx
 8048594:	83 ec 04             	sub    esp,0x4
 8048597:	a1 14 9f 04 08       	mov    eax,ds:0x8049f14
 804859c:	83 f8 ff             	cmp    eax,0xffffffff
 804859f:	74 13                	je     80485b4 <__do_global_ctors_aux+0x24>
 80485a1:	bb 14 9f 04 08       	mov    ebx,0x8049f14
 80485a6:	66 90                	xchg   ax,ax
 80485a8:	83 eb 04             	sub    ebx,0x4
 80485ab:	ff d0                	call   eax
 80485ad:	8b 03                	mov    eax,DWORD PTR [ebx]
 80485af:	83 f8 ff             	cmp    eax,0xffffffff
 80485b2:	75 f4                	jne    80485a8 <__do_global_ctors_aux+0x18>
 80485b4:	83 c4 04             	add    esp,0x4
 80485b7:	5b                   	pop    ebx
 80485b8:	5d                   	pop    ebp
 80485b9:	c3                   	ret    
 80485ba:	90                   	nop
 80485bb:	90                   	nop

Disassembly of section .fini:

080485bc <_fini>:
 80485bc:	53                   	push   ebx
 80485bd:	83 ec 08             	sub    esp,0x8
 80485c0:	e8 00 00 00 00       	call   80485c5 <_fini+0x9>
 80485c5:	5b                   	pop    ebx
 80485c6:	81 c3 2f 1a 00 00    	add    ebx,0x1a2f
 80485cc:	e8 4f fe ff ff       	call   8048420 <__do_global_dtors_aux>
 80485d1:	83 c4 08             	add    esp,0x8
 80485d4:	5b                   	pop    ebx
 80485d5:	c3                   	ret    
