#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
MIDL_INTERFACE("2659B475-EEB8-48b7-8F07-B378810F48CF")
IShellItemFilter : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE IncludeItem( 
        /* [in] */ __RPC__in_opt IShellItem *psi) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetEnumFlagsForItem( 
        /* [in] */ __RPC__in_opt IShellItem *psi,
        /* [out] */ __RPC__out SHCONTF *pgrfFlags) = 0;
    
};