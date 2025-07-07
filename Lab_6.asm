
_main:

;Lab_6.c,5 :: 		void main() {
;Lab_6.c,7 :: 		CMCON = 0x07;
	MOVLW      7
	MOVWF      CMCON+0
;Lab_6.c,8 :: 		TRISA = 0x07;
	MOVLW      7
	MOVWF      TRISA+0
;Lab_6.c,9 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;Lab_6.c,10 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;Lab_6.c,12 :: 		while(1) {
L_main0:
;Lab_6.c,14 :: 		if (!Forward) {
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_main2
;Lab_6.c,15 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;Lab_6.c,16 :: 		RB0_bit = 1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;Lab_6.c,17 :: 		RB1_bit = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;Lab_6.c,18 :: 		RB2_bit = 0;
	BCF        RB2_bit+0, BitPos(RB2_bit+0)
;Lab_6.c,19 :: 		}
	GOTO       L_main3
L_main2:
;Lab_6.c,21 :: 		else if (!Reverse) {
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_main4
;Lab_6.c,22 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;Lab_6.c,23 :: 		RB0_bit = 1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;Lab_6.c,24 :: 		RB1_bit = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Lab_6.c,25 :: 		RB2_bit = 1;
	BSF        RB2_bit+0, BitPos(RB2_bit+0)
;Lab_6.c,26 :: 		}
	GOTO       L_main5
L_main4:
;Lab_6.c,28 :: 		else if (!Brake) {
	BTFSC      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_main6
;Lab_6.c,29 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;Lab_6.c,30 :: 		}
L_main6:
L_main5:
L_main3:
;Lab_6.c,31 :: 		}
	GOTO       L_main0
;Lab_6.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
