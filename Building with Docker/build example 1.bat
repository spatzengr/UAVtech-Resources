cd betaflight
del /q obj\*.*
docker run -e "PLATFORM=%1" --rm -it -v "//d/github/betaflight":/opt/betaflight beta-build
