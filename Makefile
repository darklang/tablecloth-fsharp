
build-fsharp:
	@printf "\n\e[31mBuilding fsharp...\e[0m\n"
	dotnet build
	@printf "\n\e[31mBuilt!\e[0m\n"

build:
	@$(MAKE) build-fsharp

watch-fsharp:
	@printf "\n\e[31mBuilding fsharp...\e[0m\n"
	dotnet watch msbuild 



