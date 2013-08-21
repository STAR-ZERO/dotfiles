if has('gui_macvim')
    "タブを常に表示
    set showtabline=2
    "自動IMをOFF
    set imdisable
    "起動時のウィンドウサイズ
    set lines=80 columns=200
    "アンチエイリアス
    set antialias
    "フォント
    set guifont=Ricty-RegularForPowerline:h16
    "バックアップを取らない
    set nobackup
    "ツールバーを非表示
    set guioptions-=T
    "ビープ音なし
    set visualbell t_vb=
    "カラースキーム
    colorscheme Tomorrow-Night
endif
