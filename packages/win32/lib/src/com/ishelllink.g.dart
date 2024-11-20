// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/iunknown.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IShellLink = Guid.fromComponents(
  0x214f9,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Exposes methods that create, modify, and resolve Shell links.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ishelllinkw>.
///
/// {@category com}
class IShellLink extends IUnknown implements ComInterface {
  /// Creates a new instance of [IShellLink] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IShellLink] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IShellLink(super.ptr) : _vtable = ptr.value.cast<IShellLinkVtbl>().ref;

  /// Creates a new instance of [IShellLink] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IShellLink] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IShellLink.from(IUnknown interface, {bool releaseOriginal = false}) =>
      interface.cast(releaseOriginal: releaseOriginal);

  final IShellLinkVtbl _vtable;
  late final _GetPathFn =
      _vtable.GetPath.asFunction<
        int Function(VTablePointer, PWSTR, int, Pointer<WIN32_FIND_DATA>, int)
      >();
  late final _GetIDListFn =
      _vtable.GetIDList.asFunction<
        int Function(VTablePointer, Pointer<Pointer<ITEMIDLIST>>)
      >();
  late final _SetIDListFn = _vtable
      .SetIDList.asFunction<int Function(VTablePointer, Pointer<ITEMIDLIST>)>();
  late final _GetDescriptionFn = _vtable
      .GetDescription.asFunction<int Function(VTablePointer, PWSTR, int)>();
  late final _SetDescriptionFn =
      _vtable.SetDescription.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _GetWorkingDirectoryFn =
      _vtable.GetWorkingDirectory.asFunction<
        int Function(VTablePointer, PWSTR, int)
      >();
  late final _SetWorkingDirectoryFn = _vtable
      .SetWorkingDirectory.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _GetArgumentsFn = _vtable
      .GetArguments.asFunction<int Function(VTablePointer, PWSTR, int)>();
  late final _SetArgumentsFn =
      _vtable.SetArguments.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _GetHotkeyFn = _vtable
      .GetHotkey.asFunction<int Function(VTablePointer, Pointer<Uint16>)>();
  late final _SetHotkeyFn =
      _vtable.SetHotkey.asFunction<int Function(VTablePointer, int)>();
  late final _GetShowCmdFn = _vtable
      .GetShowCmd.asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _SetShowCmdFn =
      _vtable.SetShowCmd.asFunction<int Function(VTablePointer, int)>();
  late final _GetIconLocationFn =
      _vtable.GetIconLocation.asFunction<
        int Function(VTablePointer, PWSTR, int, Pointer<Int32>)
      >();
  late final _SetIconLocationFn = _vtable
      .SetIconLocation.asFunction<int Function(VTablePointer, PCWSTR, int)>();
  late final _SetRelativePathFn = _vtable
      .SetRelativePath.asFunction<int Function(VTablePointer, PCWSTR, int)>();
  late final _ResolveFn =
      _vtable.Resolve.asFunction<int Function(VTablePointer, int, int)>();
  late final _SetPathFn =
      _vtable.SetPath.asFunction<int Function(VTablePointer, PCWSTR)>();

  /// Gets the path and file name of the target of a Shell link object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-getpath>.
  @pragma('vm:prefer-inline')
  void getPath(
    PWSTR pszFile,
    int cch,
    Pointer<WIN32_FIND_DATA> pfd,
    int fFlags,
  ) {
    final hr$ = HRESULT(_GetPathFn(ptr, pszFile, cch, pfd, fFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the list of item identifiers for the target of a Shell link object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-getidlist>.
  Pointer<ITEMIDLIST> getIDList() {
    final ppidl = loggingCalloc<Pointer<ITEMIDLIST>>();
    final hr$ = HRESULT(_GetIDListFn(ptr, ppidl));
    if (hr$.isError) {
      free(ppidl);
      throw WindowsException(hr$);
    }
    final result$ = ppidl.value;
    free(ppidl);
    return result$;
  }

  /// Sets the pointer to an item identifier list (PIDL) for a Shell link
  /// object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-setidlist>.
  @pragma('vm:prefer-inline')
  void setIDList(Pointer<ITEMIDLIST> pidl) {
    final hr$ = HRESULT(_SetIDListFn(ptr, pidl));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the description string for a Shell link object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-getdescription>.
  @pragma('vm:prefer-inline')
  void getDescription(PWSTR pszName, int cch) {
    final hr$ = HRESULT(_GetDescriptionFn(ptr, pszName, cch));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the description for a Shell link object.
  ///
  /// The description can be any application-defined string.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-setdescription>.
  @pragma('vm:prefer-inline')
  void setDescription(PCWSTR pszName) {
    final hr$ = HRESULT(_SetDescriptionFn(ptr, pszName));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the name of the working directory for a Shell link object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-getworkingdirectory>.
  @pragma('vm:prefer-inline')
  void getWorkingDirectory(PWSTR pszDir, int cch) {
    final hr$ = HRESULT(_GetWorkingDirectoryFn(ptr, pszDir, cch));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the name of the working directory for a Shell link object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-setworkingdirectory>.
  @pragma('vm:prefer-inline')
  void setWorkingDirectory(PCWSTR pszDir) {
    final hr$ = HRESULT(_SetWorkingDirectoryFn(ptr, pszDir));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the command-line arguments associated with a Shell link object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-getarguments>.
  @pragma('vm:prefer-inline')
  void getArguments(PWSTR pszArgs, int cch) {
    final hr$ = HRESULT(_GetArgumentsFn(ptr, pszArgs, cch));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the command-line arguments for a Shell link object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-setarguments>.
  @pragma('vm:prefer-inline')
  void setArguments(PCWSTR pszArgs) {
    final hr$ = HRESULT(_SetArgumentsFn(ptr, pszArgs));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the keyboard shortcut (hot key) for a Shell link object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-gethotkey>.
  int getHotkey() {
    final pwHotkey = loggingCalloc<Uint16>();
    final hr$ = HRESULT(_GetHotkeyFn(ptr, pwHotkey));
    if (hr$.isError) {
      free(pwHotkey);
      throw WindowsException(hr$);
    }
    final result$ = pwHotkey.value;
    free(pwHotkey);
    return result$;
  }

  /// Sets a keyboard shortcut (hot key) for a Shell link object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-sethotkey>.
  @pragma('vm:prefer-inline')
  void setHotkey(int wHotkey) {
    final hr$ = HRESULT(_SetHotkeyFn(ptr, wHotkey));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the show command for a Shell link object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-getshowcmd>.
  SHOW_WINDOW_CMD getShowCmd() {
    final piShowCmd = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetShowCmdFn(ptr, piShowCmd));
    if (hr$.isError) {
      free(piShowCmd);
      throw WindowsException(hr$);
    }
    final result$ = piShowCmd.value;
    free(piShowCmd);
    return SHOW_WINDOW_CMD(result$);
  }

  /// Sets the show command for a Shell link object.
  ///
  /// The show command sets the initial show state of the window.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-setshowcmd>.
  @pragma('vm:prefer-inline')
  void setShowCmd(SHOW_WINDOW_CMD iShowCmd) {
    final hr$ = HRESULT(_SetShowCmdFn(ptr, iShowCmd));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the location (path and index) of the icon for a Shell link object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-geticonlocation>.
  @pragma('vm:prefer-inline')
  void getIconLocation(PWSTR pszIconPath, int cch, Pointer<Int32> piIcon) {
    final hr$ = HRESULT(_GetIconLocationFn(ptr, pszIconPath, cch, piIcon));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the location (path and index) of the icon for a Shell link object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-seticonlocation>.
  @pragma('vm:prefer-inline')
  void setIconLocation(PCWSTR pszIconPath, int iIcon) {
    final hr$ = HRESULT(_SetIconLocationFn(ptr, pszIconPath, iIcon));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the relative path to the Shell link object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-setrelativepath>.
  @pragma('vm:prefer-inline')
  void setRelativePath(PCWSTR pszPathRel) {
    final hr$ = HRESULT(_SetRelativePathFn(ptr, pszPathRel, NULL));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Attempts to find the target of a Shell link, even if it has been moved or
  /// renamed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-resolve>.
  @pragma('vm:prefer-inline')
  void resolve(int hwnd, int fFlags) {
    final hr$ = HRESULT(_ResolveFn(ptr, hwnd, fFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the path and file name for the target of a Shell link object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishelllinkw-setpath>.
  @pragma('vm:prefer-inline')
  void setPath(PCWSTR pszFile) {
    final hr$ = HRESULT(_SetPathFn(ptr, pszFile));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IShellLink(ptr: $ptr)';
}

/// @nodoc
base class IShellLinkVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PWSTR pszFile,
        Int32 cch,
        Pointer<WIN32_FIND_DATA> pfd,
        Uint32 fFlags,
      )
    >
  >
  GetPath;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<ITEMIDLIST>> ppidl)
    >
  >
  GetIDList;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<ITEMIDLIST> pidl)
    >
  >
  SetIDList;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PWSTR pszName, Int32 cch)
    >
  >
  GetDescription;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR pszName)>
  >
  SetDescription;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PWSTR pszDir, Int32 cch)>
  >
  GetWorkingDirectory;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR pszDir)>
  >
  SetWorkingDirectory;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PWSTR pszArgs, Int32 cch)
    >
  >
  GetArguments;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR pszArgs)>
  >
  SetArguments;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint16> pwHotkey)
    >
  >
  GetHotkey;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint16 wHotkey)>
  >
  SetHotkey;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> piShowCmd)
    >
  >
  GetShowCmd;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 iShowCmd)>
  >
  SetShowCmd;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PWSTR pszIconPath,
        Int32 cch,
        Pointer<Int32> piIcon,
      )
    >
  >
  GetIconLocation;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PCWSTR pszIconPath, Int32 iIcon)
    >
  >
  SetIconLocation;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, PCWSTR pszPathRel, Uint32 dwReserved)
    >
  >
  SetRelativePath;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, HWND hwnd, Uint32 fFlags)
    >
  >
  Resolve;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR pszFile)>
  >
  SetPath;
}

@internal
final class IShellLinkCompanion extends ComCompanion<IShellLink> {
  const IShellLinkCompanion();

  @pragma('vm:prefer-inline')
  @override
  IShellLink Function(VTablePointer) get fromPointer => IShellLink.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IShellLink;
}
