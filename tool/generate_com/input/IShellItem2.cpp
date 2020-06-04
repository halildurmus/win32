#include "windows.h"
#include "Shobjidl.h"

// vtable_start 8

MIDL_INTERFACE("7e9fb0d3-919f-4307-ab2e-9b1860310c93")
IShellItem2 : public IShellItem
{
public:
    virtual HRESULT STDMETHODCALLTYPE GetPropertyStore( 
        /* [in] */ GETPROPERTYSTOREFLAGS flags,
        /* [in] */ __RPC__in REFIID riid,
        /* [iid_is][out] */ __RPC__deref_out_opt void **ppv) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetPropertyStoreWithCreateObject( 
        /* [in] */ GETPROPERTYSTOREFLAGS flags,
        /* [in] */ __RPC__in_opt IUnknown *punkCreateObject,
        /* [in] */ __RPC__in REFIID riid,
        /* [iid_is][out] */ __RPC__deref_out_opt void **ppv) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetPropertyStoreForKeys( 
        /* [size_is][in] */ __RPC__in_ecount_full(cKeys) const PROPERTYKEY *rgKeys,
        /* [in] */ UINT cKeys,
        /* [in] */ GETPROPERTYSTOREFLAGS flags,
        /* [in] */ __RPC__in REFIID riid,
        /* [iid_is][out] */ __RPC__deref_out_opt void **ppv) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetPropertyDescriptionList( 
        /* [in] */ __RPC__in REFPROPERTYKEY keyType,
        /* [in] */ __RPC__in REFIID riid,
        /* [iid_is][out] */ __RPC__deref_out_opt void **ppv) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Update( 
        /* [unique][in] */ __RPC__in_opt IBindCtx *pbc) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetProperty( 
        /* [in] */ __RPC__in REFPROPERTYKEY key,
        /* [out] */ __RPC__out PROPVARIANT *ppropvar) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetCLSID( 
        /* [in] */ __RPC__in REFPROPERTYKEY key,
        /* [out] */ __RPC__out CLSID *pclsid) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetFileTime( 
        /* [in] */ __RPC__in REFPROPERTYKEY key,
        /* [out] */ __RPC__out FILETIME *pft) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetInt32( 
        /* [in] */ __RPC__in REFPROPERTYKEY key,
        /* [out] */ __RPC__out int *pi) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetString( 
        /* [in] */ __RPC__in REFPROPERTYKEY key,
        /* [string][out] */ __RPC__deref_out_opt_string LPWSTR *ppsz) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetUInt32( 
        /* [in] */ __RPC__in REFPROPERTYKEY key,
        /* [out] */ __RPC__out ULONG *pui) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetUInt64( 
        /* [in] */ __RPC__in REFPROPERTYKEY key,
        /* [out] */ __RPC__out ULONGLONG *pull) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetBool( 
        /* [in] */ __RPC__in REFPROPERTYKEY key,
        /* [out] */ __RPC__out BOOL *pf) = 0;
    
};