#include "windows.h"
#include "Shobjidl.h"

// vtable_start 5
MIDL_INTERFACE("0000000c-0000-0000-C000-000000000046")
IStream : public ISequentialStream
{
public:
    virtual /* [local] */ HRESULT STDMETHODCALLTYPE Seek( 
        /* [in] */ LARGE_INTEGER dlibMove,
        /* [in] */ DWORD dwOrigin,
        /* [annotation] */ 
        _Out_opt_  ULARGE_INTEGER *plibNewPosition) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetSize( 
        /* [in] */ ULARGE_INTEGER libNewSize) = 0;
    
    virtual /* [local] */ HRESULT STDMETHODCALLTYPE CopyTo( 
        /* [annotation][unique][in] */ 
        _In_  IStream *pstm,
        /* [in] */ ULARGE_INTEGER cb,
        /* [annotation] */ 
        _Out_opt_  ULARGE_INTEGER *pcbRead,
        /* [annotation] */ 
        _Out_opt_  ULARGE_INTEGER *pcbWritten) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Commit( 
        /* [in] */ DWORD grfCommitFlags) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Revert( void) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE LockRegion( 
        /* [in] */ ULARGE_INTEGER libOffset,
        /* [in] */ ULARGE_INTEGER cb,
        /* [in] */ DWORD dwLockType) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE UnlockRegion( 
        /* [in] */ ULARGE_INTEGER libOffset,
        /* [in] */ ULARGE_INTEGER cb,
        /* [in] */ DWORD dwLockType) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Stat( 
        /* [out] */ __RPC__out STATSTG *pstatstg,
        /* [in] */ DWORD grfStatFlag) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Clone( 
        /* [out] */ __RPC__deref_out_opt IStream **ppstm) = 0;
    
};