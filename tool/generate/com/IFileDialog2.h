#include "windows.h"
#include "Shobjidl.h"

// vtable_start 27
MIDL_INTERFACE("61744fc7-85b5-4791-a9b0-272276309b13")
IFileDialog2 : public IFileDialog
{
public:
    virtual HRESULT STDMETHODCALLTYPE SetCancelButtonLabel( 
        /* [in] */ __RPC__in LPCWSTR pszLabel) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetNavigationRoot( 
        /* [in] */ __RPC__in_opt IShellItem *psi) = 0;
    
};