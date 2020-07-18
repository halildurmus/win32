#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
MIDL_INTERFACE("64a1cbf0-3a1a-4461-9158-376969693950")
IFileIsInUse : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE GetAppName( 
        /* [string][out] */ __RPC__deref_out_opt_string LPWSTR *ppszName) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetUsage( 
        /* [out] */ __RPC__out FILE_USAGE_TYPE *pfut) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetCapabilities( 
        /* [out] */ __RPC__out DWORD *pdwCapFlags) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetSwitchToHWND( 
        /* [out] */ __RPC__deref_out_opt HWND *phwnd) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE CloseFile( void) = 0;
    
};