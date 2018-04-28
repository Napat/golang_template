# dep: Dependency management for Go

There are only few commands you're likely to run regularly

`dep init` to init dep environment for any project. Normally this command will create `Gopkg.toml`, `Gopkg.lock` and `vendor/` in current directory(should be your go project source, e.g., $GOPATH/src/github.com/me/example).

`dep ensure` is the command that changes disk state. It is something like:
Hey dep, please make sure that my project is in sync: that Gopkg.lock satisfies all the imports in my project, and all the rules in Gopkg.toml, and that vendor/ contains exactly what Gopkg.lock says it should."

## There are four times when you'll run dep ensure:

1. To add a new dependency

```bash
dep ensure -add github.com/foo/bar github.com/baz/quux
```

2. To update an existing dependency

```bash
dep ensure -update
dep ensure -update github.com/foo/bar
```

3. To catch up after importing a package for the first time in your project, or removing the last import of a package in your project

```bash
dep ensure
```

4. To catch up to a change to a rule in Gopkg.toml

```bash
dep ensure
```

`dep status` reports on the state of your project, and the visible universe of Go software projects.

## Trick

- Much like git, `dep status` and `dep ensure` can also be run from any subdirectory of your project root (which is determined by the presence of a Gopkg.toml file).
- We can visualizing dependencies and display to graphviz https://golang.github.io/dep/docs/daily-dep.html#visualizing-dependencies

## References

- [Creating a New Project with Dep](https://golang.github.io/dep/docs/new-project.html)  
- [Daily Dep](https://golang.github.io/dep/docs/daily-dep.html)
- [Concise guide to golang/dep](https://gist.github.com/subfuzion/12342599e26f5094e4e2d08e9d4ad50d)
