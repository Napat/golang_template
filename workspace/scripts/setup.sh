# Install packages to alpine linux

command -v git >/dev/null 2>&1 || {
    echo "git is not available then auto download/install...";
    apk add --no-cache git;
}

# Install golang/dep
command -v dep >/dev/null 2>&1 || {
    echo "golang/dep is not available then auto download/install...";
    apk add --no-cache curl;
    curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh;
}
