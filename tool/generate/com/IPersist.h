#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
MIDL_INTERFACE("0000010c-0000-0000-C000-000000000046")
IPersist : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE GetClassID( 
        /* [out] */ __RPC__out CLSID *pClassID) = 0;
    
};