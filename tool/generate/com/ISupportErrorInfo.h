#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
MIDL_INTERFACE("DF0B3D60-548F-101B-8E65-08002B2BD119")
ISupportErrorInfo : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE InterfaceSupportsErrorInfo( 
        /* [in] */ __RPC__in REFIID riid) = 0;
    
};