#include "windows.h"
#include "Shobjidl.h"

// vtable_start 4
MIDL_INTERFACE("00000109-0000-0000-C000-000000000046")
IPersistStream : public IPersist
{
public:
    virtual HRESULT STDMETHODCALLTYPE IsDirty( void) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Load( 
        /* [unique][in] */ __RPC__in_opt IStream *pStm) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Save( 
        /* [unique][in] */ __RPC__in_opt IStream *pStm,
        /* [in] */ BOOL fClearDirty) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetSizeMax( 
        /* [out] */ __RPC__out ULARGE_INTEGER *pcbSize) = 0;
    
};