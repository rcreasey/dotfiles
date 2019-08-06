export GOPATH="${HOME}/.go"
test -d "${GOPATH}" || mkdir "${GOPATH}"
export GOROOT="/usr/local/opt/go/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
