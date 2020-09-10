@echo off
REM -MT tells the compiler to use multi-threading
REM -TC tells the compiler to treat files as C files
cl -c -nologo -MT -TC -O2 sum.cpp
lib sum.obj