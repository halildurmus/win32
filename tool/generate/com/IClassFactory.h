#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
MIDL_INTERFACE("00000001-0000-0000-C000-000000000046")
IClassFactory : public IUnknown
{
public:
    virtual /* [local] */ HRESULT STDMETHODCALLTYPE CreateInstance(
        /* [annotation][unique][in] */
        _In_opt_ IUnknown * pUnkOuter,
        /* [annotation][in] */
        _In_ REFIID riid,
        /* [annotation][iid_is][out] */
        _COM_Outptr_ void **ppvObject) = 0;

    virtual /* [local] */ HRESULT STDMETHODCALLTYPE LockServer(
        /* [in] */ BOOL fLock) = 0;
};