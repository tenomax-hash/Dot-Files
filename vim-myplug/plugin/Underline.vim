let g:string_default="="
" Check the source already opended or Not
if exists('g:loaded_foo')
    finish
endif

let g:loaded_foo=1
" Make command for execution

command! MakeBelowUnderLine call Underline#ULine()
command! MakeAboveUnderLine call Underline#UULine()
command! MakePointer call Underline#Pointer()
command! MakeHash call Underline#HashLine()

