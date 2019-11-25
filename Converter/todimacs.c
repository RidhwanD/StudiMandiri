#include <stdio.h>
#include <assert.h>
#include <string.h>
#include "todimacs.h"

char** str_split(char* a_str, const char a_delim)
{
    char** result    = 0;
    size_t count     = 0;
    char* tmp        = a_str;
    char* last_comma = 0;
    char delim[2];
    delim[0] = a_delim;
    delim[1] = 0;

    /* Count how many elements will be extracted. */
    while (*tmp)
    {
        if (a_delim == *tmp)
        {
            count++;
            last_comma = tmp;
        }
        tmp++;
    }

    /* Add space for trailing token. */
    count += last_comma < (a_str + strlen(a_str) - 1);

    /* Add space for terminating null string so caller
       knows where the list of returned strings ends. */
    count++;

    result = malloc(sizeof(char*) * count);

    if (result)
    {
        size_t idx  = 0;
        char* token = strtok(a_str, delim);

        while (token)
        {
            assert(idx < count);
            *(result + idx++) = strdup(token);
            token = strtok(0, delim);
        }
        assert(idx == count - 1);
        *(result + idx) = 0;
    }
    return result;
}

char* concat(char *s1, char *s2)
{
    size_t len1 = strlen(s1);
    size_t len2 = strlen(s2);
    char *result = malloc(len1 + len2 + 1); // +1 for the null-terminator
    // in real code you would check for errors in malloc here
    memcpy(result, s1, len1);
    memcpy(result + len1, s2, len2 + 1); // +1 to copy the null-terminator
    return result;
}

bool insert_abducible(char* input, char* abd){
    char** tokens;
    tokens = str_split(input, ')');
    if (tokens)
    {
        int i;
        for (i = 0; *(tokens + i); i++)
        {
            memmove(*(tokens + i), *(tokens + i)+1, strlen(*(tokens + i)));
            strncat(*(tokens + i), ")", 1);
            printf("Clause=[%s]\n", *(tokens + i));
            free(*(tokens + i));
        }
        printf("\n");
        free(tokens);
    }
    return false;
}

bool produce_context(char* input, char* context){
    char** tokens;
    char* inputs = concat(input, context);
    tokens = str_split(inputs, ')');
    if (tokens)
    {
        int i;
        for (i = 0; *(tokens + i); i++)
        {
            memmove(*(tokens + i), *(tokens + i)+1, strlen(*(tokens + i)));
            strncat(*(tokens + i), ")", 1);
            printf("Clause=[%s]\n", *(tokens + i));
            free(*(tokens + i));
        }
        printf("\n");
        free(tokens);
    }
    return false;
}
