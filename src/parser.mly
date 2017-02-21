%token <int> INT
%token PLUS MINUS TIMES DIV
%token LPAREN RPAREN
%token EOL
%left PLUS MINUS
%left TIMES DIV
%nonassoc UMINUS

%start main
%type <Ast.expr> main
%%
main:
    | expr EOL              { $1 }
    ;

expr:
    INT                     { Ast.Int $1 }
    | LPAREN expr RPAREN    { $2 }
    | expr PLUS expr        { Ast.Binary ("+", $1, $3) }
    | expr MINUS expr       { Ast.Binary ("-", $1, $3) }
    | expr TIMES expr       { Ast.Binary ("*", $1, $3) }
    | expr DIV expr         { Ast.Binary ("/", $1, $3) }
    | MINUS expr %prec UMINUS { Ast.Unary ("-", $2) }
    ;
