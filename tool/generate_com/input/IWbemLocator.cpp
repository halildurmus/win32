#include "windows.h"
#include "Shobjidl.h"
#include "Wbemidl.h"

// vtable_start 3
MIDL_INTERFACE("dc12a687-737f-11cf-884d-00aa004b2e24")
IWbemLocator : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE ConnectServer( 
        /* [in] */ const BSTR strNetworkResource,
        /* [in] */ const BSTR strUser,
        /* [in] */ const BSTR strPassword,
        /* [in] */ const BSTR strLocale,
        /* [in] */ long lSecurityFlags,
        /* [in] */ const BSTR strAuthority,
        /* [in] */ IWbemContext *pCtx,
        /* [out] */ IWbemServices **ppNamespace) = 0;
    
};