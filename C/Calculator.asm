
_key5_init:

;lib.h,43 :: 		void key5_init()               // TRIS = 1  ===> INPUT DATA
;lib.h,45 :: 		TRISC.B0 = 1;
	BSF        TRISC+0, 0
;lib.h,46 :: 		TRISC.B1 = 1;
	BSF        TRISC+0, 1
;lib.h,47 :: 		TRISC.B2 = 1;
	BSF        TRISC+0, 2
;lib.h,48 :: 		TRISC.B3 = 1;
	BSF        TRISC+0, 3
;lib.h,49 :: 		TRISC.B4 = 1;
	BSF        TRISC+0, 4
;lib.h,50 :: 		TRISC.B5 = 0;
	BCF        TRISC+0, 5
;lib.h,51 :: 		TRISC.B6 = 0,
	BCF        TRISC+0, 6
;lib.h,52 :: 		TRISC.B7 = 0;
	BCF        TRISC+0, 7
;lib.h,53 :: 		TRISD.B0 = 0;
	BCF        TRISD+0, 0
;lib.h,54 :: 		TRISD.B1 = 0;
	BCF        TRISD+0, 1
;lib.h,56 :: 		}
L_end_key5_init:
	RETURN
; end of _key5_init

_key5_press:

;lib.h,58 :: 		char key5_press()     // Scan press key and return it
;lib.h,60 :: 		char key = '\0';
	CLRF       key5_press_key_L0+0
;lib.h,62 :: 		COL1 =1;
	BSF        RC5_bit+0, BitPos(RC5_bit+0)
;lib.h,63 :: 		if(ROW1==1) key= '1';
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_key5_press0
	MOVLW      49
	MOVWF      key5_press_key_L0+0
L_key5_press0:
;lib.h,64 :: 		if(ROW2==1) key= '4';
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_key5_press1
	MOVLW      52
	MOVWF      key5_press_key_L0+0
L_key5_press1:
;lib.h,65 :: 		if(ROW3==1) key= '7';
	BTFSS      RC2_bit+0, BitPos(RC2_bit+0)
	GOTO       L_key5_press2
	MOVLW      55
	MOVWF      key5_press_key_L0+0
L_key5_press2:
;lib.h,66 :: 		if(ROW4==1) key= 'x';
	BTFSS      RC3_bit+0, BitPos(RC3_bit+0)
	GOTO       L_key5_press3
	MOVLW      120
	MOVWF      key5_press_key_L0+0
L_key5_press3:
;lib.h,67 :: 		if(ROW5==1) key= 's';     // s:sin
	BTFSS      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_key5_press4
	MOVLW      115
	MOVWF      key5_press_key_L0+0
L_key5_press4:
;lib.h,68 :: 		COL1=0;
	BCF        RC5_bit+0, BitPos(RC5_bit+0)
;lib.h,70 :: 		COL2 =1;
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
;lib.h,71 :: 		if(ROW1==1) key= '2';
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_key5_press5
	MOVLW      50
	MOVWF      key5_press_key_L0+0
L_key5_press5:
;lib.h,72 :: 		if(ROW2==1) key= '5';
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_key5_press6
	MOVLW      53
	MOVWF      key5_press_key_L0+0
L_key5_press6:
;lib.h,73 :: 		if(ROW3==1) key= '8';
	BTFSS      RC2_bit+0, BitPos(RC2_bit+0)
	GOTO       L_key5_press7
	MOVLW      56
	MOVWF      key5_press_key_L0+0
L_key5_press7:
;lib.h,74 :: 		if(ROW4==1) key= '0';
	BTFSS      RC3_bit+0, BitPos(RC3_bit+0)
	GOTO       L_key5_press8
	MOVLW      48
	MOVWF      key5_press_key_L0+0
L_key5_press8:
;lib.h,75 :: 		if(ROW5==1) key= 'c';     // c: cos
	BTFSS      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_key5_press9
	MOVLW      99
	MOVWF      key5_press_key_L0+0
L_key5_press9:
;lib.h,76 :: 		COL2=0;
	BCF        RC6_bit+0, BitPos(RC6_bit+0)
;lib.h,78 :: 		COL3 =1;
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
;lib.h,79 :: 		if(ROW1==1) key= '3';
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_key5_press10
	MOVLW      51
	MOVWF      key5_press_key_L0+0
L_key5_press10:
;lib.h,80 :: 		if(ROW2==1) key= '6';
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_key5_press11
	MOVLW      54
	MOVWF      key5_press_key_L0+0
L_key5_press11:
;lib.h,81 :: 		if(ROW3==1) key= '9';
	BTFSS      RC2_bit+0, BitPos(RC2_bit+0)
	GOTO       L_key5_press12
	MOVLW      57
	MOVWF      key5_press_key_L0+0
L_key5_press12:
;lib.h,82 :: 		if(ROW4==1) key= '.';
	BTFSS      RC3_bit+0, BitPos(RC3_bit+0)
	GOTO       L_key5_press13
	MOVLW      46
	MOVWF      key5_press_key_L0+0
L_key5_press13:
;lib.h,83 :: 		if(ROW5==1) key= 'l';     // t: tan
	BTFSS      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_key5_press14
	MOVLW      108
	MOVWF      key5_press_key_L0+0
L_key5_press14:
;lib.h,84 :: 		COL3=0;
	BCF        RC7_bit+0, BitPos(RC7_bit+0)
;lib.h,86 :: 		COL4 =1;
	BSF        RD0_bit+0, BitPos(RD0_bit+0)
;lib.h,87 :: 		if(ROW1==1) key= '+';
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_key5_press15
	MOVLW      43
	MOVWF      key5_press_key_L0+0
L_key5_press15:
;lib.h,88 :: 		if(ROW2==1) key= '-';
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_key5_press16
	MOVLW      45
	MOVWF      key5_press_key_L0+0
L_key5_press16:
;lib.h,89 :: 		if(ROW3==1) key= '*';     // l: log
	BTFSS      RC2_bit+0, BitPos(RC2_bit+0)
	GOTO       L_key5_press17
	MOVLW      42
	MOVWF      key5_press_key_L0+0
L_key5_press17:
;lib.h,90 :: 		if(ROW4==1) key= '/';     // e: exp
	BTFSS      RC3_bit+0, BitPos(RC3_bit+0)
	GOTO       L_key5_press18
	MOVLW      47
	MOVWF      key5_press_key_L0+0
L_key5_press18:
;lib.h,91 :: 		if(ROW5==1) key= 'e';
	BTFSS      RC4_bit+0, BitPos(RC4_bit+0)
	GOTO       L_key5_press19
	MOVLW      101
	MOVWF      key5_press_key_L0+0
L_key5_press19:
;lib.h,92 :: 		COL4=0;
	BCF        RD0_bit+0, BitPos(RD0_bit+0)
;lib.h,94 :: 		COL5 =1;
	BSF        RD1_bit+0, BitPos(RD1_bit+0)
;lib.h,95 :: 		if(ROW1==1) key= 'a';     // a: AC ~ Reset
	BTFSS      RC0_bit+0, BitPos(RC0_bit+0)
	GOTO       L_key5_press20
	MOVLW      97
	MOVWF      key5_press_key_L0+0
L_key5_press20:
;lib.h,96 :: 		if(ROW2==1) key= '=';
	BTFSS      RC1_bit+0, BitPos(RC1_bit+0)
	GOTO       L_key5_press21
	MOVLW      61
	MOVWF      key5_press_key_L0+0
L_key5_press21:
;lib.h,97 :: 		COL5=0;
	BCF        RD1_bit+0, BitPos(RD1_bit+0)
;lib.h,99 :: 		return key;
	MOVF       key5_press_key_L0+0, 0
	MOVWF      R0+0
;lib.h,100 :: 		}
L_end_key5_press:
	RETURN
; end of _key5_press

_ResetCal:

;lib.h,102 :: 		void ResetCal()
;lib.h,104 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lib.h,105 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lib.h,106 :: 		numBefore = 0;
	CLRF       Calculator_numBefore+0
	CLRF       Calculator_numBefore+1
	CLRF       Calculator_numBefore+2
	CLRF       Calculator_numBefore+3
;lib.h,107 :: 		numAfter = 0;
	CLRF       Calculator_numAfter+0
	CLRF       Calculator_numAfter+1
	CLRF       Calculator_numAfter+2
	CLRF       Calculator_numAfter+3
;lib.h,108 :: 		numResult = 0;
	CLRF       Calculator_numResult+0
	CLRF       Calculator_numResult+1
	CLRF       Calculator_numResult+2
	CLRF       Calculator_numResult+3
;lib.h,109 :: 		for(i = 0; i < 6; i++) strNumber[i] = '\0';
	CLRF       Calculator_i+0
	CLRF       Calculator_i+1
L_ResetCal22:
	MOVLW      128
	XORWF      Calculator_i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__ResetCal135
	MOVLW      6
	SUBWF      Calculator_i+0, 0
L__ResetCal135:
	BTFSC      STATUS+0, 0
	GOTO       L_ResetCal23
	MOVF       Calculator_i+0, 0
	ADDLW      Calculator_strNumber+0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       Calculator_i+0, 1
	BTFSC      STATUS+0, 2
	INCF       Calculator_i+1, 1
	GOTO       L_ResetCal22
L_ResetCal23:
;lib.h,110 :: 		inputdata = 0;
	CLRF       Calculator_inputdata+0
	CLRF       Calculator_inputdata+1
;lib.h,111 :: 		operand = '\0';
	CLRF       Calculator_operand+0
;lib.h,112 :: 		}
L_end_ResetCal:
	RETURN
; end of _ResetCal

_calculate:

;lib.h,114 :: 		float calculate(float numBefore, float numAfter, char operand)
;lib.h,118 :: 		if      (operand == '+')  numResult = numBefore + numAfter;
	MOVF       FARG_calculate_operand+0, 0
	XORLW      43
	BTFSS      STATUS+0, 2
	GOTO       L_calculate25
	MOVF       FARG_calculate_numBefore+0, 0
	MOVWF      R0+0
	MOVF       FARG_calculate_numBefore+1, 0
	MOVWF      R0+1
	MOVF       FARG_calculate_numBefore+2, 0
	MOVWF      R0+2
	MOVF       FARG_calculate_numBefore+3, 0
	MOVWF      R0+3
	MOVF       FARG_calculate_numAfter+0, 0
	MOVWF      R4+0
	MOVF       FARG_calculate_numAfter+1, 0
	MOVWF      R4+1
	MOVF       FARG_calculate_numAfter+2, 0
	MOVWF      R4+2
	MOVF       FARG_calculate_numAfter+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      calculate_numResult_L0+0
	MOVF       R0+1, 0
	MOVWF      calculate_numResult_L0+1
	MOVF       R0+2, 0
	MOVWF      calculate_numResult_L0+2
	MOVF       R0+3, 0
	MOVWF      calculate_numResult_L0+3
	GOTO       L_calculate26
L_calculate25:
;lib.h,119 :: 		else if (operand == '-')  numResult = numBefore - numAfter;
	MOVF       FARG_calculate_operand+0, 0
	XORLW      45
	BTFSS      STATUS+0, 2
	GOTO       L_calculate27
	MOVF       FARG_calculate_numAfter+0, 0
	MOVWF      R4+0
	MOVF       FARG_calculate_numAfter+1, 0
	MOVWF      R4+1
	MOVF       FARG_calculate_numAfter+2, 0
	MOVWF      R4+2
	MOVF       FARG_calculate_numAfter+3, 0
	MOVWF      R4+3
	MOVF       FARG_calculate_numBefore+0, 0
	MOVWF      R0+0
	MOVF       FARG_calculate_numBefore+1, 0
	MOVWF      R0+1
	MOVF       FARG_calculate_numBefore+2, 0
	MOVWF      R0+2
	MOVF       FARG_calculate_numBefore+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      calculate_numResult_L0+0
	MOVF       R0+1, 0
	MOVWF      calculate_numResult_L0+1
	MOVF       R0+2, 0
	MOVWF      calculate_numResult_L0+2
	MOVF       R0+3, 0
	MOVWF      calculate_numResult_L0+3
	GOTO       L_calculate28
L_calculate27:
;lib.h,120 :: 		else if (operand == '*')  numResult = numBefore*numAfter;
	MOVF       FARG_calculate_operand+0, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_calculate29
	MOVF       FARG_calculate_numBefore+0, 0
	MOVWF      R0+0
	MOVF       FARG_calculate_numBefore+1, 0
	MOVWF      R0+1
	MOVF       FARG_calculate_numBefore+2, 0
	MOVWF      R0+2
	MOVF       FARG_calculate_numBefore+3, 0
	MOVWF      R0+3
	MOVF       FARG_calculate_numAfter+0, 0
	MOVWF      R4+0
	MOVF       FARG_calculate_numAfter+1, 0
	MOVWF      R4+1
	MOVF       FARG_calculate_numAfter+2, 0
	MOVWF      R4+2
	MOVF       FARG_calculate_numAfter+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      calculate_numResult_L0+0
	MOVF       R0+1, 0
	MOVWF      calculate_numResult_L0+1
	MOVF       R0+2, 0
	MOVWF      calculate_numResult_L0+2
	MOVF       R0+3, 0
	MOVWF      calculate_numResult_L0+3
	GOTO       L_calculate30
L_calculate29:
;lib.h,121 :: 		else if (operand == '/')  numResult = numBefore/numAfter;
	MOVF       FARG_calculate_operand+0, 0
	XORLW      47
	BTFSS      STATUS+0, 2
	GOTO       L_calculate31
	MOVF       FARG_calculate_numAfter+0, 0
	MOVWF      R4+0
	MOVF       FARG_calculate_numAfter+1, 0
	MOVWF      R4+1
	MOVF       FARG_calculate_numAfter+2, 0
	MOVWF      R4+2
	MOVF       FARG_calculate_numAfter+3, 0
	MOVWF      R4+3
	MOVF       FARG_calculate_numBefore+0, 0
	MOVWF      R0+0
	MOVF       FARG_calculate_numBefore+1, 0
	MOVWF      R0+1
	MOVF       FARG_calculate_numBefore+2, 0
	MOVWF      R0+2
	MOVF       FARG_calculate_numBefore+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      calculate_numResult_L0+0
	MOVF       R0+1, 0
	MOVWF      calculate_numResult_L0+1
	MOVF       R0+2, 0
	MOVWF      calculate_numResult_L0+2
	MOVF       R0+3, 0
	MOVWF      calculate_numResult_L0+3
	GOTO       L_calculate32
L_calculate31:
;lib.h,122 :: 		else if (operand == 's')  numResult = sin((numAfter + numBefore)*PI/180);
	MOVF       FARG_calculate_operand+0, 0
	XORLW      115
	BTFSS      STATUS+0, 2
	GOTO       L_calculate33
	MOVF       FARG_calculate_numAfter+0, 0
	MOVWF      R0+0
	MOVF       FARG_calculate_numAfter+1, 0
	MOVWF      R0+1
	MOVF       FARG_calculate_numAfter+2, 0
	MOVWF      R0+2
	MOVF       FARG_calculate_numAfter+3, 0
	MOVWF      R0+3
	MOVF       FARG_calculate_numBefore+0, 0
	MOVWF      R4+0
	MOVF       FARG_calculate_numBefore+1, 0
	MOVWF      R4+1
	MOVF       FARG_calculate_numBefore+2, 0
	MOVWF      R4+2
	MOVF       FARG_calculate_numBefore+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVLW      219
	MOVWF      R4+0
	MOVLW      15
	MOVWF      R4+1
	MOVLW      73
	MOVWF      R4+2
	MOVLW      128
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      52
	MOVWF      R4+2
	MOVLW      134
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FARG_sin_f+0
	MOVF       R0+1, 0
	MOVWF      FARG_sin_f+1
	MOVF       R0+2, 0
	MOVWF      FARG_sin_f+2
	MOVF       R0+3, 0
	MOVWF      FARG_sin_f+3
	CALL       _sin+0
	MOVF       R0+0, 0
	MOVWF      calculate_numResult_L0+0
	MOVF       R0+1, 0
	MOVWF      calculate_numResult_L0+1
	MOVF       R0+2, 0
	MOVWF      calculate_numResult_L0+2
	MOVF       R0+3, 0
	MOVWF      calculate_numResult_L0+3
	GOTO       L_calculate34
L_calculate33:
;lib.h,123 :: 		else if (operand == 'c')  numResult = cos((numAfter + numBefore)*PI/180);
	MOVF       FARG_calculate_operand+0, 0
	XORLW      99
	BTFSS      STATUS+0, 2
	GOTO       L_calculate35
	MOVF       FARG_calculate_numAfter+0, 0
	MOVWF      R0+0
	MOVF       FARG_calculate_numAfter+1, 0
	MOVWF      R0+1
	MOVF       FARG_calculate_numAfter+2, 0
	MOVWF      R0+2
	MOVF       FARG_calculate_numAfter+3, 0
	MOVWF      R0+3
	MOVF       FARG_calculate_numBefore+0, 0
	MOVWF      R4+0
	MOVF       FARG_calculate_numBefore+1, 0
	MOVWF      R4+1
	MOVF       FARG_calculate_numBefore+2, 0
	MOVWF      R4+2
	MOVF       FARG_calculate_numBefore+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVLW      219
	MOVWF      R4+0
	MOVLW      15
	MOVWF      R4+1
	MOVLW      73
	MOVWF      R4+2
	MOVLW      128
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      52
	MOVWF      R4+2
	MOVLW      134
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FARG_cos_f+0
	MOVF       R0+1, 0
	MOVWF      FARG_cos_f+1
	MOVF       R0+2, 0
	MOVWF      FARG_cos_f+2
	MOVF       R0+3, 0
	MOVWF      FARG_cos_f+3
	CALL       _cos+0
	MOVF       R0+0, 0
	MOVWF      calculate_numResult_L0+0
	MOVF       R0+1, 0
	MOVWF      calculate_numResult_L0+1
	MOVF       R0+2, 0
	MOVWF      calculate_numResult_L0+2
	MOVF       R0+3, 0
	MOVWF      calculate_numResult_L0+3
	GOTO       L_calculate36
L_calculate35:
;lib.h,124 :: 		else if (operand == 'e')  numResult = exp(numAfter + numBefore);
	MOVF       FARG_calculate_operand+0, 0
	XORLW      101
	BTFSS      STATUS+0, 2
	GOTO       L_calculate37
	MOVF       FARG_calculate_numAfter+0, 0
	MOVWF      R0+0
	MOVF       FARG_calculate_numAfter+1, 0
	MOVWF      R0+1
	MOVF       FARG_calculate_numAfter+2, 0
	MOVWF      R0+2
	MOVF       FARG_calculate_numAfter+3, 0
	MOVWF      R0+3
	MOVF       FARG_calculate_numBefore+0, 0
	MOVWF      R4+0
	MOVF       FARG_calculate_numBefore+1, 0
	MOVWF      R4+1
	MOVF       FARG_calculate_numBefore+2, 0
	MOVWF      R4+2
	MOVF       FARG_calculate_numBefore+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FARG_exp_x+0
	MOVF       R0+1, 0
	MOVWF      FARG_exp_x+1
	MOVF       R0+2, 0
	MOVWF      FARG_exp_x+2
	MOVF       R0+3, 0
	MOVWF      FARG_exp_x+3
	CALL       _exp+0
	MOVF       R0+0, 0
	MOVWF      calculate_numResult_L0+0
	MOVF       R0+1, 0
	MOVWF      calculate_numResult_L0+1
	MOVF       R0+2, 0
	MOVWF      calculate_numResult_L0+2
	MOVF       R0+3, 0
	MOVWF      calculate_numResult_L0+3
	GOTO       L_calculate38
L_calculate37:
;lib.h,125 :: 		else if (operand == 'l')  numResult = log(numAfter + numBefore);
	MOVF       FARG_calculate_operand+0, 0
	XORLW      108
	BTFSS      STATUS+0, 2
	GOTO       L_calculate39
	MOVF       FARG_calculate_numAfter+0, 0
	MOVWF      R0+0
	MOVF       FARG_calculate_numAfter+1, 0
	MOVWF      R0+1
	MOVF       FARG_calculate_numAfter+2, 0
	MOVWF      R0+2
	MOVF       FARG_calculate_numAfter+3, 0
	MOVWF      R0+3
	MOVF       FARG_calculate_numBefore+0, 0
	MOVWF      R4+0
	MOVF       FARG_calculate_numBefore+1, 0
	MOVWF      R4+1
	MOVF       FARG_calculate_numBefore+2, 0
	MOVWF      R4+2
	MOVF       FARG_calculate_numBefore+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FARG_log_x+0
	MOVF       R0+1, 0
	MOVWF      FARG_log_x+1
	MOVF       R0+2, 0
	MOVWF      FARG_log_x+2
	MOVF       R0+3, 0
	MOVWF      FARG_log_x+3
	CALL       _log+0
	MOVF       R0+0, 0
	MOVWF      calculate_numResult_L0+0
	MOVF       R0+1, 0
	MOVWF      calculate_numResult_L0+1
	MOVF       R0+2, 0
	MOVWF      calculate_numResult_L0+2
	MOVF       R0+3, 0
	MOVWF      calculate_numResult_L0+3
	GOTO       L_calculate40
L_calculate39:
;lib.h,126 :: 		else if (operand == '\0') numResult = numBefore + numAfter;
	MOVF       FARG_calculate_operand+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_calculate41
	MOVF       FARG_calculate_numBefore+0, 0
	MOVWF      R0+0
	MOVF       FARG_calculate_numBefore+1, 0
	MOVWF      R0+1
	MOVF       FARG_calculate_numBefore+2, 0
	MOVWF      R0+2
	MOVF       FARG_calculate_numBefore+3, 0
	MOVWF      R0+3
	MOVF       FARG_calculate_numAfter+0, 0
	MOVWF      R4+0
	MOVF       FARG_calculate_numAfter+1, 0
	MOVWF      R4+1
	MOVF       FARG_calculate_numAfter+2, 0
	MOVWF      R4+2
	MOVF       FARG_calculate_numAfter+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      calculate_numResult_L0+0
	MOVF       R0+1, 0
	MOVWF      calculate_numResult_L0+1
	MOVF       R0+2, 0
	MOVWF      calculate_numResult_L0+2
	MOVF       R0+3, 0
	MOVWF      calculate_numResult_L0+3
L_calculate41:
L_calculate40:
L_calculate38:
L_calculate36:
L_calculate34:
L_calculate32:
L_calculate30:
L_calculate28:
L_calculate26:
;lib.h,128 :: 		return numResult;
	MOVF       calculate_numResult_L0+0, 0
	MOVWF      R0+0
	MOVF       calculate_numResult_L0+1, 0
	MOVWF      R0+1
	MOVF       calculate_numResult_L0+2, 0
	MOVWF      R0+2
	MOVF       calculate_numResult_L0+3, 0
	MOVWF      R0+3
;lib.h,129 :: 		}
L_end_calculate:
	RETURN
; end of _calculate

_NextCal:

;lib.h,131 :: 		void NextCal(float* numResult, float* numBefore, float* numAfter)
;lib.h,134 :: 		while(1)
L_NextCal42:
;lib.h,136 :: 		key = key5_press();
	CALL       _key5_press+0
	MOVF       R0+0, 0
	MOVWF      NextCal_key_L0+0
;lib.h,137 :: 		if (key == 'a') { ResetCal(); break; }
	MOVF       R0+0, 0
	XORLW      97
	BTFSS      STATUS+0, 2
	GOTO       L_NextCal44
	CALL       _ResetCal+0
	GOTO       L_NextCal43
L_NextCal44:
;lib.h,138 :: 		else if (key != '\0')
	MOVF       NextCal_key_L0+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_NextCal46
;lib.h,140 :: 		*numBefore = *numResult;
	MOVF       FARG_NextCal_numResult+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R0+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R0+1
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R0+2
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      R0+3
	MOVF       FARG_NextCal_numBefore+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	MOVF       R0+1, 0
	INCF       FSR, 1
	MOVWF      INDF+0
	MOVF       R0+2, 0
	INCF       FSR, 1
	MOVWF      INDF+0
	MOVF       R0+3, 0
	INCF       FSR, 1
	MOVWF      INDF+0
;lib.h,141 :: 		*numResult = 0; *numAfter = 0;
	MOVF       FARG_NextCal_numResult+0, 0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
	MOVF       FARG_NextCal_numAfter+0, 0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
	INCF       FSR, 1
	CLRF       INDF+0
;lib.h,143 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lib.h,144 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lib.h,145 :: 		LCD_out(1,5,"ans");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Calculator+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lib.h,146 :: 		break;
	GOTO       L_NextCal43
;lib.h,147 :: 		}
L_NextCal46:
;lib.h,148 :: 		}
	GOTO       L_NextCal42
L_NextCal43:
;lib.h,149 :: 		}
L_end_NextCal:
	RETURN
; end of _NextCal

_powerH:

;lib.h,151 :: 		float powerH(float x, int j)
;lib.h,153 :: 		float result = 1;
	MOVLW      0
	MOVWF      powerH_result_L0+0
	MOVLW      0
	MOVWF      powerH_result_L0+1
	MOVLW      0
	MOVWF      powerH_result_L0+2
	MOVLW      127
	MOVWF      powerH_result_L0+3
;lib.h,155 :: 		for (k = 0;k < j;k++) result = result*x;
	CLRF       powerH_k_L0+0
	CLRF       powerH_k_L0+1
L_powerH47:
	MOVLW      128
	XORWF      powerH_k_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_powerH_j+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__powerH139
	MOVF       FARG_powerH_j+0, 0
	SUBWF      powerH_k_L0+0, 0
L__powerH139:
	BTFSC      STATUS+0, 0
	GOTO       L_powerH48
	MOVF       powerH_result_L0+0, 0
	MOVWF      R0+0
	MOVF       powerH_result_L0+1, 0
	MOVWF      R0+1
	MOVF       powerH_result_L0+2, 0
	MOVWF      R0+2
	MOVF       powerH_result_L0+3, 0
	MOVWF      R0+3
	MOVF       FARG_powerH_x+0, 0
	MOVWF      R4+0
	MOVF       FARG_powerH_x+1, 0
	MOVWF      R4+1
	MOVF       FARG_powerH_x+2, 0
	MOVWF      R4+2
	MOVF       FARG_powerH_x+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      powerH_result_L0+0
	MOVF       R0+1, 0
	MOVWF      powerH_result_L0+1
	MOVF       R0+2, 0
	MOVWF      powerH_result_L0+2
	MOVF       R0+3, 0
	MOVWF      powerH_result_L0+3
	INCF       powerH_k_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       powerH_k_L0+1, 1
	GOTO       L_powerH47
L_powerH48:
;lib.h,156 :: 		return result;
	MOVF       powerH_result_L0+0, 0
	MOVWF      R0+0
	MOVF       powerH_result_L0+1, 0
	MOVWF      R0+1
	MOVF       powerH_result_L0+2, 0
	MOVWF      R0+2
	MOVF       powerH_result_L0+3, 0
	MOVWF      R0+3
;lib.h,157 :: 		}
L_end_powerH:
	RETURN
; end of _powerH

_calculateX:

;lib.h,159 :: 		void calculateX()
;lib.h,161 :: 		int n = 0;
	CLRF       calculateX_n_L0+0
	CLRF       calculateX_n_L0+1
;lib.h,170 :: 		LCD_out(1,1,"Dinh tri X");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Calculator+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lib.h,171 :: 		LCD_out(2,1,"bac n:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_Calculator+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lib.h,172 :: 		while(1)    // nhap gia tri bac n
L_calculateX50:
;lib.h,174 :: 		key = key5_press();
	CALL       _key5_press+0
	MOVF       R0+0, 0
	MOVWF      calculateX_key_L0+0
;lib.h,175 :: 		while(key5_press() == key);    // dung cho den khi nha phim
L_calculateX52:
	CALL       _key5_press+0
	MOVF       R0+0, 0
	XORWF      calculateX_key_L0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_calculateX53
	GOTO       L_calculateX52
L_calculateX53:
;lib.h,177 :: 		if (key != '\0' && key != '=')
	MOVF       calculateX_key_L0+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_calculateX56
	MOVF       calculateX_key_L0+0, 0
	XORLW      61
	BTFSC      STATUS+0, 2
	GOTO       L_calculateX56
L__calculateX127:
;lib.h,179 :: 		LCD_chr_cp(key);
	MOVF       calculateX_key_L0+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;lib.h,180 :: 		n = key - '0';
	MOVLW      48
	SUBWF      calculateX_key_L0+0, 0
	MOVWF      calculateX_n_L0+0
	CLRF       calculateX_n_L0+1
	BTFSS      STATUS+0, 0
	DECF       calculateX_n_L0+1, 1
;lib.h,181 :: 		}
L_calculateX56:
;lib.h,183 :: 		if (key == '=')  // nhan = suy ra gia tri n
	MOVF       calculateX_key_L0+0, 0
	XORLW      61
	BTFSS      STATUS+0, 2
	GOTO       L_calculateX57
;lib.h,185 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lib.h,186 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lib.h,187 :: 		LCD_out_cp("x=");
	MOVLW      ?lstr4_Calculator+0
	MOVWF      FARG_Lcd_Out_CP_text+0
	CALL       _Lcd_Out_CP+0
;lib.h,188 :: 		break;
	GOTO       L_calculateX51
;lib.h,189 :: 		}
L_calculateX57:
;lib.h,191 :: 		else if (key == 'a')  { ResetCal(); return; }
	MOVF       calculateX_key_L0+0, 0
	XORLW      97
	BTFSS      STATUS+0, 2
	GOTO       L_calculateX59
	CALL       _ResetCal+0
	GOTO       L_end_calculateX
L_calculateX59:
;lib.h,192 :: 		}
	GOTO       L_calculateX50
L_calculateX51:
;lib.h,195 :: 		while(1)    // nhap gia tri cua x
L_calculateX60:
;lib.h,197 :: 		key = key5_press();
	CALL       _key5_press+0
	MOVF       R0+0, 0
	MOVWF      calculateX_key_L0+0
;lib.h,198 :: 		if (key != '\0' && key != '=')
	MOVF       R0+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_calculateX64
	MOVF       calculateX_key_L0+0, 0
	XORLW      61
	BTFSC      STATUS+0, 2
	GOTO       L_calculateX64
L__calculateX126:
;lib.h,200 :: 		LCD_chr_cp(key);
	MOVF       calculateX_key_L0+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;lib.h,201 :: 		strNumber[inputdata] = key;
	MOVF       Calculator_inputdata+0, 0
	ADDLW      Calculator_strNumber+0
	MOVWF      FSR
	MOVF       calculateX_key_L0+0, 0
	MOVWF      INDF+0
;lib.h,202 :: 		inputdata++;
	INCF       Calculator_inputdata+0, 1
	BTFSC      STATUS+0, 2
	INCF       Calculator_inputdata+1, 1
;lib.h,203 :: 		}
L_calculateX64:
;lib.h,204 :: 		while(key5_press() == key);
L_calculateX65:
	CALL       _key5_press+0
	MOVF       R0+0, 0
	XORWF      calculateX_key_L0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_calculateX66
	GOTO       L_calculateX65
L_calculateX66:
;lib.h,206 :: 		if (key == '=')
	MOVF       calculateX_key_L0+0, 0
	XORLW      61
	BTFSS      STATUS+0, 2
	GOTO       L_calculateX67
;lib.h,208 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lib.h,209 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lib.h,210 :: 		break;
	GOTO       L_calculateX61
;lib.h,211 :: 		}
L_calculateX67:
;lib.h,212 :: 		else if (key == 'a')
	MOVF       calculateX_key_L0+0, 0
	XORLW      97
	BTFSS      STATUS+0, 2
	GOTO       L_calculateX69
;lib.h,213 :: 		{ResetCal(); return;}
	CALL       _ResetCal+0
	GOTO       L_end_calculateX
L_calculateX69:
;lib.h,215 :: 		}
	GOTO       L_calculateX60
L_calculateX61:
;lib.h,219 :: 		x = atof(strNumber);
	MOVLW      Calculator_strNumber+0
	MOVWF      FARG_atof_s+0
	CALL       _atof+0
	MOVF       R0+0, 0
	MOVWF      calculateX_x_L0+0
	MOVF       R0+1, 0
	MOVWF      calculateX_x_L0+1
	MOVF       R0+2, 0
	MOVWF      calculateX_x_L0+2
	MOVF       R0+3, 0
	MOVWF      calculateX_x_L0+3
;lib.h,220 :: 		inputdata = 0;
	CLRF       Calculator_inputdata+0
	CLRF       Calculator_inputdata+1
;lib.h,221 :: 		for(i = 0; i<6;i++) strNumber[i] = '\0';
	CLRF       calculateX_i_L0+0
	CLRF       calculateX_i_L0+1
L_calculateX70:
	MOVLW      128
	XORWF      calculateX_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__calculateX141
	MOVLW      6
	SUBWF      calculateX_i_L0+0, 0
L__calculateX141:
	BTFSC      STATUS+0, 0
	GOTO       L_calculateX71
	MOVF       calculateX_i_L0+0, 0
	ADDLW      Calculator_strNumber+0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       calculateX_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       calculateX_i_L0+1, 1
	GOTO       L_calculateX70
L_calculateX71:
;lib.h,225 :: 		for ( j = 0; j <= n; j++)
	CLRF       calculateX_j_L0+0
	CLRF       calculateX_j_L0+1
L_calculateX73:
	MOVLW      128
	XORWF      calculateX_n_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      calculateX_j_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__calculateX142
	MOVF       calculateX_j_L0+0, 0
	SUBWF      calculateX_n_L0+0, 0
L__calculateX142:
	BTFSS      STATUS+0, 0
	GOTO       L_calculateX74
;lib.h,227 :: 		FloatToStr(j,stringj);
	MOVF       calculateX_j_L0+0, 0
	MOVWF      R0+0
	MOVF       calculateX_j_L0+1, 0
	MOVWF      R0+1
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       R0+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       R0+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       R0+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      Calculator_stringj+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;lib.h,228 :: 		LCD_out(1,1,"Nhap he so bac");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_Calculator+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lib.h,229 :: 		LCD_out(1,17,stringj);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      17
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      Calculator_stringj+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lib.h,230 :: 		LCD_out(2,1,"NHAP:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_Calculator+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lib.h,232 :: 		while(1)
L_calculateX76:
;lib.h,234 :: 		key = key5_press();
	CALL       _key5_press+0
	MOVF       R0+0, 0
	MOVWF      calculateX_key_L0+0
;lib.h,235 :: 		while(key5_press() == key);
L_calculateX78:
	CALL       _key5_press+0
	MOVF       R0+0, 0
	XORWF      calculateX_key_L0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_calculateX79
	GOTO       L_calculateX78
L_calculateX79:
;lib.h,237 :: 		if (key != '\0' && key != '=')
	MOVF       calculateX_key_L0+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_calculateX82
	MOVF       calculateX_key_L0+0, 0
	XORLW      61
	BTFSC      STATUS+0, 2
	GOTO       L_calculateX82
L__calculateX125:
;lib.h,239 :: 		LCD_chr_cp(key);
	MOVF       calculateX_key_L0+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;lib.h,240 :: 		strNumber[inputdata] = key;
	MOVF       Calculator_inputdata+0, 0
	ADDLW      Calculator_strNumber+0
	MOVWF      FSR
	MOVF       calculateX_key_L0+0, 0
	MOVWF      INDF+0
;lib.h,241 :: 		inputdata++;
	INCF       Calculator_inputdata+0, 1
	BTFSC      STATUS+0, 2
	INCF       Calculator_inputdata+1, 1
;lib.h,242 :: 		}
L_calculateX82:
;lib.h,244 :: 		if (key == '=')
	MOVF       calculateX_key_L0+0, 0
	XORLW      61
	BTFSS      STATUS+0, 2
	GOTO       L_calculateX83
;lib.h,246 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lib.h,247 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lib.h,248 :: 		break;
	GOTO       L_calculateX77
;lib.h,249 :: 		}
L_calculateX83:
;lib.h,251 :: 		else if (key == 'a')
	MOVF       calculateX_key_L0+0, 0
	XORLW      97
	BTFSS      STATUS+0, 2
	GOTO       L_calculateX85
;lib.h,252 :: 		{ResetCal(); return;}
	CALL       _ResetCal+0
	GOTO       L_end_calculateX
L_calculateX85:
;lib.h,253 :: 		}
	GOTO       L_calculateX76
L_calculateX77:
;lib.h,255 :: 		numResult = numResult + atof(strNumber)*powerH(x,j);
	MOVLW      Calculator_strNumber+0
	MOVWF      FARG_atof_s+0
	CALL       _atof+0
	MOVF       R0+0, 0
	MOVWF      FLOC__calculateX+0
	MOVF       R0+1, 0
	MOVWF      FLOC__calculateX+1
	MOVF       R0+2, 0
	MOVWF      FLOC__calculateX+2
	MOVF       R0+3, 0
	MOVWF      FLOC__calculateX+3
	MOVF       calculateX_x_L0+0, 0
	MOVWF      FARG_powerH_x+0
	MOVF       calculateX_x_L0+1, 0
	MOVWF      FARG_powerH_x+1
	MOVF       calculateX_x_L0+2, 0
	MOVWF      FARG_powerH_x+2
	MOVF       calculateX_x_L0+3, 0
	MOVWF      FARG_powerH_x+3
	MOVF       calculateX_j_L0+0, 0
	MOVWF      FARG_powerH_j+0
	MOVF       calculateX_j_L0+1, 0
	MOVWF      FARG_powerH_j+1
	CALL       _powerH+0
	MOVF       FLOC__calculateX+0, 0
	MOVWF      R4+0
	MOVF       FLOC__calculateX+1, 0
	MOVWF      R4+1
	MOVF       FLOC__calculateX+2, 0
	MOVWF      R4+2
	MOVF       FLOC__calculateX+3, 0
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       Calculator_numResult+0, 0
	MOVWF      R4+0
	MOVF       Calculator_numResult+1, 0
	MOVWF      R4+1
	MOVF       Calculator_numResult+2, 0
	MOVWF      R4+2
	MOVF       Calculator_numResult+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      Calculator_numResult+0
	MOVF       R0+1, 0
	MOVWF      Calculator_numResult+1
	MOVF       R0+2, 0
	MOVWF      Calculator_numResult+2
	MOVF       R0+3, 0
	MOVWF      Calculator_numResult+3
;lib.h,257 :: 		inputdata = 0;
	CLRF       Calculator_inputdata+0
	CLRF       Calculator_inputdata+1
;lib.h,258 :: 		for(i = 0; i<6;i++) strNumber[i] = '\0';
	CLRF       calculateX_i_L0+0
	CLRF       calculateX_i_L0+1
L_calculateX86:
	MOVLW      128
	XORWF      calculateX_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__calculateX143
	MOVLW      6
	SUBWF      calculateX_i_L0+0, 0
L__calculateX143:
	BTFSC      STATUS+0, 0
	GOTO       L_calculateX87
	MOVF       calculateX_i_L0+0, 0
	ADDLW      Calculator_strNumber+0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       calculateX_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       calculateX_i_L0+1, 1
	GOTO       L_calculateX86
L_calculateX87:
;lib.h,225 :: 		for ( j = 0; j <= n; j++)
	INCF       calculateX_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       calculateX_j_L0+1, 1
;lib.h,259 :: 		}
	GOTO       L_calculateX73
L_calculateX74:
;lib.h,262 :: 		FloatToStr(numResult, strResult);
	MOVF       Calculator_numResult+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       Calculator_numResult+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       Calculator_numResult+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       Calculator_numResult+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      Calculator_strResult+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;lib.h,263 :: 		LCD_out(1,1,"Ket Qua:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_Calculator+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lib.h,264 :: 		LCD_out(2,1,strResult);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      Calculator_strResult+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lib.h,266 :: 		}
L_end_calculateX:
	RETURN
; end of _calculateX

_main:

;Calculator.c,3 :: 		void main()
;Calculator.c,6 :: 		char key = '\0';
	CLRF       main_key_L0+0
;Calculator.c,7 :: 		key5_init();                // Khoi tao keypad
	CALL       _key5_init+0
;Calculator.c,8 :: 		Lcd_Init();                // Khoi tao LCD
	CALL       _Lcd_Init+0
;Calculator.c,9 :: 		LCD_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Calculator.c,11 :: 		while(1)
L_main89:
;Calculator.c,13 :: 		key = key5_press();                        // key : ky tu nhan duoc tu keypad
	CALL       _key5_press+0
	MOVF       R0+0, 0
	MOVWF      main_key_L0+0
;Calculator.c,14 :: 		while(key5_press() == key);
L_main91:
	CALL       _key5_press+0
	MOVF       R0+0, 0
	XORWF      main_key_L0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main92
	GOTO       L_main91
L_main92:
;Calculator.c,16 :: 		if (key == 'x')  calculateX();
	MOVF       main_key_L0+0, 0
	XORLW      120
	BTFSS      STATUS+0, 2
	GOTO       L_main93
	CALL       _calculateX+0
	GOTO       L_main94
L_main93:
;Calculator.c,19 :: 		else if (key >= '0' && key <= '9' || key == '.' )
	MOVLW      48
	SUBWF      main_key_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L__main131
	MOVF       main_key_L0+0, 0
	SUBLW      57
	BTFSS      STATUS+0, 0
	GOTO       L__main131
	GOTO       L__main130
L__main131:
	MOVF       main_key_L0+0, 0
	XORLW      46
	BTFSC      STATUS+0, 2
	GOTO       L__main130
	GOTO       L_main99
L__main130:
;Calculator.c,21 :: 		Lcd_Chr_Cp(key);
	MOVF       main_key_L0+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;Calculator.c,22 :: 		strNumber[inputdata] = key;
	MOVF       Calculator_inputdata+0, 0
	ADDLW      Calculator_strNumber+0
	MOVWF      FSR
	MOVF       main_key_L0+0, 0
	MOVWF      INDF+0
;Calculator.c,23 :: 		inputdata++;
	INCF       Calculator_inputdata+0, 1
	BTFSC      STATUS+0, 2
	INCF       Calculator_inputdata+1, 1
;Calculator.c,24 :: 		}
	GOTO       L_main100
L_main99:
;Calculator.c,28 :: 		else if (  key == '+' || key == '-' || key == '*' || key == '/'
	MOVF       main_key_L0+0, 0
	XORLW      43
	BTFSC      STATUS+0, 2
	GOTO       L__main129
	MOVF       main_key_L0+0, 0
	XORLW      45
	BTFSC      STATUS+0, 2
	GOTO       L__main129
	MOVF       main_key_L0+0, 0
	XORLW      42
	BTFSC      STATUS+0, 2
	GOTO       L__main129
	MOVF       main_key_L0+0, 0
	XORLW      47
	BTFSC      STATUS+0, 2
	GOTO       L__main129
;Calculator.c,29 :: 		|| key == 's' || key == 'c' || key == 'e' || key == 'l')
	MOVF       main_key_L0+0, 0
	XORLW      115
	BTFSC      STATUS+0, 2
	GOTO       L__main129
	MOVF       main_key_L0+0, 0
	XORLW      99
	BTFSC      STATUS+0, 2
	GOTO       L__main129
	MOVF       main_key_L0+0, 0
	XORLW      101
	BTFSC      STATUS+0, 2
	GOTO       L__main129
	MOVF       main_key_L0+0, 0
	XORLW      108
	BTFSC      STATUS+0, 2
	GOTO       L__main129
	GOTO       L_main103
L__main129:
;Calculator.c,31 :: 		if      (key == '+' || key == '-' || key == '*' || key == '/') Lcd_Chr_Cp(key);
	MOVF       main_key_L0+0, 0
	XORLW      43
	BTFSC      STATUS+0, 2
	GOTO       L__main128
	MOVF       main_key_L0+0, 0
	XORLW      45
	BTFSC      STATUS+0, 2
	GOTO       L__main128
	MOVF       main_key_L0+0, 0
	XORLW      42
	BTFSC      STATUS+0, 2
	GOTO       L__main128
	MOVF       main_key_L0+0, 0
	XORLW      47
	BTFSC      STATUS+0, 2
	GOTO       L__main128
	GOTO       L_main106
L__main128:
	MOVF       main_key_L0+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	GOTO       L_main107
L_main106:
;Calculator.c,32 :: 		else if (key == 's') LCD_out(1,1,"sin(");
	MOVF       main_key_L0+0, 0
	XORLW      115
	BTFSS      STATUS+0, 2
	GOTO       L_main108
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_Calculator+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main109
L_main108:
;Calculator.c,33 :: 		else if (key == 'c') LCD_out(1,1,"cos(");
	MOVF       main_key_L0+0, 0
	XORLW      99
	BTFSS      STATUS+0, 2
	GOTO       L_main110
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_Calculator+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main111
L_main110:
;Calculator.c,34 :: 		else if (key == 'l') LCD_out(1,1," ln(");
	MOVF       main_key_L0+0, 0
	XORLW      108
	BTFSS      STATUS+0, 2
	GOTO       L_main112
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_Calculator+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
	GOTO       L_main113
L_main112:
;Calculator.c,35 :: 		else if (key == 'e') LCD_out(1,1,"exp(");
	MOVF       main_key_L0+0, 0
	XORLW      101
	BTFSS      STATUS+0, 2
	GOTO       L_main114
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_Calculator+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main114:
L_main113:
L_main111:
L_main109:
L_main107:
;Calculator.c,38 :: 		operand = key;
	MOVF       main_key_L0+0, 0
	MOVWF      Calculator_operand+0
;Calculator.c,40 :: 		if (numBefore == 0)
	CLRF       R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	MOVF       Calculator_numBefore+0, 0
	MOVWF      R0+0
	MOVF       Calculator_numBefore+1, 0
	MOVWF      R0+1
	MOVF       Calculator_numBefore+2, 0
	MOVWF      R0+2
	MOVF       Calculator_numBefore+3, 0
	MOVWF      R0+3
	CALL       _Equals_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main115
;Calculator.c,41 :: 		numBefore = atof(strNumber);    // Lieu ham atof co ton nhieu RAM khong?
	MOVLW      Calculator_strNumber+0
	MOVWF      FARG_atof_s+0
	CALL       _atof+0
	MOVF       R0+0, 0
	MOVWF      Calculator_numBefore+0
	MOVF       R0+1, 0
	MOVWF      Calculator_numBefore+1
	MOVF       R0+2, 0
	MOVWF      Calculator_numBefore+2
	MOVF       R0+3, 0
	MOVWF      Calculator_numBefore+3
L_main115:
;Calculator.c,44 :: 		for(i = 0; i<6;i++) strNumber[i] = '\0';
	CLRF       Calculator_i+0
	CLRF       Calculator_i+1
L_main116:
	MOVLW      128
	XORWF      Calculator_i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main145
	MOVLW      6
	SUBWF      Calculator_i+0, 0
L__main145:
	BTFSC      STATUS+0, 0
	GOTO       L_main117
	MOVF       Calculator_i+0, 0
	ADDLW      Calculator_strNumber+0
	MOVWF      FSR
	CLRF       INDF+0
	INCF       Calculator_i+0, 1
	BTFSC      STATUS+0, 2
	INCF       Calculator_i+1, 1
	GOTO       L_main116
L_main117:
;Calculator.c,45 :: 		inputdata = 0;
	CLRF       Calculator_inputdata+0
	CLRF       Calculator_inputdata+1
;Calculator.c,46 :: 		}
	GOTO       L_main119
L_main103:
;Calculator.c,49 :: 		else if (key == '=')
	MOVF       main_key_L0+0, 0
	XORLW      61
	BTFSS      STATUS+0, 2
	GOTO       L_main120
;Calculator.c,51 :: 		numAfter = atof(strNumber);
	MOVLW      Calculator_strNumber+0
	MOVWF      FARG_atof_s+0
	CALL       _atof+0
	MOVF       R0+0, 0
	MOVWF      Calculator_numAfter+0
	MOVF       R0+1, 0
	MOVWF      Calculator_numAfter+1
	MOVF       R0+2, 0
	MOVWF      Calculator_numAfter+2
	MOVF       R0+3, 0
	MOVWF      Calculator_numAfter+3
;Calculator.c,52 :: 		numResult = calculate(numBefore,numAfter,operand);
	MOVF       Calculator_numBefore+0, 0
	MOVWF      FARG_calculate_numBefore+0
	MOVF       Calculator_numBefore+1, 0
	MOVWF      FARG_calculate_numBefore+1
	MOVF       Calculator_numBefore+2, 0
	MOVWF      FARG_calculate_numBefore+2
	MOVF       Calculator_numBefore+3, 0
	MOVWF      FARG_calculate_numBefore+3
	MOVF       R0+0, 0
	MOVWF      FARG_calculate_numAfter+0
	MOVF       R0+1, 0
	MOVWF      FARG_calculate_numAfter+1
	MOVF       R0+2, 0
	MOVWF      FARG_calculate_numAfter+2
	MOVF       R0+3, 0
	MOVWF      FARG_calculate_numAfter+3
	MOVF       Calculator_operand+0, 0
	MOVWF      FARG_calculate_operand+0
	CALL       _calculate+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVF       R0+2, 0
	MOVWF      FLOC__main+2
	MOVF       R0+3, 0
	MOVWF      FLOC__main+3
	MOVF       FLOC__main+0, 0
	MOVWF      Calculator_numResult+0
	MOVF       FLOC__main+1, 0
	MOVWF      Calculator_numResult+1
	MOVF       FLOC__main+2, 0
	MOVWF      Calculator_numResult+2
	MOVF       FLOC__main+3, 0
	MOVWF      Calculator_numResult+3
;Calculator.c,53 :: 		if (numResult - (int)numResult == 0)
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	MOVF       FLOC__main+2, 0
	MOVWF      R0+2
	MOVF       FLOC__main+3, 0
	MOVWF      R0+3
	CALL       _double2int+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	MOVF       FLOC__main+2, 0
	MOVWF      R0+2
	MOVF       FLOC__main+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	CLRF       R4+0
	CLRF       R4+1
	CLRF       R4+2
	CLRF       R4+3
	CALL       _Equals_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main121
;Calculator.c,55 :: 		numResult = (int)numResult;
	MOVF       Calculator_numResult+0, 0
	MOVWF      R0+0
	MOVF       Calculator_numResult+1, 0
	MOVWF      R0+1
	MOVF       Calculator_numResult+2, 0
	MOVWF      R0+2
	MOVF       Calculator_numResult+3, 0
	MOVWF      R0+3
	CALL       _double2int+0
	CALL       _int2double+0
	MOVF       R0+0, 0
	MOVWF      Calculator_numResult+0
	MOVF       R0+1, 0
	MOVWF      Calculator_numResult+1
	MOVF       R0+2, 0
	MOVWF      Calculator_numResult+2
	MOVF       R0+3, 0
	MOVWF      Calculator_numResult+3
;Calculator.c,56 :: 		IntToStr(numResult, strResult);
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      Calculator_strResult+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;Calculator.c,57 :: 		}
	GOTO       L_main122
L_main121:
;Calculator.c,58 :: 		else FloatToStr(numResult, strResult);
	MOVF       Calculator_numResult+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       Calculator_numResult+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       Calculator_numResult+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       Calculator_numResult+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      Calculator_strResult+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
L_main122:
;Calculator.c,60 :: 		LCD_out(2,10,strResult);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      Calculator_strResult+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Calculator.c,63 :: 		NextCal(&numResult, &numBefore, &numAfter);
	MOVLW      Calculator_numResult+0
	MOVWF      FARG_NextCal_numResult+0
	MOVLW      Calculator_numBefore+0
	MOVWF      FARG_NextCal_numBefore+0
	MOVLW      Calculator_numAfter+0
	MOVWF      FARG_NextCal_numAfter+0
	CALL       _NextCal+0
;Calculator.c,64 :: 		}
	GOTO       L_main123
L_main120:
;Calculator.c,67 :: 		else if (key == 'a')  ResetCal();
	MOVF       main_key_L0+0, 0
	XORLW      97
	BTFSS      STATUS+0, 2
	GOTO       L_main124
	CALL       _ResetCal+0
L_main124:
L_main123:
L_main119:
L_main100:
L_main94:
;Calculator.c,69 :: 		}
	GOTO       L_main89
;Calculator.c,70 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
