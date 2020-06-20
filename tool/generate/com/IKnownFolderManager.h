#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
// class KnownFolderManager 4df0c730-df9d-4ae3-9153-aa6b82e9795a
MIDL_INTERFACE("8BE2D872-86AA-4d47-B776-32CCA40C7018")
IKnownFolderManager : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE FolderIdFromCsidl( 
        /* [in] */ int nCsidl,
        /* [out] */ __RPC__out KNOWNFOLDERID *pfid) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE FolderIdToCsidl( 
        /* [in] */ __RPC__in REFKNOWNFOLDERID rfid,
        /* [out] */ __RPC__out int *pnCsidl) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetFolderIds( 
        /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*pCount) KNOWNFOLDERID **ppKFId,
        /* [out][in] */ __RPC__inout UINT *pCount) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetFolder( 
        /* [in] */ __RPC__in REFKNOWNFOLDERID rfid,
        /* [out] */ __RPC__deref_out_opt IKnownFolder **ppkf) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetFolderByName( 
        /* [string][in] */ __RPC__in_string LPCWSTR pszCanonicalName,
        /* [out] */ __RPC__deref_out_opt IKnownFolder **ppkf) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE RegisterFolder( 
        /* [in] */ __RPC__in REFKNOWNFOLDERID rfid,
        /* [in] */ __RPC__in const KNOWNFOLDER_DEFINITION *pKFD) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE UnregisterFolder( 
        /* [in] */ __RPC__in REFKNOWNFOLDERID rfid) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE FindFolderFromPath( 
        /* [string][in] */ __RPC__in_string LPCWSTR pszPath,
        /* [in] */ FFFP_MODE mode,
        /* [out] */ __RPC__deref_out_opt IKnownFolder **ppkf) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE FindFolderFromIDList( 
        /* [in] */ __RPC__in PCIDLIST_ABSOLUTE pidl,
        /* [out] */ __RPC__deref_out_opt IKnownFolder **ppkf) = 0;
    
    virtual /* [local] */ HRESULT STDMETHODCALLTYPE Redirect( 
        /* [annotation][in] */ 
        _In_  REFKNOWNFOLDERID rfid,
        /* [annotation][unique][in] */ 
        _In_opt_  HWND hwnd,
        /* [annotation][in] */ 
        _In_  KF_REDIRECT_FLAGS flags,
        /* [annotation][string][unique][in] */ 
        _In_opt_  LPCWSTR pszTargetPath,
        /* [annotation][in] */ 
        _In_  UINT cFolders,
        /* [annotation][unique][size_is][in] */ 
        _In_reads_opt_(cFolders)  const KNOWNFOLDERID *pExclusion,
        /* [annotation][string][out] */ 
        _Outptr_opt_result_maybenull_  LPWSTR *ppszError) = 0;
    
};
