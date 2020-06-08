#include "windows.h"
#include "Shobjidl.h"

// vtable_start 3
// class DesktopWallpaper C2CF3110-460E-4fc1-B9D0-8A1C0C9CC4BD
MIDL_INTERFACE("B92B56A9-8B55-4E14-9A89-0199BBB6F93B")
IDesktopWallpaper : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE SetWallpaper(
        /* [unique][in] */ __RPC__in_opt LPCWSTR monitorID,
        /* [in] */ __RPC__in LPCWSTR wallpaper) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetWallpaper(
        /* [unique][in] */ __RPC__in_opt LPCWSTR monitorID,
        /* [string][out] */ __RPC__deref_out_opt_string LPWSTR * wallpaper) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetMonitorDevicePathAt(
        /* [in] */ UINT monitorIndex,
        /* [string][out] */ __RPC__deref_out_opt_string LPWSTR * monitorID) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetMonitorDevicePathCount(
        /* [out] */ __RPC__out UINT * count) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetMonitorRECT(
        /* [in] */ __RPC__in LPCWSTR monitorID,
        /* [out] */ __RPC__out RECT * displayRect) = 0;

    virtual HRESULT STDMETHODCALLTYPE SetBackgroundColor(
        /* [in] */ COLORREF color) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetBackgroundColor(
        /* [out] */ __RPC__out COLORREF * color) = 0;

    virtual HRESULT STDMETHODCALLTYPE SetPosition(
        /* [in] */ DESKTOP_WALLPAPER_POSITION position) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetPosition(
        /* [out] */ __RPC__out DESKTOP_WALLPAPER_POSITION * position) = 0;

    virtual HRESULT STDMETHODCALLTYPE SetSlideshow(
        /* [in] */ __RPC__in_opt IShellItemArray * items) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetSlideshow(
        /* [out] */ __RPC__deref_out_opt IShellItemArray * *items) = 0;

    virtual HRESULT STDMETHODCALLTYPE SetSlideshowOptions(
        /* [in] */ DESKTOP_SLIDESHOW_OPTIONS options,
        /* [in] */ UINT slideshowTick) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetSlideshowOptions(
        /* [out] */ __RPC__out DESKTOP_SLIDESHOW_OPTIONS * options,
        /* [out] */ __RPC__out UINT * slideshowTick) = 0;

    virtual HRESULT STDMETHODCALLTYPE AdvanceSlideshow(
        /* [unique][in] */ __RPC__in_opt LPCWSTR monitorID,
        /* [in] */ DESKTOP_SLIDESHOW_DIRECTION direction) = 0;

    virtual HRESULT STDMETHODCALLTYPE GetStatus(
        /* [out] */ __RPC__out DESKTOP_SLIDESHOW_STATE * state) = 0;

    virtual HRESULT STDMETHODCALLTYPE Enable(
        /* [in] */ BOOL enable) = 0;
};
