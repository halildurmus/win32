#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
MIDL_INTERFACE("00000010-0000-0000-C000-000000000046")
IRunningObjectTable : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE Register( 
        /* [in] */ DWORD grfFlags,
        /* [unique][in] */ __RPC__in_opt IUnknown *punkObject,
        /* [unique][in] */ __RPC__in_opt IMoniker *pmkObjectName,
        /* [out] */ __RPC__out DWORD *pdwRegister) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Revoke( 
        /* [in] */ DWORD dwRegister) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE IsRunning( 
        /* [unique][in] */ __RPC__in_opt IMoniker *pmkObjectName) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetObject( 
        /* [unique][in] */ __RPC__in_opt IMoniker *pmkObjectName,
        /* [out] */ __RPC__deref_out_opt IUnknown **ppunkObject) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE NoteChangeTime( 
        /* [in] */ DWORD dwRegister,
        /* [in] */ __RPC__in FILETIME *pfiletime) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetTimeOfLastChange( 
        /* [unique][in] */ __RPC__in_opt IMoniker *pmkObjectName,
        /* [out] */ __RPC__out FILETIME *pfiletime) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumRunning( 
        /* [out] */ __RPC__deref_out_opt IEnumMoniker **ppenumMoniker) = 0;
    
};