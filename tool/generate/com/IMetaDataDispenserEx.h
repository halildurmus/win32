#undef __cplusplus

#include <windows.h>
#include <ole2.h>
#include "inspectable.h"
#include "AsyncInfo.h"
#include "EventToken.h"
#include "windowscontracts.h"
#include "Windows.Foundation.h"
#include "Windows.System.h"
#include "RoMetadataApi.h"

// vtable_start 6
MIDL_INTERFACE("31BCFCE2-DAFB-11D2-9F81-00C04F79A0A3")
IMetaDataDispenserEx : public IMetaDataDispenser
{
public:
    virtual HRESULT STDMETHODCALLTYPE SetOption( 
        /* [in] */ REFGUID optionId,
        /* [in] */ const VARIANT *pValue) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetOption( 
        /* [in] */ REFGUID optionId,
        /* [out] */ VARIANT *pValue) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE OpenScopeOnITypeInfo( 
        /* [in] */ ITypeInfo *pITI,
        /* [in] */ DWORD dwOpenFlags,
        /* [in] */ REFIID riid,
        /* [iid_is][out] */ IUnknown **ppIUnk) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetCORSystemDirectory( 
        /* [annotation][size_is][string][out] */ 
        _Out_writes_to_opt_(cchBuffer, *pchBuffer)  LPWSTR szBuffer,
        /* [in] */ DWORD cchBuffer,
        /* [out] */ DWORD *pchBuffer) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE FindAssembly( 
        /* [unique][string][in] */ LPCWSTR szAppBase,
        /* [unique][string][in] */ LPCWSTR szPrivateBin,
        /* [unique][string][in] */ LPCWSTR szGlobalBin,
        /* [unique][string][in] */ LPCWSTR szAssemblyName,
        /* [length_is][size_is][string][out] */ LPWSTR szName,
        /* [in] */ ULONG cchName,
        /* [out] */ ULONG *pchName) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE FindAssemblyModule( 
        /* [unique][string][in] */ LPCWSTR szAppBase,
        /* [unique][string][in] */ LPCWSTR szPrivateBin,
        /* [unique][string][in] */ LPCWSTR szGlobalBin,
        /* [string][in] */ LPCWSTR szAssemblyName,
        /* [string][in] */ LPCWSTR szModuleName,
        /* [annotation][length_is][size_is][string][out] */ 
        _Out_writes_to_opt_(cchName, *pcName)  LPWSTR szName,
        /* [in] */ ULONG cchName,
        /* [out] */ ULONG *pcName) = 0;
    
};