" =========================
" This for under HeaderlIne
" =========================

function! Underline#ULine() abort
    let val=g:string_default
    exec 'normal! yypVr'.val."\<esc>"
endfunction


" ===============================
" This for UpperHeader function
" ===============================

function! Underline#UULine() abort
    let val=g:string_default
    exec 'normal! yyPVr'.val."\<esc>"
endfunction

" ===============================================
" This Function for Adding --> Pointer Function
" ===============================================

function! Underline#Pointer() abort
    exec 'normal! i-->'"\<esc>"
endfunction


" =====================================
" This function for adding Hash to Line
" =====================================
function! Underline#HashLine() abort
    exec 'normal! I# '"\<esc>"'A #'
endfunction
