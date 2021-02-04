#include <stdio.h>
#include <stdlib.h>

int main()
{
  char character;
  FILE *fptr;

  if ((fptr = fopen("./input.txt", "r")) == NULL) {
    printf("Error! opening file");
    
    exit(1);
  }


  while (fptr != NULL) {
  fscanf(fptr, "%c", &character);

  printf("%c", character);
  }
  fclose(fptr);

  return 0;
}
