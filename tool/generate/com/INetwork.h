#include "windows.h"
#include "Shobjidl.h"
#include "netlistmgr.h"

// vtable_start 7
MIDL_INTERFACE("DCB00002-570F-4A9B-8D69-199FDBA5723B")
INetwork : public IDispatch
{
public:
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetName( 
        /* [retval][string][out] */ __RPC__deref_out_opt_string BSTR *pszNetworkName) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE SetName( 
        /* [string][in] */ __RPC__in_string BSTR szNetworkNewName) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetDescription( 
        /* [retval][string][out] */ __RPC__deref_out_opt_string BSTR *pszDescription) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE SetDescription( 
        /* [string][in] */ __RPC__in_string BSTR szDescription) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetNetworkId( 
        /* [retval][out] */ __RPC__out GUID *pgdGuidNetworkId) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetDomainType( 
        /* [retval][out] */ __RPC__out NLM_DOMAIN_TYPE *pNetworkType) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetNetworkConnections( 
        /* [retval][out] */ __RPC__deref_out_opt IEnumNetworkConnections **ppEnumNetworkConnection) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetTimeCreatedAndConnected( 
        /* [out] */ __RPC__out DWORD *pdwLowDateTimeCreated,
        /* [out] */ __RPC__out DWORD *pdwHighDateTimeCreated,
        /* [out] */ __RPC__out DWORD *pdwLowDateTimeConnected,
        /* [out] */ __RPC__out DWORD *pdwHighDateTimeConnected) = 0;
    
    virtual /* [helpstring][id][propget] */ HRESULT STDMETHODCALLTYPE get_IsConnectedToInternet( 
        /* [retval][out] */ __RPC__out VARIANT_BOOL *pbIsConnected) = 0;
    
    virtual /* [helpstring][id][propget] */ HRESULT STDMETHODCALLTYPE get_IsConnected( 
        /* [retval][out] */ __RPC__out VARIANT_BOOL *pbIsConnected) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetConnectivity( 
        /* [retval][out] */ __RPC__out NLM_CONNECTIVITY *pConnectivity) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetCategory( 
        /* [retval][out] */ __RPC__out NLM_NETWORK_CATEGORY *pCategory) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE SetCategory( 
        /* [in] */ NLM_NETWORK_CATEGORY NewCategory) = 0;
    
};