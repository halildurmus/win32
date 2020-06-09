#include <windows.h>
#include <ole2.h>
#include "inspectable.h"
#include "AsyncInfo.h"
#include "EventToken.h"
#include "windowscontracts.h"
#include "Windows.Foundation.h"
#include "Windows.Storage.h"
#include "Windows.System.h"

// vtable_start 3
MIDL_INTERFACE("AF86E2E0-B12D-4c6a-9C5A-D7AA65101E90")
IInspectable : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE GetIids( 
        /* [out] */ __RPC__out ULONG *iidCount,
        /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*iidCount) IID **iids) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetRuntimeClassName( 
        /* [out] */ __RPC__deref_out_opt HSTRING *className) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetTrustLevel( 
        /* [out] */ __RPC__out TrustLevel *trustLevel) = 0;
    
};