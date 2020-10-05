" Vim syntax file
"
" Language:     Dart
" Maintainer:   Eugene 'pr3d4t0r' Ciurana <dart.syntax AT cime.net >
" Source:       https://github.com/pr3d4t0r/dart-vim-syntax
"
" License:      Vim is Charityware.  dart.vim syntax is Charityware.
"               (c) Copyright 2019 by Eugene Ciurana / pr3d4t0r.  Licensed
"               under the standard VIM LICENSE - Vim command :help uganda.txt
"               for details.
"
" Questions, comments:  <dart.syntax AT cime.net>
"                       https://ciurana.eu/pgp, https://keybase.io/pr3d4t0r
"
" vim: set fileencoding=utf-8:


" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim


syn keyword dartCommentTodo     contained TODO FIXME XXX TBD
syn match   dartLineComment     "//.*" contains=dartTodo,@Spell
syn match   dartCommentSkip     "^[ \t]*\*\($\|[ \t]\+\)"
syn region  dartComment         start="/\*"  end="\*/" contains=@Spell,dartTodo
syn keyword dartReserved        assert async await class const export extends external final hide import implements interface library mixin on show super sync yield
syn match   dartNumber          "-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>"


syn keyword dartBoolean     false true
syn keyword dartBranch      break continue
syn keyword dartConditional if else switch
syn keyword dartException   catch finally rethrow throw try
syn keyword dartIdentifier  abstract covariant deferred dynamic factory Function operator part static this typedef var
syn keyword dartLabel       case default
syn keyword dartNull        null
syn keyword dartOperator    is new
syn keyword dartRepeat      for do in while
syn keyword dartStatement   return with 
syn keyword dartType        bool double enum int String StringBuffer void
syn keyword dartTodo        contained TODO FIXME XXX


syn match dartEscapeError   contained display "\\."
syn match dartEscape        contained display "\\\([4-9]\d\|[0-3]\d\d\)"
syn match dartEscape        contained display "\\\%([nrfbtv]\|x\x\{2}\|u\x\{4\}\|u{\x\{1,6}}\)"
syn match dartSQEscape      contained display "\\'"
syn match dartDQEscape      contained display '\\"'

syn match  dartStrInterpol  contained display "\${[\x, _]*\}"
syn match  dartStrInterpol  contained display "$\h\w\+"

syn region dartRString      start=+r\z(['"]\)+     end=+\z1+ oneline contains=@Spell
syn region dartSQString     start=+'+              end=+'+   end=+$+ contains=dartEscape,dartSQEscape,dartStrInterpol,dartEscapeError,@Spell
syn region dartDQString     start=+"+              end=+"+   end=+$+ contains=dartEscape,dartDQEscape,dartStrInterpol,dartEscapeError,@Spell
syn region dartTRString     start=+r\z('''\|"""\)+ end=+\z1+ contains=@Spell
syn region dartTSQString    start=+'''+            end=+'''+ contains=dartEscape,dartSQEscape,dartStrInterpol,dartEscapeError,@Spell
syn region dartTDQString    start=+"""+            end=+"""+ contains=dartEscape,dartDQEscape,dartStrInterpol,dartEscapeError,@Spell

syn match dartBraces        "[{}\[\]]"
syn match dartParens        "[()]"


syn sync fromstart
syn sync maxlines=100


hi def link dartBoolean         Boolean
hi def link dartBranch          Conditional
hi def link dartComment         Comment
hi def link dartConditional     Conditional
hi def link dartDQEscape        dartEscape
hi def link dartDQString        dartString
hi def link dartEscape          SpecialChar
hi def link dartEscapeError     Error
hi def link dartException       Exception
hi def link dartIdentifier      Identifier
hi def link dartLabel           Label
hi def link dartLineComment     Comment
hi def link dartNull            Keyword
hi def link dartOperator        Operator
hi def link dartRepeat          Repeat
hi def link dartReserved        Keyword
hi def link dartSQEscape        dartEscape
hi def link dartSQString        dartString
hi def link dartStatement       Statement
hi def link dartString          String
hi def link dartStrInterpol     Special
hi def link dartTSQString       dartString
hi def link dartTDQString       dartString
hi def link dartTRString        dartString
hi def link dartTodo            Todo
hi def link dartType            Type


let b:current_syntax = "dart"
let &cpo = s:cpo_save
unlet s:cpo_save

