#include "Misc_Functions.h"

void ConvertArrayToString (unsigned char Source[], unsigned char Destination[], unsigned char Size)
{
	unsigned char SourceIndex, DestIndex, HexDigit;
	for (SourceIndex=0, DestIndex=0; SourceIndex<Size; SourceIndex++)
	{
		HexDigit = (Source[SourceIndex] & 0xF0)>>4;
		if (HexDigit < 10)
			Destination[DestIndex++] = HexDigit | 0x30;
		else
			Destination[DestIndex++] = HexDigit - 10 + 'A';

		HexDigit = Source[SourceIndex] & 0x0F;
		if (HexDigit < 10)
			Destination[DestIndex++] = HexDigit | 0x30;
		else
			Destination[DestIndex++] = HexDigit - 10 + 'A';

		Destination[DestIndex++] = ';';
	}
	Destination[DestIndex-1] = 0;
	return;
}

long int Convert_String_to_Int (char Str[])
{
  long int Temp=0;
  int i, First=0, Negative_Flag=1, System=10, Digit;

  // check for negative value
  if (Str[0] == '-')
  {
    Negative_Flag = -1;
    First = 1;
  }
  
  // check for binary or hexadecimal format
  if (Str[First] == '0' && (Str[First+1] == 'b' || Str[First+1] == 'B' || Str[First+1] == 'x' || Str[First+1] == 'X'))
  {
    if (Str[First+1] == 'b' || Str[First+1] == 'B')
      System = 2;
    else
      System = 16;
    First = First + 2;
  }
  
  // convert string to binary/decimal/hexadecimal
  switch (System)
  {
  case 2:
    for (i=First; Str[i]; i++)
    {
      Digit = Str[i];
      if (Digit >= '0' && Digit<= '1')
        Temp = Temp*2 + (Digit & 0x0F);
    }
    break;
  case 10:
    for (i=First; Str[i]; i++)
    {
      Digit = Str[i];
      if (Digit >= '0' && Digit<= '9')
        Temp = Temp*10 + (Digit & 0x0F);
    }
    break;
  case 16:
    for (i=First; Str[i]; i++)
    {
      Digit = Str[i];
      if (Digit >= '0' && Digit <= '9')
        Digit = Digit - '0';
      if (Digit >= 'a' && Digit <= 'f')
        Digit = Digit - 'a' + 10;
      if (Digit >= 'A' && Digit <= 'F')
        Digit = Digit - 'A' + 10;
      Temp = Temp * 16 + Digit;
    }
    break;
  }

  return Temp*Negative_Flag;
}
