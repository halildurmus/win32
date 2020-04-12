#include <windows.h>
#include <objbase.h>
#include <ShlObj.h>
#include <shlwapi.h>
#include <stdio.h>

void printPointer(char *name, void *ptr)
{
    printf("%-15s: %p\n", name, (void *)ptr);
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
            printPointer("lpVtbl", &(dlg->lpVtbl));
            printPointer("QueryInterface", &(dlg->lpVtbl->QueryInterface));
            printPointer("AddRef", &(dlg->lpVtbl->AddRef));
            printPointer("Release", &(dlg->lpVtbl->Release));
            printPointer("Show", &(dlg->lpVtbl->Show));

            printf("showing dialog\n");
            hr = dlg->lpVtbl->Show(dlg, NULL);
            if (SUCCEEDED(hr))
            {
                printf("succeeded\n");
            }
            CoUninitialize();
        }
    }
}