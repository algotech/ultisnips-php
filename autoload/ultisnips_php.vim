if exists('g:loaded_ultisnips_php') && g:loaded_ultisnips_php
    finish
endif

" Resolve fully qualified name
fun! ultisnips_php#resolve_fqn()
    let fqn = substitute(substitute(substitute(expand("%:p:r"), '\v(.*\/\l+)((\/\u\w+)+)$', '\2', ''), '\/', '\', 'g'), '\', '', '')

    if exists('g:ultisnips_php_namespace_prefix')
        let fqn = g:ultisnips_php_namespace_prefix . '\' . fqn  
    endif

    return fqn
endf

fun! ultisnips_php#resolve_namespace()
    let fqn = ultisnips_php#resolve_fqn()

    return ultisnips_php#get_namespace(fqn)
endf

fun! ultisnips_php#get_namespace(fqn)
    return strpart(a:fqn, 0, strridx(a:fqn, '\'))
endf 

fun! ultisnips_php#get_class(fqn)
    return strpart(a:fqn, strridx(a:fqn, '\') + 1)
endf

let g:loaded_ultisnips_php = 1
