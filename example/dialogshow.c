// dialogshow.c

// Opens the File Open dialog box and shows results

// Compile with cl dialogshow.c /link ole32.lib

#include <windows.h>
#include <objbase.h>
#include <ShlObj.h>
#include <shlwapi.h>
#include <stdio.h>

void printPointer(char *name, const void *ptr)
{
    printf("%-30s: %p\n", name, (void *)ptr);
}

int main(int argc, char **argv)
{
    IFileDialog *dlg;

    HRESULT hr = CoInitializeEx(0, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
    if (SUCCEEDED(hr))
    {
        hr = CoCreateInstance(&CLSID_FileOpenDialog,
                              NULL,
                              CLSCTX_ALL,
                              &IID_IFileDialog,
                              &dlg);

        if (SUCCEEDED(hr))
        {
            printPointer("dlg", &dlg);
            printPointer("dlg->lpVtbl", &(dlg->lpVtbl));
            printPointer("dlg->lpVtbl->QueryInterface", &(dlg->lpVtbl->QueryInterface));
            printPointer("dlg->lpVtbl->AddRef", &(dlg->lpVtbl->AddRef));
            printPointer("dlg->lpVtbl->Release", &(dlg->lpVtbl->Release));
            printPointer("dlg->lpVtbl->Show", &(dlg->lpVtbl->Show));
            printPointer("dlg->lpVtbl->SetTitle", &(dlg->lpVtbl->SetTitle));

            printf("adding ref\n");
            hr = dlg->lpVtbl->AddRef(dlg);
            if (SUCCEEDED(hr))
            {
                printf("succeeded %lu", hr);
            }
            CoUninitialize();
        }
    }
}