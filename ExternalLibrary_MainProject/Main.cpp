#include<stdio.h>
#include "ExternalLibrary.h"

int main(void)
{
	int a = 1;
	int b = 2;
	int c = 1;
	printf("%dx^2 + %dx + %d 's¡â = b^2 - 4ac = %d\n", a, b, c, Disc(a, b, c));
	return 0;
}