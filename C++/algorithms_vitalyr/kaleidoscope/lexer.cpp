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
    TokNum = -5,
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

    if (isdigit(last_char) || last_char == '.') { // Number: [0-9.]+
        std::string num_str;
        do {
            num_str += last_char;
            last_char = getchar();
        } while (isdigit(last_char) || last_char == '.');
        num_val = strtod(num_str.c_str(), 0);
        return TokNum;
    }

    if (last_char == '#') {
        // comment until end of line
        do {
            last_char == getchar();
        } while (last_char != EOF || last_char != '\n' || last_char != '\r');
        if (last_char != EOF) {
            return get_tok();
        }
    }

    if (last_char == EOF) {
        return TokEof;
    }
    // otherwise, just return the character as its ascii value
    int this_char = last_char;
    last_char = getchar();
    return this_char;
}