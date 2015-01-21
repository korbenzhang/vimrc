# install go libs used for vim-go

go get -v github.com/nsf/gocode
go get -v github.com/kisielk/errcheck
go get -v github.com/jstemmer/gotags

go get -v github.com/golang/lint/golint

# new place in github.com
go get -v github.com/golang/tools/cmd/goimports
go get -v github.com/golang/tools/cmd/oracle

# place in golang.org
go get -v golang.org/x/tools/cmd/goimports
go get -v golang.org/x/tools/cmd/oracle


# old place.
go get -v code.google.com/p/go.tools/cmd/goimports
go get -v code.google.com/p/go.tools/cmd/oracle

go get -v code.google.com/p/rog-go/exp/cmd/godef
