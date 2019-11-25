#include <stdio.h>
#include <stdlib.h>
#include "todimacs.h"

int main()
{
    char res[] = "[drug_induced(phase0,drug,aif),not drug_inhibited(phase0,drug,aif),not drug_induced(phase0,drug,apoptosis)]";
    bool hasil = insert_abducible(res, "A");
    printf("Hello world!\n");
    return 0;
}
