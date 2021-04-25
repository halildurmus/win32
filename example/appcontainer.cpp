#include <winrt/Windows.Storage.h>
#include <windows.h>

bool IsAppcontainer()
{

    HANDLE h_Process;
    HANDLE h_Token;

    h_Process = GetCurrentProcess();

    if (OpenProcessToken(h_Process, TOKEN_READ, &h_Token) == FALSE)
    {
        OutputDebugString(L"Error: Couldn't open the process token\n");
    }

    DWORD bytesReturned = 128;
    LPVOID tokenUser = nullptr;

    if (!GetTokenInformation(h_Token, TokenIsAppContainer, &tokenUser, bytesReturned, &bytesReturned))
    {
        if (ERROR_INSUFFICIENT_BUFFER == GetLastError())
        {
            LocalFree(tokenUser);
            tokenUser = nullptr;
        }
        if (tokenUser > 0)
        {
            return true;
        }
        return false;
    }
}

//TODO return string
__declspec(dllexport) void __cdecl GetRoamingFolder()
{
    if (IsAppcontainer())
    {
        OutputDebugString(L"Appcontainer");

        auto result = winrt::Windows::Storage::UserDataPaths::GetDefault();
        winrt::hstring roaming = result.RoamingAppData();
        auto buffer = roaming.c_str();
        OutputDebugString(buffer);
        //TODO return / marshal
    }
    else
    {
        OutputDebugString(L"NotAppcontainer");
        // load library
        //get proc address
        // call the win32 API
    }
}