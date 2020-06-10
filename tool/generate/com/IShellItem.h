#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
MIDL_INTERFACE("43826d1e-e718-42ee-bc55-a1e261c37bfe")
IShellItem : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE BindToHandler( 
        /* [unique][in] */ __RPC__in_opt IBindCtx *pbc,
        /* [in] */ __RPC__in REFGUID bhid,
        /* [in] */ __RPC__in REFIID riid,
        /* [iid_is][out] */ __RPC__deref_out_opt void **ppv) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetParent( 
        /* [out] */ __RPC__deref_out_opt IShellItem **ppsi) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetDisplayName( 
        /* [in] */ SIGDN sigdnName,
        /* [annotation][string][out] */ 
        _Outptr_result_nullonfailure_  LPWSTR *ppszName) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetAttributes( 
        /* [in] */ SFGAOF sfgaoMask,
        /* [out] */ __RPC__out SFGAOF *psfgaoAttribs) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Compare( 
        /* [in] */ __RPC__in_opt IShellItem *psi,
        /* [in] */ SICHINTF hint,
        /* [out] */ __RPC__out int *piOrder) = 0;
    
};
    