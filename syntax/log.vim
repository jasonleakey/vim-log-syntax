" Vim syntax file
" Language:         Generic log files
" Maintainer:       Alex Dzyoba <avd@reduct.ru>
"                   Jason Huang <jasonh3308@gmail.com>
" Latest Revision:  2017-06-14
" Changes:          
" 2017-06-14 Add additional debug highlights
" 2013-03-08 Initial version

" Based on messages.vim - syntax file for highlighting kernel messages

if exists("b:current_syntax")
  finish
endif

syn match log_error 	'\c.*\<\(FATAL\|ERROR\|ERRORS\|FAIL\|FAILED\|FAILURE\).*'
syn match log_warning 	'\c.*\<\(WARN\|WARNING\|DELETE\|DELETING\|DELETED\|RETRY\|RETRYING\).*'
syn match log_info  	'\c.*\<\(INFO\).*'
syn match log_debug 	'\c.*\<\(DEBUG\).*'
syn match log_trace 	'\c.*\<\(TRACE\|TRACING\).*'
"syn region log_string 	start=/'/ end=/'/ end=/$/ skip=/\\./
"syn region log_string 	start=/"/ end=/"/ skip=/\\./
"syn match log_number 	'0x[0-9a-fA-F]*\|\[<[0-9a-f]\+>\]\|\<\d[0-9a-fA-F]*'

"syn match   log_date '\(Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\) [ 0-9]\d *'
"syn match   log_date '\d\{4}-\d\d-\d\d'

"syn match   log_time '\d\d:\d\d:\d\d\s*'
"syn match   log_time '\c\d\d:\d\d:\d\d\(\.\d\+\)\=\([+-]\d\d:\d\d\|Z\)'

"hi def link log_string 		String
"hi def link log_number 		Number
"hi def link log_date 		Constant
"hi def link log_time 		Type
hi log_trace    ctermfg=8 
hi log_debug    ctermfg=7
hi log_info     ctermfg=10 
hi log_warning 	ctermfg=11
hi log_error    ctermfg=9


let b:current_syntax = "log"
