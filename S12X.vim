"Vim syntax file
"Language: 9S12X for the Freescale S12X-series microprocessor with syntax
"highlighting for PEMicro assembler/compiler keywords
"Maintainer: steve (troniczomb@gmail.com) 
"Updated: 2015-11-21
"
"
if exists("b:current_syntax")
    finish
endif

"S12X instruction keywords
syn keyword sxKeywords ADCA ADCB ADDA ADDB ADDD ANDA ANDB ASL ASR BCC BCLR BCS BEQ BGE BGT BHI BHS BITA BITB BLE BLO BLS BLT BMI BNE BPL BRA BRCLR BRN BRSET BSET BSR BVC BVS CLR CMPA CMPB COM CPD CPX CPY DEC EORA EORB INC JMP JSR LDAA LDAB LDD LDS LDX LDY LSL LSR NEG ORAA ORAB ROL ROR SBCA SBCB STAA STAB STD STS STX STY SUBA SUBB SUBD TST ADDX ADDY ADED ADEX ADEY ANDCC ANDX ANDY ASLW ASRW BITX BITY BTAS CALL CLRW COMW CPED CPES CPEX CPEY CPS DBEQ DBNE DECW EMACS EMAXD EMAXM EMIND EMINM EORX EORY ETBL EXG GLDAA GLDAB GLDD GLDS GLDX GLDY GSTAA GSTAB GSTD GSTS GSTX GSTY IBEQ IBNE INCW LBCC LBCS LBEQ LBGE LBGT LBHI LBHS LBLE LBLO LBLS LBLT LBMI LBNE LBPL LBRA LBRN LBRVC LBVS LEAS LEAX LEAY LSLW LSRW MAXA MAXM MEM MINA MINM MOVB MOVW NEGW ORCC ORX ORY REV REVW ROLW RORW SBED SBEX SBEY SEX SUBX SUBY TBEQ TBL TBNE TFR TRAP TSTW WAV

"S12X inherent instruction keywords
syn keyword sxInhKeywords ABA ABX ABY ASLA ASLB ASLD ASRA ASRB CBA CLC CLI CLRA CLRB CLV COMA COMB DAA DECA DECB DES DEX DEY FDIV IDIV INCA INCB INS INX INY LSLA LSLB LSLD LSRA LSRB LSRD MUL NEGA NEGB NOP PSHA PSHB PSHX PSHY PULA PULB PULX PULY ROLA ROLB RORA RORB RTI RTS SBA SEC SEI SEV STOP SWI TAB TAP TBA TPA TSTA TSTB TSX TSY TXS TYS WAI XGDX XGDY ASLX ASLY ASRX ASRY BGND CLRX CLRY COMX COMY DECX DECY EDIV EDIVS EMIL EMLS IDIVS INCX INCY LSLX LSLY LSRX LSRY NEGX NEGY PSHC PSHCW PSHD PULC PULCW OULD ROLX ROLY RORX RORY RTC SYS TSTX TSTY

"PEMicro pseudo ops/assembler/compiler/precompiler keywords
syn keyword pemicroKeywords ALIGN_WORD ALIGN_LONG DB FCB DS RMB DW FDB EQU ORG PCALL

"strings
syn region sxString start="'" end="'"

"decimal (integer) numbers
syn match sxNumber '\<\d\+\>'
syn match sxNumber '\<[-+]\d\+\>'
syn match sxNumber '\<[!]\d\+\>'
syn match sxNumber '\<\d\+[T]\>'

"binary numbers
syn match sxNumber '\<[01]\+\>'
syn match sxNumber '[%]\<[01]\+\>'
syn match sxNumber '\<[01]\+[Q]\>'

"hex numbers
syn match sxNumber '\<\x\+\>'
syn match sxNumber '[$]\<\x\+\>'
syn match sxNumber '\<\x\+[H]\>'

"operators
"syn match sxOperator '[{}*\/+-><%&|^()]'

"immediate values
syn match sxImmediate '[#][!$%]\?[^;, ]\+'

"pemicro assembler/compiler/precompiler indicators
syn match sxPEMicro '[#$%]\(EJECT\|HEADER\|NOLIST\|LIST\|SUBHEADER\|PAGELENGTH\|PAGEWIDTH\|PAGE\|IF\|ELIF\|ELSE\|ENDIF\|INCLUDE\|BASE\|CYCLE_ADDR_ON\|CYCLE_ADDR_OFF\|HC12\|HCS12\|IFNOT\|MACRO\|MACROEND\|PAGE_CHECK\|SET\|SETNOT\)'
syn match sxPEMicro '\(ALIGN.W\|ALIGN.L\)'

"comments and comment keywords
syn keyword sxTodo containedin=sxComment contained TODO FIXME NOTE
syn match sxComment ';.*$' contains=sxTodo

"prefer to use custom colors defined in vimrc
"not fully tested, put here for others' compatibility 
"hi def link sxKeywords Function
"hi def link sxInhKeywords Function
"hi def link pemicroKeywords Function
"hi def link sxNumber Number
"hi def link sxImmediate Number
"hi def link sxTodo Todo
"hi def link sxComment Comment
"hi def link sxOperator Operator

let b:current_syntax = "S12X"
