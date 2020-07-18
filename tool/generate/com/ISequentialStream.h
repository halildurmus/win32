#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
MIDL_INTERFACE("0c733a30-2a1c-11ce-ade5-00aa0044773d")
ISequentialStream : public IUnknown
{
public:
    virtual /* [local] */ HRESULT STDMETHODCALLTYPE Read( 
        /* [annotation] */ 
        _Out_writes_bytes_to_(cb, *pcbRead)  void *pv,
        /* [annotation][in] */ 
        _In_  ULONG cb,
        /* [annotation] */ 
        _Out_opt_  ULONG *pcbRead) = 0;
    
    virtual /* [local] */ HRESULT STDMETHODCALLTYPE Write( 
        /* [annotation] */ 
        _In_reads_bytes_(cb)  const void *pv,
        /* [annotation][in] */ 
        _In_  ULONG cb,
        /* [annotation] */ 
        _Out_opt_  ULONG *pcbWritten) = 0;
    
};