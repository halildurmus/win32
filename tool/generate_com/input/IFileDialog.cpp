// vtable_start 4
MIDL_INTERFACE("42f85136-db7e-439c-85f1-e4075d135fc8")
IFileDialog : public IModalWindow
{
public:
    virtual HRESULT STDMETHODCALLTYPE SetFileTypes( 
        /* [in] */ UINT cFileTypes,
        /* [size_is][in] */ __RPC__in_ecount_full(cFileTypes) const COMDLG_FILTERSPEC *rgFilterSpec) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetFileTypeIndex( 
        /* [in] */ UINT iFileType) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetFileTypeIndex( 
        /* [out] */ __RPC__out UINT *piFileType) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Advise( 
        /* [in] */ __RPC__in_opt IFileDialogEvents *pfde,
        /* [out] */ __RPC__out DWORD *pdwCookie) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Unadvise( 
        /* [in] */ DWORD dwCookie) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetOptions( 
        /* [in] */ FILEOPENDIALOGOPTIONS fos) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetOptions( 
        /* [out] */ __RPC__out FILEOPENDIALOGOPTIONS *pfos) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetDefaultFolder( 
        /* [in] */ __RPC__in_opt IShellItem *psi) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetFolder( 
        /* [in] */ __RPC__in_opt IShellItem *psi) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetFolder( 
        /* [out] */ __RPC__deref_out_opt IShellItem **ppsi) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetCurrentSelection( 
        /* [out] */ __RPC__deref_out_opt IShellItem **ppsi) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetFileName( 
        /* [string][in] */ __RPC__in_string LPCWSTR pszName) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetFileName( 
        /* [string][out] */ __RPC__deref_out_opt_string LPWSTR *pszName) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetTitle( 
        /* [string][in] */ __RPC__in_string LPCWSTR pszTitle) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetOkButtonLabel( 
        /* [string][in] */ __RPC__in_string LPCWSTR pszText) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetFileNameLabel( 
        /* [string][in] */ __RPC__in_string LPCWSTR pszLabel) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetResult( 
        /* [out] */ __RPC__deref_out_opt IShellItem **ppsi) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE AddPlace( 
        /* [in] */ __RPC__in_opt IShellItem *psi,
        /* [in] */ FDAP fdap) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetDefaultExtension( 
        /* [string][in] */ __RPC__in_string LPCWSTR pszDefaultExtension) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE Close( 
        /* [in] */ HRESULT hr) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetClientGuid( 
        /* [in] */ __RPC__in REFGUID guid) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE ClearClientData( void) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetFilter( 
        /* [in] */ __RPC__in_opt IShellItemFilter *pFilter) = 0;
    
};
