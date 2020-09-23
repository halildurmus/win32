#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
MIDL_INTERFACE("B196B283-BAB4-101A-B69C-00AA00341D07")
IProvideClassInfo : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE GetClassInfo( 
        /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTI) = 0;
    
};