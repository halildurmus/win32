#include "windows.h"
#include "Shobjidl.h"

// vtable_start 0
MIDL_INTERFACE("00000000-0000-0000-C000-000000000046")
IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE QueryInterface( 
        /* [in] */ REFIID riid,
        /* [annotation][iid_is][out] */ 
        _COM_Outptr_  void **ppvObject) = 0;
    
    virtual ULONG STDMETHODCALLTYPE AddRef( void) = 0;
    
    virtual ULONG STDMETHODCALLTYPE Release( void) = 0;
    
};