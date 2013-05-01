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
  :call Sub("toHaveText", "to.contain")
  :call Sub("toMatch", "to.match")

  :call Sub("toThrow", "to.throw")

  :call Sub("toHaveClass", "to.have.class")

  :call Sub("toHaveBeenCalled()", "to.have.been.called")
  :call Sub("toHaveBeenCalledOnce()", "to.have.been.calledOnce")
  :call Sub("toHaveBeenCalledTwice()", "to.have.been.calledTwice")
  :call Sub("toHaveBeenCalledThrice()", "to.have.been.calledThrice")
  :call Sub("toHaveBeenCalledWith", "to.have.been.calledWith")

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     poop                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
  :call Sub("not.to", "to.not")
endfunction

function! Sub(findText, replaceText)
  let find    = a:findText
  let replace = a:replaceText

  exec "%s/" .find.  "/" .replace. "/ge"
endfunction
