{
open Parser
exception Eof
}

rule token = parse
    | [' ' '\t']        { token lexbuf }
    | ['\n']            { EOL }
    | ['0'-'9']+ as v   { INT(int_of_string v) }
    | '+'               { PLUS }
    | '-'               { MINUS }
    | '*'               { TIMES }
    | '/'               { DIV }
    | '('               { LPAREN }
    | ')'               { RPAREN }
    | eof               { raise Eof }
