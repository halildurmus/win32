#include "windows.h"
#include "Shobjidl.h"
#include "netlistmgr.h"

// vtable_start 7
MIDL_INTERFACE("DCB00000-570F-4A9B-8D69-199FDBA5723B")
INetworkListManager : public IDispatch
{
public:
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetNetworks( 
        /* [in] */ NLM_ENUM_NETWORK Flags,
        /* [retval][out] */ __RPC__deref_out_opt IEnumNetworks **ppEnumNetwork) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetNetwork( 
        /* [in] */ GUID gdNetworkId,
        /* [retval][out] */ __RPC__deref_out_opt INetwork **ppNetwork) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetNetworkConnections( 
        /* [retval][out] */ __RPC__deref_out_opt IEnumNetworkConnections **ppEnum) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetNetworkConnection( 
        /* [in] */ GUID gdNetworkConnectionId,
        /* [retval][out] */ __RPC__deref_out_opt INetworkConnection **ppNetworkConnection) = 0;
    
    virtual /* [helpstring][id][propget] */ HRESULT STDMETHODCALLTYPE get_IsConnectedToInternet( 
        /* [retval][out] */ __RPC__out VARIANT_BOOL *pbIsConnected) = 0;
    
    virtual /* [helpstring][id][propget] */ HRESULT STDMETHODCALLTYPE get_IsConnected( 
        /* [retval][out] */ __RPC__out VARIANT_BOOL *pbIsConnected) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE GetConnectivity( 
        /* [retval][out] */ __RPC__out NLM_CONNECTIVITY *pConnectivity) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE SetSimulatedProfileInfo( 
        /* [in] */ __RPC__in NLM_SIMULATED_PROFILE_INFO *pSimulatedInfo) = 0;
    
    virtual /* [helpstring][id] */ HRESULT STDMETHODCALLTYPE ClearSimulatedProfileInfo( void) = 0;
    
};