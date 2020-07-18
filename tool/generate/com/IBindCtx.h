#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
MIDL_INTERFACE("0000000e-0000-0000-C000-000000000046")
IBindCtx : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE RegisterObjectBound( 
        /* [unique][in] */ __RPC__in_opt IUnknown *punk) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE RevokeObjectBound( 
        /* [unique][in] */ __RPC__in_opt IUnknown *punk) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE ReleaseBoundObjects( void) = 0;
    
    virtual /* [local] */ HRESULT STDMETHODCALLTYPE SetBindOptions( 
        /* [annotation][in] */ 
        _In_  BIND_OPTS *pbindopts) = 0;
    
    virtual /* [local] */ HRESULT STDMETHODCALLTYPE GetBindOptions( 
        /* [annotation][out][in] */ 
        _Inout_  BIND_OPTS *pbindopts) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetRunningObjectTable( 
        /* [out] */ __RPC__deref_out_opt IRunningObjectTable **pprot) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE RegisterObjectParam( 
        /* [in] */ __RPC__in LPOLESTR pszKey,
        /* [unique][in] */ __RPC__in_opt IUnknown *punk) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetObjectParam( 
        /* [in] */ __RPC__in LPOLESTR pszKey,
        /* [out] */ __RPC__deref_out_opt IUnknown **ppunk) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumObjectParam( 
        /* [out] */ __RPC__deref_out_opt IEnumString **ppenum) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE RevokeObjectParam( 
        /* [in] */ __RPC__in LPOLESTR pszKey) = 0;
    
};