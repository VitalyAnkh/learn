%% 
[0-9]+ printf("?");
# return 0;
. ECHO;
%%

int main(int argc, char * agrv[]){
yylex();
return 0;
}

int yywrap(){return 1;}