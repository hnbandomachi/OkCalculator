#include "LIB.h"

void main()
{
        char key = '\0';
        key5_init();                // Khoi tao keypad
        Lcd_Init();                // Khoi tao LCD
        LCD_Cmd(_LCD_CURSOR_OFF);

        while(1)
        {                
                key = key5_press();                        // key : ky tu nhan duoc tu keypad                
                while(key5_press() == key);
                
                if (key == 'x')  calculateX(); 

                // Tinh so thap phan: strNumber la chuoi so. VD: strNumber = "12.345"
                else if (key >= '0' && key <= '9' || key == '.' )
                {
                        Lcd_Chr_Cp(key);
                        strNumber[inputdata] = key;
                        inputdata++;
                }

                // Xac nhan toan tu & nhan ket qua cua numBefore
                // Vi khong du RAM nen khong the thuc hien ham tan()
                else if (  key == '+' || key == '-' || key == '*' || key == '/'
                        || key == 's' || key == 'c' || key == 'e' || key == 'l')
                {
                        if      (key == '+' || key == '-' || key == '*' || key == '/') Lcd_Chr_Cp(key);
                        else if (key == 's') LCD_out(1,1,"sin(");
                        else if (key == 'c') LCD_out(1,1,"cos(");
                        else if (key == 'l') LCD_out(1,1," ln(");
                        else if (key == 'e') LCD_out(1,1,"exp(");


                        operand = key;

                        if (numBefore == 0) 
                                numBefore = atof(strNumber);    // Lieu ham atof co ton nhieu RAM khong?

                        // Xoa chuoi so de bat dau cho lan nhap tiep theo
                        for(i = 0; i<6;i++) strNumber[i] = '\0';
                        inputdata = 0;
                }

                // In ket qua
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
                        // Lcd_Chr(2,9,'=');
                        LCD_out(2,10,strResult);

                        // Ghi nhan cac ket qua cho lan tinh toan tiep theo
                        NextCal(&numResult, &numBefore, &numAfter);                
                }

                // Reset
                else if (key == 'a')  ResetCal();
                
        }
}
