function! SimSoftWrap()
    if exists('g:soft_wrap_win_cnt')
        execute g:soft_wrap_win_cnt "wincmd w"
        unlet g:soft_wrap_win_cnt
        quit
    elseif winwidth("%") > 84
        let l:current_win_cnt = winnr()
        botright vnew
        let g:soft_wrap_win_cnt = winnr()
        setlocal nonu
        setlocal buftype=nofile
        hi NonText guifg=bg
        execute current_win_cnt "wincmd w"
        vertical resize 84
    endif
endfunction
