" Vim syntax file
" Language:     Dart
" Maintainer:   Eugene 'pr3d4t0r' Ciurana <dart.syntax AT cime.net >
" URL:          https://github.com/pr3d4t0r/dart-vim-syntax
" Last Change:  20191002 - first release
"
" vim: set fileencoding=utf-8:


if !exists("main_syntax")
  " quit when a syntax file was already loaded
  if exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'dart'
elseif exists("b:current_syntax") && b:current_syntax == "dart"
  finish
endif

let s:cpo_save = &cpo
set cpo&vim


syn keyword dartCommentTodo     TODO FIXME XXX TBD contained
syn match   dartLineComment     "\/\/.*" contains=@Spell,dartCommentTodo
syn match   dartCommentSkip      "^[ \t]*\*\($\|[ \t]\+\)"
syn region  dartComment            start="/\*"  end="\*/" contains=@Spell,dartCommentTodo
syn keyword dartReserved        assert class const enum extends final super void
syn match   dartNumber            "-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>"

" Reserved words
syn keyword dartBoolean     false true
syn keyword dartBranch      break continue
syn keyword dartConditional if else switch
syn keyword dartException   catch finally rethrow throw try
syn keyword dartIdentifier  this var
syn keyword dartLabel       case default
syn keyword dartNull        null
syn keyword dartOperator    is new
syn keyword dartRepeat      for do in while
syn keyword dartStatement   return with 
syn keyword dartType        String StringBuffer


syn sync fromstart
syn sync maxlines=100


hi def link dartBoolean     Boolean
hi def link dartBranch      Conditional
hi def link dartConditional Conditional
hi def link dartException   Exception
hi def link dartIdentifier  Identifier
hi def link dartLabel       Label
hi def link dartNull        Keyword
hi def link dartNull        Keyword
hi def link dartOperator    Operator
hi def link dartRepeat      Repeat
hi def link dartReserved    Keyword
hi def link dartStatement   Statement


let b:current_syntax = "dart"
if main_syntax == 'dart'
  unlet main_syntax
endif
let &cpo = s:cpo_save
unlet s:cpo_save

