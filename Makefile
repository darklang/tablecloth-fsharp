
deps:
	dotnet tool restore
	dotnet restore

build:
	dotnet build

watch:
	dotnet watch msbuild

format:
	dotnet fantomas --recurse src test

check-format:
	dotnet fantomas --recurse src test --check

test:
	dotnet run --project test

package:
	dotnet pack -c Release

.PHONY: deps build check-format format test watch package
