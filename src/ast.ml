open Printf

type expr =
    | Int of int
    | Binary of string * expr * expr
    | Unary of string * expr

let rec print_expr = function
    | Int i ->
        printf "Int(%d)" i;

    | Binary (a, op1, op2) ->
        printf "Binary(%s, " a;
        print_expr op1;
        printf ", ";
        print_expr op2;
        printf ")";

    | Unary (a, op1) ->
        printf "Unary(%s, " a;
        print_expr op1;
        printf ")";
