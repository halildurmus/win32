#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
MIDL_INTERFACE("e6fdd21a-163f-4975-9c8c-a69f1ba37034")
IFileDialogCustomize : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE EnableOpenDropDown( 
        /* [in] */ DWORD dwIDCtl) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE AddMenu( 
        /* [in] */ DWORD dwIDCtl,
        /* [string][in] */ __RPC__in_string LPCWSTR pszLabel) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE AddPushButton( 
        /* [in] */ DWORD dwIDCtl,
        /* [string][in] */ __RPC__in_string LPCWSTR pszLabel) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE AddComboBox( 
        /* [in] */ DWORD dwIDCtl) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE AddRadioButtonList( 
        /* [in] */ DWORD dwIDCtl) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE AddCheckButton( 
        /* [in] */ DWORD dwIDCtl,
        /* [string][in] */ __RPC__in_string LPCWSTR pszLabel,
        /* [in] */ BOOL bChecked) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE AddEditBox( 
        /* [in] */ DWORD dwIDCtl,
        /* [string][in] */ __RPC__in_string LPCWSTR pszText) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE AddSeparator( 
        /* [in] */ DWORD dwIDCtl) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE AddText( 
        /* [in] */ DWORD dwIDCtl,
        /* [string][in] */ __RPC__in_string LPCWSTR pszText) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetControlLabel( 
        /* [in] */ DWORD dwIDCtl,
        /* [string][in] */ __RPC__in_string LPCWSTR pszLabel) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetControlState( 
        /* [in] */ DWORD dwIDCtl,
        /* [out] */ __RPC__out CDCONTROLSTATEF *pdwState) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetControlState( 
        /* [in] */ DWORD dwIDCtl,
        /* [in] */ CDCONTROLSTATEF dwState) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetEditBoxText( 
        /* [in] */ DWORD dwIDCtl,
        /* [string][out] */ __RPC__deref_out_opt_string WCHAR **ppszText) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetEditBoxText( 
        /* [in] */ DWORD dwIDCtl,
        /* [string][in] */ __RPC__in_string LPCWSTR pszText) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetCheckButtonState( 
        /* [in] */ DWORD dwIDCtl,
        /* [out] */ __RPC__out BOOL *pbChecked) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetCheckButtonState( 
        /* [in] */ DWORD dwIDCtl,
        /* [in] */ BOOL bChecked) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE AddControlItem( 
        /* [in] */ DWORD dwIDCtl,
        /* [in] */ DWORD dwIDItem,
        /* [in] */ __RPC__in LPCWSTR pszLabel) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE RemoveControlItem( 
        /* [in] */ DWORD dwIDCtl,
        /* [in] */ DWORD dwIDItem) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE RemoveAllControlItems( 
        /* [in] */ DWORD dwIDCtl) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetControlItemState( 
        /* [in] */ DWORD dwIDCtl,
        /* [in] */ DWORD dwIDItem,
        /* [out] */ __RPC__out CDCONTROLSTATEF *pdwState) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetControlItemState( 
        /* [in] */ DWORD dwIDCtl,
        /* [in] */ DWORD dwIDItem,
        /* [in] */ CDCONTROLSTATEF dwState) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetSelectedControlItem( 
        /* [in] */ DWORD dwIDCtl,
        /* [out] */ __RPC__out DWORD *pdwIDItem) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetSelectedControlItem( 
        /* [in] */ DWORD dwIDCtl,
        /* [in] */ DWORD dwIDItem) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE StartVisualGroup( 
        /* [in] */ DWORD dwIDCtl,
        /* [string][in] */ __RPC__in_string LPCWSTR pszLabel) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE EndVisualGroup( void) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE MakeProminent( 
        /* [in] */ DWORD dwIDCtl) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE SetControlItemText( 
        /* [in] */ DWORD dwIDCtl,
        /* [in] */ DWORD dwIDItem,
        /* [string][in] */ __RPC__in_string LPCWSTR pszLabel) = 0;
    
};
