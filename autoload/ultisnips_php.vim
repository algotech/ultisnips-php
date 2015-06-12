if exists('g:loaded_ultisnips_php') && g:loaded_ultisnips_php
    finish
endif

fun! ultisnips_php#resolve_namespace()
    let namespace = substitute(substitute(substitute(expand("%:p:h"), '\v(.*\/\l+)((\/\u\w+)+)$', '\2', ''), '\/', '\', 'g'), '\', '', '')

    if exists('g:ultisnips_php_namespace_prefix')
        let namespace = g:ultisnips_php_namespace_prefix . '\' . namespace  
    endif

    return namespace
endf 

let g:loaded_ultisnips_php = 1
