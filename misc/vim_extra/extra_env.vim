" set env for VIM
" ====================================================

if has("win32")
" windows
	let $APPS_HOME="d:/apps"
	if isdirectory(expand("d:/devlab"))
		let $DEV_HOME="d:/devlab"
	else
		let $DEV_HOME="e:/devlab"
	endif
else
" linux and others
	let $APPS_HOME="/apps"
    let $DEV_HOME="/devlab"
endif

" GOROOT
let $GOROOT=$APPS_HOME."/go"
let $OSCHINA=$DEV_HOME."/oschina.net"

" Common
let $GOPATH			=$DEV_HOME."/gocodes"
let $GOCODES		=$DEV_HOME."/gocodes"

let $LAB			=$OSCHINA."/betle_lab"
let $TESTLAB		=$OSCHINA."/betle_testlab"
let $BETLE_GO		=$GOCODES."/src/mabetle"
let $BETLE_BIN		=$OSCHINA."/betle_bin"
let $BETLE_WINBIN		=$OSCHINA."/betle_winbin"


let $TEST_HOME		=$DEV_HOME."/testlab/"

let $VIMRC			=$HOME."/.vim"

let $GITHUB			=$DEV_HOME."/github.com"
let $KZ_GITHUB		=$GITHUB."/korbenzhang"
let $MBT_GITHUB		=$GITHUB."/mabetle"
let $KZ_PAGE		=$GITHUB."/korbenzhang/korbenzhang.github.com"
let $MBT_PAGE		=$GITHUB."/mabetle/mabetle.github.io"

" let $PATH=$GOROOT."/bin:".$PATH
