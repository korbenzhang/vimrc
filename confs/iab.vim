" abb

func! InsertDate()
	"strftime("%Y-%m-%d %H:%M:%S")
endfunc
command! -bar -narg=0 InsertDate  call InsertDate()

iab dt <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>

iab pu public
iab pr private
iab fu func
iab im import
iab pa package
iab ma main
iab fun func
iab re return

ab  teh the
ab  fro for

