
build:
	dotnet build

watch:
	dotnet watch msbuild

format:
	dotnet tool install fantomas
	dotnet tool run fantomas src

test:
	dotnet restore
	dotnet run --project test

package:
	dotnet pack -c Release

.PHONY: build format test watch package
