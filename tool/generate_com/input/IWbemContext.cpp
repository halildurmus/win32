#include "windows.h"
#include "Shobjidl.h"
#include "Wbemidl.h"

// vtable_start 3
MIDL_INTERFACE("44aca674-e8fc-11d0-a07c-00c04fb68820")
IWbemContext : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE Clone( 
        /* [out] */ IWbemContext **ppNewCopy) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetNames( 
        /* [in] */ long lFlags,
        /* [out] */ SAFEARRAY * *pNames) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE BeginEnumeration( 
        /* [in] */ long lFlags) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Next( 
        /* [in] */ long lFlags,
        /* [out] */ BSTR *pstrName,
        /* [out] */ VARIANT *pValue) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EndEnumeration( void) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetValue( 
        /* [string][in] */ LPCWSTR wszName,
        /* [in] */ long lFlags,
        /* [in] */ VARIANT *pValue) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetValue( 
        /* [string][in] */ LPCWSTR wszName,
        /* [in] */ long lFlags,
        /* [out] */ VARIANT *pValue) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE DeleteValue( 
        /* [string][in] */ LPCWSTR wszName,
        /* [in] */ long lFlags) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE DeleteAll( void) = 0;
    
};