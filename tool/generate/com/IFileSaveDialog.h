#include "windows.h"
#include "Shobjidl.h"

// vtable_start 27
// class FileSaveDialog C0B4E2F3-BA21-4773-8DBA-335EC946EB8B
MIDL_INTERFACE("84bccd23-5fde-4cdb-aea4-af64b83d78ab")
IFileSaveDialog : public IFileDialog
{
public:
    virtual HRESULT STDMETHODCALLTYPE SetSaveAsItem( 
        /* [in] */ __RPC__in_opt IShellItem *psi) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetProperties( 
        /* [in] */ __RPC__in_opt IPropertyStore *pStore) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetCollectedProperties( 
        /* [in] */ __RPC__in_opt IPropertyDescriptionList *pList,
        /* [in] */ BOOL fAppendDefault) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetProperties( 
        /* [out] */ __RPC__deref_out_opt IPropertyStore **ppStore) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE ApplyProperties( 
        /* [in] */ __RPC__in_opt IShellItem *psi,
        /* [in] */ __RPC__in_opt IPropertyStore *pStore,
        /* [unique][in] */ __RPC__in_opt HWND hwnd,
        /* [unique][in] */ __RPC__in_opt IFileOperationProgressSink *pSink) = 0;
    
};