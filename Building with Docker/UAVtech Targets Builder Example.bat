@echo off
set workdir=//c/Users/mspatz/git/spatzengr/betaflight
echo Betaflight directory: %workdir%

FOR %%A IN (OMNIBUSF4,OMNIBUSF4SD,DYSF4PRO,MATEK405,KAKUTEF4V2,MATEKF722,KAUTEF7,CLRACINGF4,OMNINXT7,REVOLT) DO (
  docker run -e "PLATFORM=%%A" --rm -ti -v %workdir%:/opt/betaflight betaflight/betaflight-build
)


PAUSE