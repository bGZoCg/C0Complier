%{
    #include "myscanner.h"
%}

%%
:                       return COLON;
"db_type"               return TYPE;
"db_name"               return NAME;
"db_table_prefix"       return TABLE_PREFIX;
"db_port"               return PORT;

[a-zA-z][_a-zA-z0-9]*   return IDENTIFIER;
[1-9][0-9]*             return INTEGER;
[ \t\n]                 ;
.                       printf("unexpected character\n");
%%

int yywrap(void){
    return 1;
}