clean:
	rm -Rf src/Tablecloth/{bin,obj}/ test/{bin,obj}/

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

publish:
	dotnet nuget push src/Tablecloth/bin/Release/*.nupkg --source https://api.nuget.org/v3/index.json

.PHONY: clean deps build check-format format test watch package publish
