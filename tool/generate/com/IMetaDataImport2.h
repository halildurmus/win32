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

// vtable_start 65
MIDL_INTERFACE("FCE5EFA0-8BBA-4f8E-A036-8F2022B08466")
IMetaDataImport2 : public IMetaDataImport
{
public:
    virtual HRESULT STDMETHODCALLTYPE EnumGenericParams( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdToken tk,
        /* [length_is][size_is][out] */ mdGenericParam rGenericParams[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcGenericParams) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetGenericParamProps( 
        /* [in] */ mdGenericParam gp,
        /* [out] */ ULONG *pulParamSeq,
        /* [out] */ DWORD *pdwParamFlags,
        /* [out] */ mdToken *ptOwner,
        /* [out] */ DWORD *reserved,
        /* [annotation][length_is][size_is][string][out] */ 
        _Out_writes_to_opt_(cchName, *pchName)  LPWSTR wzname,
        /* [in] */ ULONG cchName,
        /* [out] */ ULONG *pchName) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetMethodSpecProps( 
        /* [in] */ mdMethodSpec mi,
        /* [out] */ mdToken *tkParent,
        /* [size_is][size_is][out] */ PCCOR_SIGNATURE *ppvSigBlob,
        /* [out] */ ULONG *pcbSigBlob) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumGenericParamConstraints( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdGenericParam tk,
        /* [length_is][size_is][out] */ mdGenericParamConstraint rGenericParamConstraints[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcGenericParamConstraints) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetGenericParamConstraintProps( 
        /* [in] */ mdGenericParamConstraint gpc,
        /* [out] */ mdGenericParam *ptGenericParam,
        /* [out] */ mdToken *ptkConstraintType) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetPEKind( 
        /* [out] */ DWORD *pdwPEKind,
        /* [out] */ DWORD *pdwMAchine) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetVersionString( 
        /* [annotation][length_is][size_is][string][out] */ 
        _Out_writes_to_opt_(cchBufSize, pccBufSize)  LPWSTR pwzBuf,
        /* [in] */ DWORD ccBufSize,
        /* [out] */ DWORD *pccBufSize) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumMethodSpecs( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdToken tk,
        /* [length_is][size_is][out] */ mdMethodSpec rMethodSpecs[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcMethodSpecs) = 0;
    
};