#include "windows.h"
#include "Shobjidl.h"
#include "netlistmgr.h"

// vtable_start 7
MIDL_INTERFACE("DCB00006-570F-4A9B-8D69-199FDBA5723B")
IEnumNetworkConnections : public IDispatch
{
public:
    virtual /* [restricted][hidden][propget][id] */ HRESULT STDMETHODCALLTYPE get__NewEnum( 
        /* [retval][out] */ __RPC__deref_out_opt IEnumVARIANT **ppEnumVar) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE Next( 
        /* [in] */ ULONG celt,
        /* [length_is][size_is][out] */ __RPC__out_ecount_part(celt, *pceltFetched) INetworkConnection **rgelt,
        /* [full][out][in] */ __RPC__inout_opt ULONG *pceltFetched) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE Skip( 
        /* [in] */ ULONG celt) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE Reset( void) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE Clone( 
        /* [retval][out] */ __RPC__deref_out_opt IEnumNetworkConnections **ppEnumNetwork) = 0;
    
};