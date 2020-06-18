#include "windows.h"
#include "Shobjidl.h"
#include "netlistmgr.h"

// vtable_start 7
MIDL_INTERFACE("DCB00005-570F-4A9B-8D69-199FDBA5723B")
INetworkConnection : public IDispatch
{
public:
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetNetwork( 
        /* [retval][out] */ __RPC__deref_out_opt INetwork **ppNetwork) = 0;
    
    virtual /* [helpstring][id][propget] */ HRESULT STDMETHODCALLTYPE get_IsConnectedToInternet( 
        /* [retval][out] */ __RPC__out VARIANT_BOOL *pbIsConnected) = 0;
    
    virtual /* [helpstring][id][propget] */ HRESULT STDMETHODCALLTYPE get_IsConnected( 
        /* [retval][out] */ __RPC__out VARIANT_BOOL *pbIsConnected) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetConnectivity( 
        /* [retval][out] */ __RPC__out NLM_CONNECTIVITY *pConnectivity) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetConnectionId( 
        /* [retval][out] */ __RPC__out GUID *pgdConnectionId) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetAdapterId( 
        /* [retval][out] */ __RPC__out GUID *pgdAdapterId) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetDomainType( 
        /* [retval][out] */ __RPC__out NLM_DOMAIN_TYPE *pDomainType) = 0;
    
};