# Tablecloth

[![CircleCI](https://circleci.com/gh/darklang/tablecloth-fsharp.svg?style=shield)](https://circleci.com/gh/darklang/tablecloth-fsharp)

Tablecloth is a library that shims over various standard libraries so they have the same function and module names, which using idiomatic types and patterns in each language.

This is the F# version, which uses FSharp.Core, pipe-last, and camelCase.

Note that F# support is newer and therefor less mature than other Tablecloth librares.

**Tablecloth is alpha-quality software, and is pre-1.0. Caveat emptor.**

Check out the [website](https://www.tablecloth.dev) for our interactive API documentation.

## Installation

**Note: these instructions are for the upcoming new version of tablecloth**

Add `Tablecloth.FSharp` via paket or nuget.

## Usage

The recommended way to use Tablecloth is with a top-level open at the beginning of a file.

This will ensure that all the built-in modules are replaced.

```
open Tablecloth

let () =
  String.toList "somestring"
  |> List.map Char.toCode
  |> List.map (fun x -> x+1)
  |> List.filterMap Char.fromCode
  |> String.fromList
```

## Supported versions

Tablecloth currently supports .NET 5.0 and later, and FSharp 6 and later.

## Design goals of Tablecloth

When switching between functional languages, it can be frustrating to try to
remember the names of different functions, which are not standardized and differ
due to history.

At the same time, we recognize that each language has their own idioms, and
often have mature and optimized standard libraries that we do not wish to replace.
As such, each version of tablecloth is simple a set of functions which call existing
standard libraries, and uses idiomatic patterns for the language in question.

Tablecloth was originally written to help port the Darklang frontend from Elm to
ReasonML. As we used OCaml on the backend, we tried to reuse some libraries by adding
OCaml versions of the ReasonML functions. However, code reuse was difficult and never
took off, and we ended up splitting the two libraries when the ReasonML community
moved to Rescript, which did not have the goal to be compatible with OCaml. When we
ported the backend from OCaml to F#, we added an F# version.

## Contributions

The maintainers are warm and friendly, and the project abides by a [Code of Conduct](./CODE_OF_CONDUCT.md).

There are many small tasks to be done - a small change to a single function can be extremely
helpful. We also welcome new versions of tablecloth for other languages, or even for the same
language but based on other libraries.

Check out the [dedicated guide](./documentation/contributing.md) on contributing for more.

## Developing

Please refer to the `Makefile` for a complete list of supported actions. Here is
a handful of useful, supported commands:

- `make deps`: Install dependencies and tools
- `make build`: Build the project
- `make watch`: Run a build watcher
- `make test`: Run the test suite
- `make check-format`: Check your code is formatted correctly.
- `make format`: Format code
- `make package`: Build a nuget package
- `make clean`: Delete all build output

## License

Tablecloth uses the [MIT](./LICENSE) license.

## Authors

Initially written by [Darklang](https://darklang.com).
