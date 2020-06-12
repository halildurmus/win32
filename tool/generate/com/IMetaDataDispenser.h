#include <windows.h>
#include <ole2.h>
#include "inspectable.h"
#include "AsyncInfo.h"
#include "EventToken.h"
#include "windowscontracts.h"
#include "Windows.Foundation.h"
#include "Windows.System.h"

// vtable_start 3
MIDL_INTERFACE("809C652E-7396-11D2-9771-00A0C9B4D50C")
IMetaDataDispenser : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE DefineScope( 
        /* [in] */ REFCLSID rclsid,
        /* [in] */ DWORD dwCreateFlags,
        /* [in] */ REFIID riid,
        /* [iid_is][out] */ IUnknown **ppIUnk) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE OpenScope( 
        /* [string][in] */ LPCWSTR szScope,
        /* [in] */ DWORD dwOpenFlags,
        /* [in] */ REFIID riid,
        /* [iid_is][out] */ IUnknown **ppIUnk) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE OpenScopeOnMemory( 
        /* [size_is][in] */ const BYTE *pData,
        /* [in] */ ULONG cbData,
        /* [in] */ DWORD dwOpenFlags,
        /* [in] */ REFIID riid,
        /* [iid_is][out] */ IUnknown **ppIUnk) = 0;
    
};