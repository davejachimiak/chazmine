command! Chaz execute s:chaz()

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Drop your Jasmine -> Chai text substitutions here "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:chaz()
  :call Sub("toBe", "to\.eql")
  :call Sub("toEqual", "to\.equal")
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     poop                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""

function! Sub(findText, replaceText)
  let find    = a:findText
  let replace = a:replaceText

  exec "%s/" .find.  "/" .replace. "/ge"
endfunction
