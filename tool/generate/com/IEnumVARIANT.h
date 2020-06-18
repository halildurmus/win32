#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
MIDL_INTERFACE("00020404-0000-0000-C000-000000000046")
IEnumVARIANT : public IUnknown
{
public:
    virtual /* [local] */ HRESULT STDMETHODCALLTYPE Next( 
        /* [in] */ ULONG celt,
        /* [length_is][size_is][out] */ VARIANT *rgVar,
        /* [out] */ ULONG *pCeltFetched) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Skip( 
        /* [in] */ ULONG celt) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Reset( void) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Clone( 
        /* [out] */ __RPC__deref_out_opt IEnumVARIANT **ppEnum) = 0;
    
};