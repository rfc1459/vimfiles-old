"tell the term has 256 colors
set t_Co=256

set background=light
colorscheme Tomorrow
set guitablabel=%M%t

"turn off needless toolbar and scrollbars, thanks
set guioptions=egmt

if has("gui_mac") || has("gui_macvim")
  " make Mac's Option key behave as the Meta key
  set invmmta
  set guifont=Anonymous:h10
  set transparency=10
endif

if has("gui_win32") || has("gui_win32s")
  set guifont=Consolas:h12
endif
