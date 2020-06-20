#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
MIDL_INTERFACE("3AA7AF7E-9B36-420c-A8E3-F77D4674A488")
IKnownFolder : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE GetId( 
        /* [out] */ __RPC__out KNOWNFOLDERID *pkfid) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetCategory( 
        /* [out] */ __RPC__out KF_CATEGORY *pCategory) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetShellItem( 
        /* [in] */ DWORD dwFlags,
        /* [in] */ __RPC__in REFIID riid,
        /* [iid_is][out] */ __RPC__deref_out_opt void **ppv) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetPath( 
        /* [in] */ DWORD dwFlags,
        /* [string][out] */ __RPC__deref_out_opt_string LPWSTR *ppszPath) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetPath( 
        /* [in] */ DWORD dwFlags,
        /* [string][in] */ __RPC__in_string LPCWSTR pszPath) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetIDList( 
        /* [in] */ DWORD dwFlags,
        /* [out] */ __RPC__deref_out_opt PIDLIST_ABSOLUTE *ppidl) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetFolderType( 
        /* [out] */ __RPC__out FOLDERTYPEID *pftid) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetRedirectionCapabilities( 
        /* [out] */ __RPC__out KF_REDIRECTION_CAPABILITIES *pCapabilities) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetFolderDefinition( 
        /* [out] */ __RPC__out KNOWNFOLDER_DEFINITION *pKFD) = 0;
    
};