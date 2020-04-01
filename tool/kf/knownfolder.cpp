// knownfolder.cpp

// Compile with cl tool\kf\knownfolder.cpp /link shell32.lib ole32.lib

#include <windows.h>
#include <string>

#include <KnownFolders.h>
#include <ShlObj.h>

using namespace std;

void main()
{
    auto guidFolder = FOLDERID_Documents;

    LPWSTR ptr = nullptr;

    HRESULT hr = SHGetKnownFolderPath(guidFolder, 0, nullptr, &ptr);

    if (SUCCEEDED(hr))
    {
        WCHAR szReturnPath[MAX_PATH];

        wcscpy_s(szReturnPath, MAX_PATH, ptr);
        printf("SHGetKnownFolderPath returned %ws", szReturnPath);

        CoTaskMemFree(ptr);
    }
    else
    {
        if (hr == E_FAIL)
        {
            printf("SHGetKnownFolderPath returned error code E_FAIL\n");
        }
        else if (hr == E_INVALIDARG)
        {
            printf("SHGetKnownFolderPath returned error code E_INVALIDARG\n");
        }
        printf("SHGetKnownFolderPath returned error code %lu\n", hr);
    }
}
