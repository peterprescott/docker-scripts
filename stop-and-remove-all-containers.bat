@ECHO OFF
FOR /f "tokens=*" %%i IN ('docker container ls -a -q') DO docker container stop %%i

@ECHO OFF
FOR /f "tokens=*" %%i IN ('docker container ls -a -q') DO docker container rm %%i
