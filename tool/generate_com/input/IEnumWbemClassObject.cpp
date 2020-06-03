#include "windows.h"
#include "Shobjidl.h"
#include "Wbemidl.h"

// vtable_start 3
MIDL_INTERFACE("027947e1-d731-11ce-a357-000000000001")
IEnumWbemClassObject : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE Reset( void) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Next( 
        /* [in] */ long lTimeout,
        /* [in] */ ULONG uCount,
        /* [length_is][size_is][out] */ __RPC__out_ecount_part(uCount, *puReturned) IWbemClassObject **apObjects,
        /* [out] */ __RPC__out ULONG *puReturned) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE NextAsync( 
        /* [in] */ ULONG uCount,
        /* [in] */ __RPC__in_opt IWbemObjectSink *pSink) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Clone( 
        /* [out] */ __RPC__deref_out_opt IEnumWbemClassObject **ppEnum) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Skip( 
        /* [in] */ long lTimeout,
        /* [in] */ ULONG nCount) = 0;
    
};