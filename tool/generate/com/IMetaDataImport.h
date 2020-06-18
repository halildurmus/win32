#undef __cplusplus

#include <windows.h>
#include <ole2.h>
#include "unknwn.h"
#include "oaidl.h"
#include "inspectable.h"
#include "AsyncInfo.h"
#include "EventToken.h"
#include "RoMetadataApi.h"
#include "windowscontracts.h"
#include "Windows.Foundation.h"
#include "Windows.System.h"

// vtable_start 3
MIDL_INTERFACE("7DAC8207-D3AE-4C75-9B67-92801A497D44")
IMetaDataImport : public IUnknown
{
public:
    virtual void STDMETHODCALLTYPE CloseEnum( 
        /* [in] */ HCORENUM hEnum) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE CountEnum( 
        /* [in] */ HCORENUM hEnum,
        /* [retval][out] */ ULONG *pulCount) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE ResetEnum( 
        /* [in] */ HCORENUM hEnum,
        /* [in] */ ULONG ulPos) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumTypeDefs( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [length_is][size_is][out] */ mdTypeDef rgTypeDefs[  ],
        /* [in] */ ULONG cMax,
        /* [retval][out] */ ULONG *pcTypeDefs) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumInterfaceImpls( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdTypeDef td,
        /* [length_is][size_is][out] */ mdInterfaceImpl rImpls[  ],
        /* [in] */ ULONG cMax,
        /* [retval][out] */ ULONG *pcImpls) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumTypeRefs( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [length_is][size_is][out] */ mdTypeRef rgTypeRefs[  ],
        /* [in] */ ULONG cMax,
        /* [retval][out] */ ULONG *pcTypeRefs) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE FindTypeDefByName( 
        /* [string][in] */ LPCWSTR szTypeDef,
        /* [in] */ mdToken tkEnclosingClass,
        /* [retval][out] */ mdTypeDef *ptkTypeDef) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetScopeProps( 
        /* [annotation][length_is][size_is][string][out] */ 
        _Out_writes_to_opt_(cchName, *pchName)  LPWSTR szName,
        /* [in] */ ULONG cchName,
        /* [out] */ ULONG *pchName,
        /* [unique][out] */ GUID *pmvid) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetModuleFromScope( 
        /* [out] */ mdModule *ptkModule) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetTypeDefProps( 
        /* [in] */ mdTypeDef tkTypeDef,
        /* [annotation][length_is][size_is][string][out] */ 
        _Out_writes_to_opt_(cchTypeDef, pchTypeDef)  LPWSTR szTypeDef,
        /* [in] */ ULONG cchTypeDef,
        /* [out] */ ULONG *pchTypeDef,
        /* [out] */ DWORD *pdwTypeDefFlags,
        /* [out] */ mdToken *ptkExtends) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetInterfaceImplProps( 
        /* [in] */ mdInterfaceImpl tkInterfaceImpl,
        /* [out] */ mdTypeDef *ptkClass,
        /* [out] */ mdToken *ptkIface) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetTypeRefProps( 
        /* [in] */ mdTypeRef tkTypeRef,
        /* [out] */ mdToken *ptkResolutionScope,
        /* [annotation][length_is][size_is][string][out] */ 
        _Out_writes_to_opt_(cchName, *pchName)  LPWSTR szName,
        /* [in] */ ULONG cchName,
        /* [out] */ ULONG *pchName) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE ResolveTypeRef( 
        /* [in] */ mdTypeRef tkTypeRef,
        /* [in] */ REFIID riid,
        /* [iid_is][out] */ IUnknown **ppIScope,
        /* [retval][out] */ mdTypeDef *ptkTypeDef) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumMembers( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdTypeDef tkTypeDef,
        /* [length_is][size_is][out] */ mdToken rgMembers[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcTokens) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumMembersWithName( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdTypeDef tkTypeDef,
        /* [string][in] */ LPCWSTR szName,
        /* [length_is][size_is][out] */ mdToken rgMembers[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcTokens) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumMethods( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdTypeDef tkTypeDef,
        /* [length_is][size_is][out] */ mdMethodDef rgMethods[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcTokens) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumMethodsWithName( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdTypeDef tkTypeDef,
        /* [string][in] */ LPCWSTR szName,
        /* [length_is][size_is][out] */ mdMethodDef rgMethods[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcTokens) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumFields( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdTypeDef tkTypeDef,
        /* [length_is][size_is][out] */ mdFieldDef rgFields[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcTokens) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumFieldsWithName( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdTypeDef tkTypeDef,
        /* [string][in] */ LPCWSTR szName,
        /* [length_is][size_is][out] */ mdFieldDef rFields[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcTokens) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumParams( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdMethodDef tkMethodDef,
        /* [length_is][size_is][out] */ mdParamDef rParams[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcTokens) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumMemberRefs( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdToken tkParent,
        /* [length_is][size_is][out] */ mdMemberRef rgMemberRefs[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcTokens) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumMethodImpls( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdTypeDef tkTypeDef,
        /* [length_is][size_is][out] */ mdToken rMethodBody[  ],
        /* [length_is][size_is][out] */ mdToken rMethodDecl[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcTokens) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumPermissionSets( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdToken tk,
        /* [in] */ DWORD dwActions,
        /* [length_is][size_is][out] */ mdPermission rPermission[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcTokens) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE FindMember( 
        /* [in] */ mdTypeDef tkTypeDef,
        /* [string][in] */ LPCWSTR szName,
        /* [size_is][in] */ PCCOR_SIGNATURE pvSigBlob,
        /* [in] */ ULONG cbSigBlob,
        /* [out] */ mdToken *pmb) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE FindMethod( 
        /* [in] */ mdTypeDef tkTypeDef,
        /* [string][in] */ LPCWSTR szName,
        /* [size_is][in] */ PCCOR_SIGNATURE pvSigBlob,
        /* [in] */ ULONG cbSigBlob,
        /* [out] */ mdMethodDef *ptkMethodDef) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE FindField( 
        /* [in] */ mdTypeDef tkTypeDef,
        /* [string][in] */ LPCWSTR szName,
        /* [size_is][in] */ PCCOR_SIGNATURE pvSigBlob,
        /* [in] */ ULONG cbSigBlob,
        /* [out] */ mdFieldDef *ptkFieldDef) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE FindMemberRef( 
        /* [in] */ mdTypeRef tkTypeRef,
        /* [string][in] */ LPCWSTR szName,
        /* [size_is][in] */ PCCOR_SIGNATURE pvSigBlob,
        /* [in] */ ULONG cbSigBlob,
        /* [out] */ mdMemberRef *pMemberRef) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetMethodProps( 
        /* [in] */ mdMethodDef tkMethodDef,
        /* [out] */ mdTypeDef *ptkClass,
        /* [annotation][length_is][size_is][string][out] */ 
        _Out_writes_to_opt_(cchMethod, *pchMethod)  LPWSTR szMethod,
        /* [in] */ ULONG cchMethod,
        /* [out] */ ULONG *pchMethod,
        /* [out] */ DWORD *pdwAttr,
        /* [size_is][size_is][out] */ PCCOR_SIGNATURE *ppvSigBlob,
        /* [out] */ ULONG *pcbSigBlob,
        /* [out] */ ULONG *pulCodeRVA,
        /* [out] */ DWORD *pdwImplFlags) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetMemberRefProps( 
        /* [in] */ mdMemberRef tkMemberRef,
        /* [out] */ mdToken *ptk,
        /* [annotation][length_is][size_is][string][out] */ 
        _Out_writes_to_opt_(cchMember, *pchMember)  LPWSTR szMember,
        /* [in] */ ULONG cchMember,
        /* [out] */ ULONG *pchMember,
        /* [size_is][size_is][out] */ PCCOR_SIGNATURE *ppvSigBlob,
        /* [out] */ ULONG *pcbSigBlob) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumProperties( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdTypeDef tkTypDef,
        /* [length_is][size_is][out] */ mdProperty rgProperties[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcProperties) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumEvents( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdTypeDef tkTypDef,
        /* [length_is][size_is][out] */ mdEvent rgEvents[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcEvents) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetEventProps( 
        /* [in] */ mdEvent tkEvent,
        /* [out] */ mdTypeDef *ptkClass,
        /* [length_is][size_is][string][out] */ LPWSTR szEvent,
        /* [in] */ ULONG cchEvent,
        /* [out] */ ULONG *pchEvent,
        /* [out] */ DWORD *pdwEventFlags,
        /* [out] */ mdToken *ptkEventType,
        /* [out] */ mdMethodDef *ptkAddOn,
        /* [out] */ mdMethodDef *ptkRemoveOn,
        /* [out] */ mdMethodDef *tkkFire,
        /* [length_is][size_is][out] */ mdMethodDef rgOtherMethod[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcOtherMethod) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumMethodSemantics( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdMethodDef tkMethodDef,
        /* [length_is][size_is][out] */ mdToken rgEventProp[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcEventProp) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetMethodSemantics( 
        /* [in] */ mdMethodDef tkMethodDef,
        /* [in] */ mdToken tkEventProp,
        /* [out] */ DWORD *pdwSemanticsFlags) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetClassLayout( 
        /* [in] */ mdTypeDef tkTypeDef,
        /* [out] */ DWORD *pdwPackSize,
        /* [length_is][size_is][out] */ COR_FIELD_OFFSET rgFieldOffset[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcFieldOffset,
        /* [out] */ ULONG *pulClassSize) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetFieldMarshal( 
        /* [in] */ mdToken tk,
        /* [size_is][size_is][out] */ PCCOR_SIGNATURE *ppvNativeType,
        /* [out] */ ULONG *pcbNativeType) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetRVA( 
        /* [in] */ mdToken tk,
        /* [out] */ ULONG *pulCodeRVA,
        /* [out] */ DWORD *pdwImplFlags) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetPermissionSetProps( 
        /* [in] */ mdPermission tk,
        /* [out] */ DWORD *pdwAction,
        /* [size_is][size_is][out] */ const BYTE **ppvPermission,
        /* [out] */ ULONG *pcbPermission) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetSigFromToken( 
        /* [in] */ mdSignature tkSignature,
        /* [size_is][size_is][out] */ PCCOR_SIGNATURE *ppvSig,
        /* [out] */ ULONG *pcbSig) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetModuleRefProps( 
        /* [in] */ mdModuleRef tkModuleRef,
        /* [annotation][length_is][size_is][string][out] */ 
        _Out_writes_to_opt_(cchName, *pchName)  LPWSTR szName,
        /* [in] */ ULONG cchName,
        /* [out] */ ULONG *pchName) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumModuleRefs( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [length_is][size_is][out] */ mdModuleRef rgModuleRefs[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcModuleRefs) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetTypeSpecFromToken( 
        /* [in] */ mdTypeSpec tkTypeSpec,
        /* [size_is][size_is][out] */ PCCOR_SIGNATURE *ppvSig,
        /* [out] */ ULONG *pcbSig) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetNameFromToken( 
        /* [in] */ mdToken tk,
        /* [string][out] */ MDUTF8CSTR *pszUtf8NamePtr) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumUnresolvedMethods( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [length_is][size_is][out] */ mdToken rgMethods[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcTokens) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetUserString( 
        /* [in] */ mdString tkString,
        /* [annotation][length_is][size_is][string][out] */ 
        _Out_writes_to_opt_(cchString, *pchString)  LPWSTR szString,
        /* [in] */ ULONG cchString,
        /* [out] */ ULONG *pchString) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetPinvokeMap( 
        /* [in] */ mdToken tk,
        /* [out] */ DWORD *pdwMappingFlags,
        /* [annotation][length_is][size_is][string][out] */ 
        _Out_writes_to_opt_(cchImportName, *pchImportName)  LPWSTR szImportName,
        /* [in] */ ULONG cchImportName,
        /* [out] */ ULONG *pchImportName,
        /* [out] */ mdModuleRef *ptkImportDLL) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumSignatures( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [length_is][size_is][out] */ mdSignature rgSignatures[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcSignatures) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumTypeSpecs( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [length_is][size_is][out] */ mdTypeSpec rgTypeSpecs[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcTypeSpecs) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumUserStrings( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [length_is][size_is][out] */ mdString rgStrings[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcStrings) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetParamForMethodIndex( 
        /* [in] */ mdMethodDef tkMethodDef,
        /* [in] */ ULONG ulParamSeq,
        /* [out] */ mdParamDef *ptkParamDef) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EnumCustomAttributes( 
        /* [out][in] */ HCORENUM *phEnum,
        /* [in] */ mdToken tk,
        /* [in] */ mdToken tkType,
        /* [length_is][size_is][out] */ mdCustomAttribute rgCustomAttributes[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcCustomAttributes) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetCustomAttributeProps( 
        /* [in] */ mdCustomAttribute cv,
        /* [unique][out] */ mdToken *ptkObj,
        /* [unique][out] */ mdToken *ptkType,
        /* [unique][size_is][size_is][out] */ const BYTE **ppBlob,
        /* [unique][out] */ ULONG *pcbBlob) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE FindTypeRef( 
        /* [in] */ mdToken tkResolutionScope,
        /* [string][in] */ LPCWSTR szName,
        /* [out] */ mdTypeRef *tkTypeRef) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetMemberProps( 
        /* [in] */ mdToken tkMember,
        /* [out] */ mdTypeDef *ptkTypeDef,
        /* [annotation][length_is][size_is][string][out] */ 
        _Out_writes_to_opt_(cchMember, *pchMember)  LPWSTR szMember,
        /* [in] */ ULONG cchMember,
        /* [out] */ ULONG *pchMember,
        /* [out] */ DWORD *pdwAttr,
        /* [size_is][size_is][out] */ PCCOR_SIGNATURE *ppvSigBlob,
        /* [out] */ ULONG *pcbSigBlob,
        /* [out] */ ULONG *pulCodeRVA,
        /* [out] */ DWORD *pdwImplFlags,
        /* [out] */ DWORD *pdwCPlusTypeFlag,
        /* [size_is][size_is][out] */ UVCP_CONSTANT *ppValue,
        /* [out] */ ULONG *pcchValue) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetFieldProps( 
        /* [in] */ mdFieldDef tkFieldDef,
        /* [out] */ mdTypeDef *ptkTypeDef,
        /* [annotation][length_is][size_is][string][out] */ 
        _Out_writes_to_opt_(cchField, *pchField)  LPWSTR szField,
        /* [in] */ ULONG cchField,
        /* [out] */ ULONG *pchField,
        /* [out] */ DWORD *pdwAttr,
        /* [size_is][size_is][out] */ PCCOR_SIGNATURE *ppvSigBlob,
        /* [out] */ ULONG *pcbSigBlob,
        /* [out] */ DWORD *pdwCPlusTypeFlag,
        /* [size_is][size_is][out] */ UVCP_CONSTANT *ppValue,
        /* [out] */ ULONG *pcchValue) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetPropertyProps( 
        /* [in] */ mdProperty prop,
        /* [out] */ mdTypeDef *ptkTypeDef,
        /* [length_is][size_is][string][out] */ LPWSTR szProperty,
        /* [in] */ ULONG cchProperty,
        /* [out] */ ULONG *pchProperty,
        /* [out] */ DWORD *pdwPropFlags,
        /* [size_is][size_is][out] */ PCCOR_SIGNATURE *ppvSigBlob,
        /* [out] */ ULONG *pcbSigBlob,
        /* [out] */ DWORD *pdwCPlusTypeFlag,
        /* [size_is][size_is][out] */ UVCP_CONSTANT *ppDefaultValue,
        /* [out] */ ULONG *pcchDefaultValue,
        /* [out] */ mdMethodDef *ptkSetter,
        /* [out] */ mdMethodDef *ptkGetter,
        /* [length_is][size_is][out] */ mdMethodDef rgOtherMethod[  ],
        /* [in] */ ULONG cMax,
        /* [out] */ ULONG *pcOtherMethod) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetParamProps( 
        /* [in] */ mdParamDef tkParamDef,
        /* [out] */ mdMethodDef *ptkMethodDef,
        /* [out] */ ULONG *pulSequence,
        /* [annotation][length_is][size_is][string][out] */ 
        _Out_writes_to_opt_(cchName, *pchName)  LPWSTR szName,
        /* [in] */ ULONG cchName,
        /* [out] */ ULONG *pchName,
        /* [out] */ DWORD *pdwAttr,
        /* [out] */ DWORD *pdwCPlusTypeFlag,
        /* [size_is][size_is][out] */ UVCP_CONSTANT *ppValue,
        /* [out] */ ULONG *pcchValue) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetCustomAttributeByName( 
        /* [in] */ mdToken tkObj,
        /* [string][in] */ LPCWSTR szName,
        /* [size_is][size_is][out] */ const BYTE **ppData,
        /* [out] */ ULONG *pcbData) = 0;
    
    virtual BOOL STDMETHODCALLTYPE IsValidToken( 
        /* [in] */ mdToken tk) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetNestedClassProps( 
        /* [in] */ mdTypeDef tdNestedClass,
        /* [out] */ mdTypeDef *ptdEnclosingClass) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetNativeCallConvFromSig( 
        /* [size_is][in] */ const BYTE *pvSig,
        /* [in] */ ULONG cbSig,
        /* [out] */ ULONG *pCallConv) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE IsGlobal( 
        /* [in] */ mdToken tk,
        /* [out] */ int *pbIsGlobal) = 0;
    
};