command! Chaz execute s:chaz()

function! s:chaz()
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Drop your Jasmine -> Chai text substitutions here "
"""""""""""""""""""""""""""""""""""""""""""""""""""""

  :call Sub("toBeUndefined()", "to.be.undefined")
  :call Sub("toBeTruthy()", "to.be.true")
  :call Sub("toBeFalsy()", "to.be.false")
  :call Sub("toBe", "to.equal")

  :call Sub("toEqual", "to.eql")

  :call Sub("toContain", "to.contain")

  :call Sub("toThrow", "to.throw")

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
