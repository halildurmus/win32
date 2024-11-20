// This file contains documentation for various Win32 API elements used in the
// Dart projections.
//
// It provides descriptions and help links for different API components,
// including:
//
// - Callbacks
// - Constants
// - Enums
// - Fields
// - Functions
// - Interfaces
// - Methods
// - Structs
//
// The key for each entry should correspond to the exported API name, which may
// differ from the original name due to naming conventions (e.g., `ChooseColor`
// instead of `ChooseColorW`).
//
// This file is used to override or supplement automatically generated
// documentation. It ensures that the documentation for APIs is accurate and
// up-to-date.

import 'api_details.dart';

const callbackDocs = <String, ApiDetails>{
  'FONTENUMPROC': ApiDetails(
    apiName: 'FONTENUMPROC',
    description:
        'An application defined callback function used with the EnumFontFamilies function.',
    helpLink: 'https://learn.microsoft.com/previous-versions/dd162621(v=vs.85)',
  ),
  'LPTHREAD_START_ROUTINE': ApiDetails(
    apiName: 'LPTHREAD_START_ROUTINE',
    description:
        'An application-defined function that serves as the starting address for a thread.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/legacy/ms686736(v=vs.85)',
  ),
  'PHANDLER_ROUTINE': ApiDetails(
    apiName: 'PHANDLER_ROUTINE',
    description:
        'An application-defined function used with the SetConsoleCtrlHandler function.',
    helpLink: 'https://learn.microsoft.com/windows/console/handlerroutine',
  ),
  'WNDENUMPROC': ApiDetails(
    apiName: 'WNDENUMPROC',
    description:
        'An application-defined callback function used with the EnumWindows or EnumDesktopWindows function.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/legacy/ms633498(v=vs.85)',
  ),
};

const constantDocs = <String, ApiDetails>{};

const enumDocs = <String, ApiDetails>{};

const fieldDocs = <String, ApiDetails>{};

const functionDocs = <String, ApiDetails>{
  'ChooseColor': ApiDetails(
    apiName: 'ChooseColor',
    description:
        'Creates a Color dialog box that enables the user to select a color.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/commdlg/nc-commdlg-choosecolorw',
  ),
  'ChooseFont': ApiDetails(
    apiName: 'ChooseFont',
    description:
        'Creates a Font dialog box that enables the user to choose attributes for a logical font.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/commdlg/nc-commdlg-choosefontw',
  ),
  'IsProcessDPIAware': ApiDetails(
    apiName: 'IsProcessDPIAware',
    description:
        'Determines whether the current process is dots per inch (dpi) aware such that it adjusts the sizes of UI elements to compensate for the dpi setting. **Note:** This function may be altered or unavailable in the newer versions of Windows. Use GetProcessDPIAwareness instead.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isprocessdpiaware',
  ),
  'mciGetDeviceID': ApiDetails(
    apiName: 'mciGetDeviceID',
    description:
        'Retrieves the device identifier corresponding to the name of an open device.',
    helpLink: 'https://learn.microsoft.com/previous-versions/dd757156(v=vs.85)',
  ),
  'mciGetDeviceIDFromElementID': ApiDetails(
    apiName: 'mciGetDeviceIDFromElementID',
    description:
        'Retrieves the MCI device identifier corresponding to an element identifier.',
    helpLink: 'https://learn.microsoft.com/previous-versions/dd757157(v=vs.85)',
  ),
  'mciGetErrorString': ApiDetails(
    apiName: 'mciGetErrorString',
    description:
        'Retrieves a string that describes the specified MCI error code.',
    helpLink: 'https://learn.microsoft.com/previous-versions/dd757158(v=vs.85)',
  ),
  'mciSendCommand': ApiDetails(
    apiName: 'mciSendCommand',
    description: 'Sends a command message to the specified MCI device.',
    helpLink: 'https://learn.microsoft.com/previous-versions/dd757160(v=vs.85)',
  ),
  'mciSendString': ApiDetails(
    apiName: 'mciSendString',
    description:
        'Sends a command string to an MCI device. The device that the command is sent to is specified in the command string.',
    helpLink: 'https://learn.microsoft.com/previous-versions/dd757161(v=vs.85)',
  ),
  'OleInitialize': ApiDetails(
    apiName: 'OleInitialize',
    description:
        'Initializes the COM library on the current apartment and identifies the concurrency model as single-thread apartment (STA).',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/ole2/nf-ole2-oleinitialize',
  ),
  'PlaySound': ApiDetails(
    apiName: 'PlaySound',
    description:
        'Plays a sound specified by the given file name, resource, or system event.',
    helpLink:
        'https://learn.microsoft.com/previous-versions//dd743680(v=vs.85)',
  ),
  'SetProcessDPIAware': ApiDetails(
    apiName: 'SetProcessDPIAware',
    description:
        'Sets the process-default DPI awareness to system-DPI awareness. **Note:** This function may be altered or unavailable in the newer versions of Windows. Use SetProcessDpiAwareness instead.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setprocessdpiaware',
  ),
  'UpdateLayeredWindowIndirect': ApiDetails(
    apiName: 'UpdateLayeredWindowIndirect',
    description:
        'Updates the position, size, shape, content, and translucency of a layered window.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/legacy/ms633557(v=vs.85)',
  ),
  'waveInGetPosition': ApiDetails(
    apiName: 'waveInGetPosition',
    description:
        'Retrieves the current input position of the given waveform-audio input device. **Note:** This function is no longer supported for use as of Windows Vista. Instead, use IAudioClock.getPosition.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/mmeapi/nf-mmeapi-waveingetposition',
  ),
};

const interfaceDocs = <String, ApiDetails>{
  'IAppxManifestReader3': ApiDetails(
    apiName: 'IAppxManifestReader3',
    description:
        'Represents an object model of the package manifest that provides methods to access manifest elements and attributes.',
    helpLink: 'https://learn.microsoft.com/previous-versions/mt796945(v=vs.85)',
  ),
  'IAppxManifestReader4': ApiDetails(
    apiName: 'IAppxManifestReader4',
    description:
        'Represents an object model of the package manifest that provides methods to access manifest elements and attributes.',
    helpLink: 'https://learn.microsoft.com/previous-versions/mt796948(v=vs.85)',
  ),
  'IDesktopWallpaper': ApiDetails(
    apiName: 'IDesktopWallpaper',
    description: 'Provides methods for managing the desktop wallpaper.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-idesktopwallpaper',
  ),
  'IPersistMemory': ApiDetails(
    apiName: 'IPersistMemory',
    description: 'Saves and loads objects from a stream.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/internet-explorer/ie-developer/platform-apis/aa768210(v=vs.85)',
  ),
  'ISpeechBaseStream': ApiDetails(
    apiName: 'ISpeechBaseStream',
    description:
        'Defines properties and methods for manipulating data streams.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/ms721006(v=vs.85)',
  ),
  'ISpeechObjectTokens': ApiDetails(
    apiName: 'ISpeechObjectTokens',
    description: 'Represents a collection of SpObjectToken objects.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/ms721389(v=vs.85)',
  ),
  'ISpeechVoiceStatus': ApiDetails(
    apiName: 'ISpeechVoiceStatus',
    description:
        'Defines the types of information returned by the SpVoice.Status method.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/ms722539(v=vs.85)',
  ),
  'ISpEventSource': ApiDetails(
    apiName: 'ISpEventSource',
    description: 'Provides the mechanism to filter and queue events.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/ms717848(v=vs.85)',
  ),
  'ISpNotifySource': ApiDetails(
    apiName: 'ISpNotifySource',
    description:
        'Provides a mechanism for a notification but no information on the events that caused the notification.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/ms717961(v=vs.85)',
  ),
  'ISpVoice': ApiDetails(
    apiName: 'ISpVoice',
    description: 'Enables an application to perform text synthesis operations.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/ms719576(v=vs.85)',
  ),
  'IUnknown': ApiDetails(
    apiName: 'IUnknown',
    description: '''
/// The foundational COM interface that provides methods for querying other
/// interfaces and managing the lifecycle of a COM object.
///
/// All COM interfaces directly or indirectly inherit from [IUnknown]. As such,
/// the three methods defined by [IUnknown] ([queryInterface], [addRef], and
/// [release]) are always the first entries in the VTable for any COM interface.
///
/// This class uses a [NativeFinalizer] to automatically call the [release]
/// method when the object is garbage collected. This ensures that unmanaged
/// resources are properly released, preventing memory leaks.
///
/// If you need full control over the object's lifecycle, you can opt out of
/// automatic finalization by using the [detach] method. This is especially
/// useful in scenarios where ownership of the object is transferred to another
/// part of your application or when explicit lifecycle management is required.
///
/// Additionally, invoking [addRef] or [release] will automatically detach the
/// finalizer. These methods indicate that the caller is explicitly managing the
/// object's lifecycle, taking full responsibility for releasing unmanaged
/// resources.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/unknwn/nn-unknwn-iunknown>.
///
/// {@category com}
''',
  ),
  'IUri': ApiDetails(
    apiName: 'IUri',
    description:
        'Exposes methods and properties used to parse and build Uniform Resource Identifiers (URIs).',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/internet-explorer/ie-developer/platform-apis/ms775038(v=vs.85)',
  ),
};

const methodDocs = <String, ApiDetails>{
  'IUnknown.queryInterface': ApiDetails(
    apiName: 'IUnknown.queryInterface',
    description: '''
/// Queries this COM object for a specific interface defined by the type
/// parameter [T].
///
/// This method attempts to retrieve an interface implemented by the same COM
/// object. If the interface is supported, it returns an instance of that
/// interface, ensuring that [addRef] is called to increment the reference
/// count.
///
/// Throws a [WindowsException] if the requested interface is not implemented
/// by the object.
///
/// This method uses the [ComInterface.type] method to retrieve metadata about
/// the target interface, including its IID (Interface ID) and instantiation
/// logic. All COM interfaces provided by this package are pre-registered.
/// Custom COM interfaces must be registered manually using the
/// [ComInterface.register] method before calling this method.
///
/// Example:
/// ```dart
/// // Create a COM object instance (e.g., IFileDialog).
/// final fileDialog = createInstance<IFileDialog>(FileOpenDialog);
/// // Query for the IFileDialog2 interface.
/// final fileDialog2 = fileDialog.queryInterface<IFileDialog2>();
/// ```
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/unknwn/nf-unknwn-iunknown-queryinterface(refiid_void)>.
''',
  ),
  'IUnknown.addRef': ApiDetails(
    apiName: 'IUnknown.addRef',
    description: '''
/// Increments the reference count of this COM object.
///
/// This method also detaches the instance from the [NativeFinalizer]. By
/// detaching, the responsibility for managing the object's lifetime is
/// transferred to the caller, who must ensure that [release] is called when
/// the object is no longer needed.
///
/// Call this method for every new copy of an interface pointer that you make.
/// For example, if you return a copy of a pointer from a method, then you
/// must call [addRef] on it before returning. Similarly, if you pass a
/// pointer as an `in-out` parameter to a method, you should call [addRef] on
/// it before the call. This ensures the method has a valid reference to the
/// object and can safely call [release] before replacing the original pointer
/// with the out-value.
///
/// Each call to [addRef] must be balanced by a corresponding call to
/// [release] to properly manage the object's lifetime.
///
/// Example:
/// ```dart
/// // Create a new COM object instance (e.g., IFileDialog).
/// final fileDialog = createInstance<IFileDialog>(FileOpenDialog);
///
/// // Increment the reference count before assigning the object to a VARIANT.
/// fileDialog.addRef();
///
/// // Create a VARIANT to hold the COM object.
/// final variant = Variant.unknown(fileDialog);
///
/// // Pass the VARIANT to a native function.
/// // ...
///
/// // Clear the VARIANT eagerly, releasing its resources (including calling
/// // release on the COM object).
/// variant.free();
///
/// // Release the final reference to the COM object.
/// fileDialog.release();
/// ```
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/unknwn/nf-unknwn-iunknown-addref>.
''',
  ),
  'IUnknown.release': ApiDetails(
    apiName: 'IUnknown.release',
    description: '''
/// Decrements the reference count of this COM object.
///
/// This method also detaches the instance from the [NativeFinalizer]. By
/// detaching, it ensures that the finalizer does not automatically attempt to
/// release the object (again), preventing potential use-after-free errors.
///
/// Call this method to release the object's resources immediately, rather
/// than waiting for GC. If this is the last reference to the object, the COM
/// object is destroyed, and its resources are freed. Ensure that you do not
/// access the object after calling [release] if its reference count reaches
/// zero.
///
/// Example:
/// ```dart
/// // Create a new COM object instance (e.g., IFileDialog).
/// final fileDialog = createInstance<IFileDialog>(FileOpenDialog);
///
/// // Perform some operations with the file dialog instance.
/// // ...
///
/// // Later, when done with the file dialog:
/// fileDialog.release(); // Ensures resources are freed immediately.
/// ```
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/unknwn/nf-unknwn-iunknown-release>.
''',
  ),
  'IUnknown.detach': ApiDetails(
    apiName: 'IUnknown.detach',
    description: '''
/// Detaches this instance from the [NativeFinalizer].
///
/// Once detached, the finalizer will no longer automatically call the
/// [release] method when the object is GCed. This allows you to take full
/// control over the lifecycle of the object.
///
/// You should call this method in situations where the ownership of the COM
/// object is being transferred to another part of your application, or when
/// you want to manage its lifecycle manually.
///
/// Example:
/// ```dart
/// // Create a new COM object instance (e.g., IFileDialog).
/// final fileDialog = createInstance<IFileDialog>(FileOpenDialog);
/// fileDialog.detach(); // Detach the finalizer to take manual control.
///
/// // Perform some operations with the file dialog instance.
/// // ...
///
/// // Later, when done with the file dialog:
/// fileDialog.release();
/// ```
''',
  ),
};

const structDocs = <String, ApiDetails>{
  'BLOB': ApiDetails(
    apiName: 'BLOB',
    description: 'Contains information about a block of data.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/nspapi/ns-nspapi-blob',
  ),
  'BSTR': ApiDetails(
    apiName: 'BSTR',
    description:
        'A BSTR (Basic string or binary string) is a string data type that is used by COM, Automation, and Interop functions.',
    helpLink:
        'https://learn.microsoft.com/previous-versions/windows/desktop/automat/bstr',
  ),
  'FILETIME': ApiDetails(
    apiName: 'FILETIME',
    description:
        'Holds an unsigned 64-bit date and time value for a file. This value represents the number of 100-nanosecond units since the start of January 1, 1601.',
    helpLink:
        'https://learn.microsoft.com/office/client-developer/outlook/mapi/filetime',
  ),
  'IP_ADAPTER_PREFIX_XP': ApiDetails(
    apiName: 'IP_ADAPTER_PREFIX_XP',
    description: 'Stores an IP address prefix.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/iptypes/ns-iptypes-ip_adapter_prefix_xp',
  ),
  'L2_NOTIFICATION_DATA': ApiDetails(
    apiName: 'L2_NOTIFICATION_DATA',
    description:
        'Used by the IHV Extensions DLL to send notifications to any service or applications that has registered for the notification.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/l2cmn/ns-l2cmn-l2_notification_data',
  ),
  'PSTR': ApiDetails(
    apiName: 'PSTR',
    description:
        'A pointer to a null-terminated string of 8-bit Windows (ANSI) characters.',
  ),
  'PWSTR': ApiDetails(
    apiName: 'PWSTR',
    description:
        'A pointer to a null-terminated string of 16-bit Unicode characters.',
  ),
  'VARIANT': ApiDetails(
    apiName: 'VARIANT',
    description:
        'A container for a large union that carries many types of data. The value in the first member of the structure, vt, describes which of the union members is valid.',
    helpLink:
        'https://learn.microsoft.com/windows/win32/api/oaidl/ns-oaidl-variant',
  ),
};
