#include "mini_string.h"
#include "mini_stdlib.h"

foo (p)
     int *p;
{
int c = -1;
  int x;
  int a;

  a = p[0];
  x = a + 5;
  a = c;
  p[0] = x - 15;
  return a;
}

int main()
{
   int b = 1;
   int a = foo(&b);

   if (a != -1 || b != (1 + 5 - 15))
     abort ();

   exit (0);
}

