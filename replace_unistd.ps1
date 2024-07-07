Get-ChildItem -Recurse -Include *.c,*.h,*.cpp | ForEach-Object {
    (Get-Content $_.FullName) -replace '#include <unistd.h>', '#ifdef _WIN32`n#include <windows.h>`n#else`n#include <unistd.h>`n#endif' | Set-Content $_.FullName
}
