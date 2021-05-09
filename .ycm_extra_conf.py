import os
import ycm_core

SOURCE_EXTENSIONS = [ '.c', '.h' ]

def Settings(**kwargs):
    flags = [
        '-std=c18',
        '-Wall',
        '-Wextra',
        '-pedantic',
        '-Wformat=2',
        '-Wshadow',
        '-Wstrict-prototypes',
        '-Wredundant-decls',
        '-Wnested-externs',
        '-pedantic-errors',
        '-Wfloat-equal',
        '-Wpointer-arith',
        '-Wno-unused-function',
        '-Wno-empty-translation-unit'
    ]

    return {
        'flags': flags
    }

