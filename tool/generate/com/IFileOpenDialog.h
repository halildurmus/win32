#include "windows.h"
#include "Shobjidl.h"

// vtable_start 27
// class FileOpenDialog DC1C5A9C-E88A-4dde-A5A1-60F82A20AEF7
MIDL_INTERFACE("d57c7288-d4ad-4768-be02-9d969532d960")
IFileOpenDialog : public IFileDialog
{
public:
    virtual HRESULT STDMETHODCALLTYPE GetResults( 
        /* [out] */ __RPC__deref_out_opt IShellItemArray **ppenum) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetSelectedItems( 
        /* [out] */ __RPC__deref_out_opt IShellItemArray **ppsai) = 0;
    
};