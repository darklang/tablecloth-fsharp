
build-fsharp:
	@printf "\n\e[31mBuilding fsharp...\e[0m\n"
	dotnet build
	@printf "\n\e[31mBuilt!\e[0m\n"

build:
	@$(MAKE) build-fsharp

watch-fsharp:
	@printf "\n\e[31mBuilding fsharp...\e[0m\n"
	dotnet watch msbuild 

format:
	dotnet tool install fantomas
	dotnet tool run fantomas src

test-fsharp:
	@printf "\n\e[31mRunning tablecloth-fsharp tests ...\e[0m\n"
	dotnet restore 
	dotnet run --project test
	@printf "\n\e[31mTested!\e[0m\n"

test:
	@$(MAKE) test-fsharp

