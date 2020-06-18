#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
MIDL_INTERFACE("00020400-0000-0000-C000-000000000046")
IDispatch : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE GetTypeInfoCount( 
        /* [out] */ __RPC__out UINT *pctinfo) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetTypeInfo( 
        /* [in] */ UINT iTInfo,
        /* [in] */ LCID lcid,
        /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetIDsOfNames( 
        /* [in] */ __RPC__in REFIID riid,
        /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
        /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
        /* [in] */ LCID lcid,
        /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId) = 0;
    
    virtual /* [local] */ HRESULT STDMETHODCALLTYPE Invoke( 
        /* [annotation][in] */ 
        _In_  DISPID dispIdMember,
        /* [annotation][in] */ 
        _In_  REFIID riid,
        /* [annotation][in] */ 
        _In_  LCID lcid,
        /* [annotation][in] */ 
        _In_  WORD wFlags,
        /* [annotation][out][in] */ 
        _In_  DISPPARAMS *pDispParams,
        /* [annotation][out] */ 
        _Out_opt_  VARIANT *pVarResult,
        /* [annotation][out] */ 
        _Out_opt_  EXCEPINFO *pExcepInfo,
        /* [annotation][out] */ 
        _Out_opt_  UINT *puArgErr) = 0;
    
};