#include "windows.h"
#include "Shobjidl.h"
#include "Wbemidl.h"

// vtable_start 3
MIDL_INTERFACE("dc12a681-737f-11cf-884d-00aa004b2e24")
IWbemClassObject : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE GetQualifierSet( 
        /* [out] */ IWbemQualifierSet **ppQualSet) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Get( 
        /* [string][in] */ LPCWSTR wszName,
        /* [in] */ long lFlags,
        /* [unique][in][out] */ VARIANT *pVal,
        /* [unique][in][out] */ CIMTYPE *pType,
        /* [unique][in][out] */ long *plFlavor) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Put( 
        /* [string][in] */ LPCWSTR wszName,
        /* [in] */ long lFlags,
        /* [in] */ VARIANT *pVal,
        /* [in] */ CIMTYPE Type) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Delete( 
        /* [string][in] */ LPCWSTR wszName) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetNames( 
        /* [string][in] */ LPCWSTR wszQualifierName,
        /* [in] */ long lFlags,
        /* [in] */ VARIANT *pQualifierVal,
        /* [out] */ SAFEARRAY * *pNames) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE BeginEnumeration( 
        /* [in] */ long lEnumFlags) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Next( 
        /* [in] */ long lFlags,
        /* [unique][in][out] */ BSTR *strName,
        /* [unique][in][out] */ VARIANT *pVal,
        /* [unique][in][out] */ CIMTYPE *pType,
        /* [unique][in][out] */ long *plFlavor) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EndEnumeration( void) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetPropertyQualifierSet( 
        /* [string][in] */ LPCWSTR wszProperty,
        /* [out] */ IWbemQualifierSet **ppQualSet) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Clone( 
        /* [out] */ IWbemClassObject **ppCopy) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetObjectText( 
        /* [in] */ long lFlags,
        /* [out] */ BSTR *pstrObjectText) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SpawnDerivedClass( 
        /* [in] */ long lFlags,
        /* [out] */ IWbemClassObject **ppNewClass) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SpawnInstance( 
        /* [in] */ long lFlags,
        /* [out] */ IWbemClassObject **ppNewInstance) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE CompareTo( 
        /* [in] */ long lFlags,
        /* [in] */ IWbemClassObject *pCompareTo) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetPropertyOrigin( 
        /* [string][in] */ LPCWSTR wszName,
        /* [out] */ BSTR *pstrClassName) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE InheritsFrom( 
        /* [in] */ LPCWSTR strAncestor) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetMethod( 
        /* [string][in] */ LPCWSTR wszName,
        /* [in] */ long lFlags,
        /* [out] */ IWbemClassObject **ppInSignature,
        /* [out] */ IWbemClassObject **ppOutSignature) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE PutMethod( 
        /* [string][in] */ LPCWSTR wszName,
        /* [in] */ long lFlags,
        /* [in] */ IWbemClassObject *pInSignature,
        /* [in] */ IWbemClassObject *pOutSignature) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE DeleteMethod( 
        /* [string][in] */ LPCWSTR wszName) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE BeginMethodEnumeration( 
        /* [in] */ long lEnumFlags) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE NextMethod( 
        /* [in] */ long lFlags,
        /* [unique][in][out] */ BSTR *pstrName,
        /* [unique][in][out] */ IWbemClassObject **ppInSignature,
        /* [unique][in][out] */ IWbemClassObject **ppOutSignature) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EndMethodEnumeration( void) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetMethodQualifierSet( 
        /* [string][in] */ LPCWSTR wszMethod,
        /* [out] */ IWbemQualifierSet **ppQualSet) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetMethodOrigin( 
        /* [string][in] */ LPCWSTR wszMethodName,
        /* [out] */ BSTR *pstrClassName) = 0;
    
};