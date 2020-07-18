#include "windows.h"
#include "Shobjidl.h"

// vtable_start 8
MIDL_INTERFACE("0000000f-0000-0000-C000-000000000046")
IMoniker : public IPersistStream
{
public:
    virtual /* [local] */ HRESULT STDMETHODCALLTYPE BindToObject( 
        /* [annotation][unique][in] */ 
        _In_  IBindCtx *pbc,
        /* [annotation][unique][in] */ 
        _In_opt_  IMoniker *pmkToLeft,
        /* [annotation][in] */ 
        _In_  REFIID riidResult,
        /* [annotation][iid_is][out] */ 
        _Outptr_  void **ppvResult) = 0;
    
    virtual /* [local] */ HRESULT STDMETHODCALLTYPE BindToStorage( 
        /* [annotation][unique][in] */ 
        _In_  IBindCtx *pbc,
        /* [annotation][unique][in] */ 
        _In_opt_  IMoniker *pmkToLeft,
        /* [annotation][in] */ 
        _In_  REFIID riid,
        /* [annotation][iid_is][out] */ 
        _Outptr_  void **ppvObj) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Reduce( 
        /* [unique][in] */ __RPC__in_opt IBindCtx *pbc,
        /* [in] */ DWORD dwReduceHowFar,
        /* [unique][out][in] */ __RPC__deref_opt_inout_opt IMoniker **ppmkToLeft,
        /* [out] */ __RPC__deref_out_opt IMoniker **ppmkReduced) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE ComposeWith( 
        /* [unique][in] */ __RPC__in_opt IMoniker *pmkRight,
        /* [in] */ BOOL fOnlyIfNotGeneric,
        /* [out] */ __RPC__deref_out_opt IMoniker **ppmkComposite) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Enum( 
        /* [in] */ BOOL fForward,
        /* [out] */ __RPC__deref_out_opt IEnumMoniker **ppenumMoniker) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE IsEqual( 
        /* [unique][in] */ __RPC__in_opt IMoniker *pmkOtherMoniker) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Hash( 
        /* [out] */ __RPC__out DWORD *pdwHash) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE IsRunning( 
        /* [unique][in] */ __RPC__in_opt IBindCtx *pbc,
        /* [unique][in] */ __RPC__in_opt IMoniker *pmkToLeft,
        /* [unique][in] */ __RPC__in_opt IMoniker *pmkNewlyRunning) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetTimeOfLastChange( 
        /* [unique][in] */ __RPC__in_opt IBindCtx *pbc,
        /* [unique][in] */ __RPC__in_opt IMoniker *pmkToLeft,
        /* [out] */ __RPC__out FILETIME *pFileTime) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Inverse( 
        /* [out] */ __RPC__deref_out_opt IMoniker **ppmk) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE CommonPrefixWith( 
        /* [unique][in] */ __RPC__in_opt IMoniker *pmkOther,
        /* [out] */ __RPC__deref_out_opt IMoniker **ppmkPrefix) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE RelativePathTo( 
        /* [unique][in] */ __RPC__in_opt IMoniker *pmkOther,
        /* [out] */ __RPC__deref_out_opt IMoniker **ppmkRelPath) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetDisplayName( 
        /* [unique][in] */ __RPC__in_opt IBindCtx *pbc,
        /* [unique][in] */ __RPC__in_opt IMoniker *pmkToLeft,
        /* [out] */ __RPC__deref_out_opt LPOLESTR *ppszDisplayName) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE ParseDisplayName( 
        /* [unique][in] */ __RPC__in_opt IBindCtx *pbc,
        /* [unique][in] */ __RPC__in_opt IMoniker *pmkToLeft,
        /* [in] */ __RPC__in LPOLESTR pszDisplayName,
        /* [out] */ __RPC__out ULONG *pchEaten,
        /* [out] */ __RPC__deref_out_opt IMoniker **ppmkOut) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE IsSystemMoniker( 
        /* [out] */ __RPC__out DWORD *pdwMksys) = 0;
    
};
