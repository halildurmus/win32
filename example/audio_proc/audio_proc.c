#include <include/dart_api_dl.h>
#include <windows.h>
#include <stdio.h>

struct AudioProcResult {
    HANDLE hWaveOut;
    UINT uMsg;
    DWORD_PTR dwParam1;
    DWORD_PTR dwParam2;
};

extern intptr_t InitDartApiDL(void* data) __attribute__((dllexport)) {
    return Dart_InitializeApiDL(data);
}

extern void CALLBACK AudioProc(HANDLE hWaveOut, UINT uMsg, DWORD_PTR dwInstance,
                               DWORD_PTR dwParam1, DWORD_PTR dwParam2) __attribute__((dllexport))
{
    Dart_Port_DL nativePortId = (Dart_Port_DL)dwInstance;
    struct AudioProcResult *result = HeapAlloc(GetProcessHeap(), 0, sizeof(struct AudioProcResult));
    result->hWaveOut = hWaveOut;
    result->uMsg = uMsg;
    result->dwParam1 = dwParam1;
    result->dwParam2 = dwParam2;
    const bool postResult = Dart_PostInteger_DL(nativePortId, (int64_t)result);
    if (!postResult) {
        printf("FATAL: Posting message to port failed.");
        abort();
    }
    return;
}
