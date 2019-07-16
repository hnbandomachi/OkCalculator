#line 1 "C:/Users/Administrator/Desktop/DAKT/PIC16f877a/OkCalculator9/OkCalculator/C/Calculator.c"
#line 1 "c:/users/administrator/desktop/dakt/pic16f877a/okcalculator9/okcalculator/c/lib.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for pic/include/math.h"





double fabs(double d);
double floor(double x);
double ceil(double x);
double frexp(double value, int * eptr);
double ldexp(double value, int newexp);
double modf(double val, double * iptr);
double sqrt(double x);
double atan(double f);
double asin(double x);
double acos(double x);
double atan2(double y,double x);
double sin(double f);
double cos(double f);
double tan(double x);
double exp(double x);
double log(double x);
double log10(double x);
double pow(double x, double y);
double sinh(double x);
double cosh(double x);
double tanh(double x);
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for pic/include/stdio.h"
#line 8 "c:/users/administrator/desktop/dakt/pic16f877a/okcalculator9/okcalculator/c/lib.h"
static double numBefore = 0, numAfter = 0, numResult = 0;
static char strResult[6], strNumber[6], stringj[2];
static char operand;
static int inputdata = 0, i = 0;



sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D7 at RB3_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D4 at RB0_bit;


sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D7_Direction at TRISB3_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D4_Direction at TRISB0_bit;


sbit ROW1 at RC0_bit;
sbit ROW2 at RC1_bit;
sbit ROW3 at RC2_bit;
sbit ROW4 at RC3_bit;
sbit ROW5 at RC4_bit;

sbit COL1 at RC5_bit;
sbit COL2 at RC6_bit;
sbit COL3 at RC7_bit;
sbit COL4 at RD0_bit;
sbit COL5 at RD1_bit;

void key5_init()
{
 TRISC.B0 = 1;
 TRISC.B1 = 1;
 TRISC.B2 = 1;
 TRISC.B3 = 1;
 TRISC.B4 = 1;
 TRISC.B5 = 0;
 TRISC.B6 = 0,
 TRISC.B7 = 0;
 TRISD.B0 = 0;
 TRISD.B1 = 0;

}

char key5_press()
{
 char key = '\0';

 COL1 =1;
 if(ROW1==1) key= '1';
 if(ROW2==1) key= '4';
 if(ROW3==1) key= '7';
 if(ROW4==1) key= 'x';
 if(ROW5==1) key= 's';
 COL1=0;

 COL2 =1;
 if(ROW1==1) key= '2';
 if(ROW2==1) key= '5';
 if(ROW3==1) key= '8';
 if(ROW4==1) key= '0';
 if(ROW5==1) key= 'c';
 COL2=0;

 COL3 =1;
 if(ROW1==1) key= '3';
 if(ROW2==1) key= '6';
 if(ROW3==1) key= '9';
 if(ROW4==1) key= '.';
 if(ROW5==1) key= 'l';
 COL3=0;

 COL4 =1;
 if(ROW1==1) key= '+';
 if(ROW2==1) key= '-';
 if(ROW3==1) key= '*';
 if(ROW4==1) key= '/';
 if(ROW5==1) key= 'e';
 COL4=0;

 COL5 =1;
 if(ROW1==1) key= 'a';
 if(ROW2==1) key= '=';
 COL5=0;

 return key;
}

void ResetCal()
{
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_RETURN_HOME);
 numBefore = 0;
 numAfter = 0;
 numResult = 0;
 for(i = 0; i < 6; i++) strNumber[i] = '\0';
 inputdata = 0;
 operand = '\0';
}

float calculate(float numBefore, float numAfter, char operand)
{
 float numResult;

 if (operand == '+') numResult = numBefore + numAfter;
 else if (operand == '-') numResult = numBefore - numAfter;
 else if (operand == '*') numResult = numBefore*numAfter;
 else if (operand == '/') numResult = numBefore/numAfter;
 else if (operand == 's') numResult = sin((numAfter + numBefore)* 3.1415926535897 /180);
 else if (operand == 'c') numResult = cos((numAfter + numBefore)* 3.1415926535897 /180);
 else if (operand == 'e') numResult = exp(numAfter + numBefore);
 else if (operand == 'l') numResult = log(numAfter + numBefore);
 else if (operand == '\0') numResult = numBefore + numAfter;

 return numResult;
}

void NextCal(float* numResult, float* numBefore, float* numAfter)
{
 char key;
 while(1)
 {
 key = key5_press();
 if (key == 'a') { ResetCal(); break; }
 else if (key != '\0')
 {
 *numBefore = *numResult;
 *numResult = 0; *numAfter = 0;

 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_RETURN_HOME);
 LCD_out(1,5,"ans");
 break;
 }
 }
}

float powerH(float x, int j)
{
 float result = 1;
 int k;
 for (k = 0;k < j;k++) result = result*x;
 return result;
}

void calculateX()
{
 int n = 0;
 float x;

 char strX[6] = "";
 char key;
 int i, j;



 LCD_out(1,1,"Dinh tri X");
 LCD_out(2,1,"bac n:");
 while(1)
 {
 key = key5_press();
 while(key5_press() == key);

 if (key != '\0' && key != '=')
 {
 LCD_chr_cp(key);
 n = key - '0';
 }

 if (key == '=')
 {
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_RETURN_HOME);
 LCD_out_cp("x=");
 break;
 }

 else if (key == 'a') { ResetCal(); return; }
 }


 while(1)
 {
 key = key5_press();
 if (key != '\0' && key != '=')
 {
 LCD_chr_cp(key);
 strNumber[inputdata] = key;
 inputdata++;
 }
 while(key5_press() == key);

 if (key == '=')
 {
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_RETURN_HOME);
 break;
 }
 else if (key == 'a')
 {ResetCal(); return;}

 }



 x = atof(strNumber);
 inputdata = 0;
 for(i = 0; i<6;i++) strNumber[i] = '\0';



 for ( j = 0; j <= n; j++)
 {
 FloatToStr(j,stringj);
 LCD_out(1,1,"Nhap he so bac");
 LCD_out(1,17,stringj);
 LCD_out(2,1,"NHAP:");

 while(1)
 {
 key = key5_press();
 while(key5_press() == key);

 if (key != '\0' && key != '=')
 {
 LCD_chr_cp(key);
 strNumber[inputdata] = key;
 inputdata++;
 }

 if (key == '=')
 {
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_RETURN_HOME);
 break;
 }

 else if (key == 'a')
 {ResetCal(); return;}
 }

 numResult = numResult + atof(strNumber)*powerH(x,j);

 inputdata = 0;
 for(i = 0; i<6;i++) strNumber[i] = '\0';
 }


 FloatToStr(numResult, strResult);
 LCD_out(1,1,"Ket Qua:");
 LCD_out(2,1,strResult);

}
#line 3 "C:/Users/Administrator/Desktop/DAKT/PIC16f877a/OkCalculator9/OkCalculator/C/Calculator.c"
void main()
{

 char key = '\0';
 key5_init();
 Lcd_Init();
 LCD_Cmd(_LCD_CURSOR_OFF);

 while(1)
 {
 key = key5_press();
 while(key5_press() == key);

 if (key == 'x') calculateX();


 else if (key >= '0' && key <= '9' || key == '.' )
 {
 Lcd_Chr_Cp(key);
 strNumber[inputdata] = key;
 inputdata++;
 }



 else if ( key == '+' || key == '-' || key == '*' || key == '/'
 || key == 's' || key == 'c' || key == 'e' || key == 'l')
 {
 if (key == '+' || key == '-' || key == '*' || key == '/') Lcd_Chr_Cp(key);
 else if (key == 's') LCD_out(1,1,"sin(");
 else if (key == 'c') LCD_out(1,1,"cos(");
 else if (key == 'l') LCD_out(1,1," ln(");
 else if (key == 'e') LCD_out(1,1,"exp(");


 operand = key;

 if (numBefore == 0)
 numBefore = atof(strNumber);


 for(i = 0; i<6;i++) strNumber[i] = '\0';
 inputdata = 0;
 }


 else if (key == '=')
 {
 numAfter = atof(strNumber);
 numResult = calculate(numBefore,numAfter,operand);
 if (numResult - (int)numResult == 0)
 {
 numResult = (int)numResult;
 IntToStr(numResult, strResult);
 }
 else FloatToStr(numResult, strResult);

 LCD_out(2,10,strResult);


 NextCal(&numResult, &numBefore, &numAfter);
 }


 else if (key == 'a') ResetCal();

 }
}
