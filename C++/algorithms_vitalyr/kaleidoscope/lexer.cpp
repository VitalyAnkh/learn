//
// Created by vitalyr on 2022/3/27.
//
#include "kaleidoscope.h"

enum Token {
    TokEof = -1,
    // commands
    TokDef = -2,
    TokExtern = -3,

    // primary
    TokIdent = -4,
    TokNumber = -5,
};

// global static variable
static std::string ident_str;
static double num_val;

static int get_tok() {
    static int last_char = ' ';

    // skip any whitespaces
    while (isspace(last_char)) {
        last_char = getchar();
    }
    if (isalpha(last_char)) {
        ident_str = last_char;
        while (isalnum((last_char = getchar()))) {
            ident_str += last_char;
        }

        if (ident_str == "def") {
            return TokDef;
        }
        if (ident_str == "extern") {
            return TokExtern;
        }
        return TokIdent;

    }

}