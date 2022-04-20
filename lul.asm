;(a,b - float[dword]; d - int[dword])

;(1+7*b/2)/(a+b*2/d)

;b 2 / 7 * 1 +
;b 2 * d / a +

section .data
	extern a, b, d, top, bot, res
	x: dd 0
section .text
	global a_clac

a_clac:
	fld dword[b]		;Числяптюль
	mov dword[x], 2		
	fild dword[x]
	fdivp
	mov dword[x], 7
	fild dword[x]
	fmulp
	fld1
	faddp
	fst dword[top]

	fld dword[b]		;Знаменаптюль
	mov dword[x], 2
	fild dword[x]
	fmulp
	fild dword[d]
	fdivp
	fld dword[a]
	faddp
	fst dword[bot]

	fdivp
	fstp dword[res]
	ret
