#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
MIDL_INTERFACE("b63ea76d-1f85-456f-a19c-48159efa858b")
IShellItemArray : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE BindToHandler( 
        /* [unique][in] */ __RPC__in_opt IBindCtx *pbc,
        /* [in] */ __RPC__in REFGUID bhid,
        /* [in] */ __RPC__in REFIID riid,
        /* [iid_is][out] */ __RPC__deref_out_opt void **ppvOut) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetPropertyStore( 
        /* [in] */ GETPROPERTYSTOREFLAGS flags,
        /* [in] */ __RPC__in REFIID riid,
        /* [iid_is][out] */ __RPC__deref_out_opt void **ppv) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetPropertyDescriptionList( 
        /* [in] */ __RPC__in REFPROPERTYKEY keyType,
        /* [in] */ __RPC__in REFIID riid,
        /* [iid_is][out] */ __RPC__deref_out_opt void **ppv) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetAttributes( 
        /* [in] */ SIATTRIBFLAGS AttribFlags,
        /* [in] */ SFGAOF sfgaoMask,
        /* [out] */ __RPC__out SFGAOF *psfgaoAttribs) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetCount( 
        /* [out] */ __RPC__out DWORD *pdwNumItems) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetItemAt( 
        /* [in] */ DWORD dwIndex,
        /* [out] */ __RPC__deref_out_opt IShellItem **ppsi) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumItems( 
        /* [out] */ __RPC__deref_out_opt IEnumShellItems **ppenumShellItems) = 0;
    
};
