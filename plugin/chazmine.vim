command! Chaz execute s:chaz()

function! s:chaz()
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Drop your Jasmine -> Chai text substitutions here "
"""""""""""""""""""""""""""""""""""""""""""""""""""""

  :call Sub("toBe", "to.eql")
  :call Sub("toEqual", "to.equal")
  :call Sub("toHaveBeenCalled()", "to.have.been.calledWith()")
  :call Sub("toHaveBeenCalledWith", "to.have.been.calledWith")

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     poop                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
endfunction

function! Sub(findText, replaceText)
  let find    = a:findText
  let replace = a:replaceText

  exec "%s/" .find.  "/" .replace. "/ge"
endfunction
