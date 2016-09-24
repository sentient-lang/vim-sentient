" Vim syntax file
"
" Language:         Sentient
" Filename:         sentient.vim
" Version:          1.0.0
" Last Change:      18 September 2016
" Maintainer:       Chris Patuzzo
" URL:              http://sentient-lang.org

if exists('b:current_syntax')
  finish
endif

let b:current_syntax = 'sentient'

" Keywords
syn keyword sntKeyword expose invariant return
hi def link sntKeyword Keyword

" Constants
syn match sntNumber '-\?\<\d\+'
syn keyword sntBoolean true false
hi def link sntNumber Number
hi def link sntBoolean Boolean

" Type declarations
syn keyword sntType int bool
syn match sntType 'int\d\+'
syn match sntType 'array\d\+'
hi def link sntType Type

" Brackets
syn match sntBracket '\['
syn match sntBracket '\]'
syn match sntBracket '{'
syn match sntBracket '}'
hi def link sntBracket Function

" Functions
syn keyword sntFunction function
syn match sntFnDynamic '\^'
syn region sntBody start='{' end='}' fold transparent
hi def link sntFunction Function
hi def link sntFnDynamic SpecialChar

" Pointers
syn match sntPointer '*\w\+[?!]\?'
hi def link sntPointer Function

" Semicolons
syn match sntSemicolon ';'
hi def link sntSemicolon Delimiter

" Comments
syn match sntComment '#.*$'
hi def link sntComment Comment
