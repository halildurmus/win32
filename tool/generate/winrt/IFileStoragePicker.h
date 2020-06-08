#include <windows.h>
#include <ole2.h>
#include "inspectable.h"
#include "AsyncInfo.h"
#include "EventToken.h"
#include "windowscontracts.h"
#include "Windows.Foundation.h"
#include "Windows.Storage.h"
#include "Windows.System.h"

// vtable_start 6
IFileOpenPicker : public IInspectable
{
public:
    virtual HRESULT STDMETHODCALLTYPE get_ViewMode(
        ABI::Windows::Storage::Pickers::PickerViewMode* value
        ) = 0;
    virtual HRESULT STDMETHODCALLTYPE put_ViewMode(
        ABI::Windows::Storage::Pickers::PickerViewMode value
        ) = 0;
    virtual HRESULT STDMETHODCALLTYPE get_SettingsIdentifier(
        HSTRING* value
        ) = 0;
    virtual HRESULT STDMETHODCALLTYPE put_SettingsIdentifier(
        HSTRING value
        ) = 0;
    virtual HRESULT STDMETHODCALLTYPE get_SuggestedStartLocation(
        ABI::Windows::Storage::Pickers::PickerLocationId* value
        ) = 0;
    virtual HRESULT STDMETHODCALLTYPE put_SuggestedStartLocation(
        ABI::Windows::Storage::Pickers::PickerLocationId value
        ) = 0;
    virtual HRESULT STDMETHODCALLTYPE get_CommitButtonText(
        HSTRING* value
        ) = 0;
    virtual HRESULT STDMETHODCALLTYPE put_CommitButtonText(
        HSTRING value
        ) = 0;
    virtual HRESULT STDMETHODCALLTYPE get_FileTypeFilter(
        __FIVector_1_HSTRING** value
        ) = 0;
    virtual HRESULT STDMETHODCALLTYPE PickSingleFileAsync(
        __FIAsyncOperation_1_Windows__CStorage__CStorageFile** operation
        ) = 0;
    virtual HRESULT STDMETHODCALLTYPE PickMultipleFilesAsync(
        __FIAsyncOperation_1___FIVectorView_1_Windows__CStorage__CStorageFile** operation
        ) = 0;
};