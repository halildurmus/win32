#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
MIDL_INTERFACE("1CF2B120-547D-101B-8E65-08002B2BD119")
IErrorInfo : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE GetGUID( 
        /* [out] */ __RPC__out GUID *pGUID) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetSource( 
        /* [out] */ __RPC__deref_out_opt BSTR *pBstrSource) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetDescription( 
        /* [out] */ __RPC__deref_out_opt BSTR *pBstrDescription) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetHelpFile( 
        /* [out] */ __RPC__deref_out_opt BSTR *pBstrHelpFile) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetHelpContext( 
        /* [out] */ __RPC__out DWORD *pdwHelpContext) = 0;
    
};