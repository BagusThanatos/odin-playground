@echo off
REM -MT tells the compiler to use multi-threading version of runtime library
REM see: https://docs.microsoft.com/en-us/cpp/build/reference/md-mt-ld-use-run-time-library?view=vs-2019
REM -TC tells the compiler to treat files as C files
REM -c to compiles without linking
cl -c -nologo -MT -TC -O2 sum.cpp
lib sum.obj