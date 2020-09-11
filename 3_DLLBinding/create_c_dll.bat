@echo off
REM -LD tells the compiler to create a dll instead, also implies -MT
REM see: https://docs.microsoft.com/en-us/cpp/build/reference/md-mt-ld-use-run-time-library?view=vs-2019
REM -TC tells the compiler to treat files as C files
REM TODO(Bagus): Can we reduce dll size here?
cl -nologo -TC -LD -O2 multiply.cpp /link -incremental:no -EXPORT:c_multiply