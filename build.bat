REM cmake -G "MinGW Makefiles" -B ./output
cmake --preset default
cd output
cmake --build .
cd..