arch nes.cpu

// Header fix
db $4E,$45,$53,$1A,$10,$20,$23,$D0,$00,$00,$00,$00,$00,$00,$00,$00

org $00040010
  incbin "asm/gfx/font.chr"