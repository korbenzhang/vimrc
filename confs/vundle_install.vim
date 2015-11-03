" if no vundle, git clone it

let vundle_readme=expand('$HOME/.vim/bundle/Vundle.vim/README.md')

" Skip when has Vundle
if filereadable(vundle_readme)
	finish
endif

" Clone Vundle
if !filereadable(vundle_readme)
	setl noshellslash
	echo "Installing Vundle.."

	" init bundle_dir
	let bundle_dir=expand('$HOME/.vim/bundle/')
	call InitDir(bundle_dir)

	echo ""

	silent exec "!git clone https://github.com/VundleVim/Vundle.vim.git ".bundle_dir."Vundle.vim"

	setl shellslash
endif

