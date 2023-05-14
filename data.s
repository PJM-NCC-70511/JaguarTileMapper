	.data

	.globl  _arpgPal
	.even
_arpgPal:
	incbin  "slt2.pal"

        .globl  _black
        .phrase
_black:
        dcb.l    8, 0

	.globl  _arpgTiles
	.phrase
_arpgTiles:
	incbin  "slt2.map"

	.globl	_arpgLevel
	.even
_arpgLevel:
	incbin	"sld1.lev"
    
