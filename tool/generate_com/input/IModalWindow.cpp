#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
MIDL_INTERFACE("b4db1657-70d7-485e-8e3e-6fcb5a5c1802")
IModalWindow : public IUnknown
{
public:
    virtual /* [local] */ HRESULT STDMETHODCALLTYPE Show( 
        /* [annotation][unique][in] */ 
        _In_opt_  HWND hwndOwner) = 0;
    
};