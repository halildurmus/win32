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
import 'iknownfolder.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IKnownFolderManager = Guid.fromComponents(
  0x8be2d872,
  0x86aa,
  0x4d47,
  Uint8List.fromList(const [0xb7, 0x76, 0x32, 0xcc, 0xa4, 0xc, 0x70, 0x18]),
);

/// Exposes methods that create, enumerate or manage existing known folders.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-iknownfoldermanager>.
///
/// {@category com}
class IKnownFolderManager extends IUnknown implements ComInterface {
  /// Creates a new instance of [IKnownFolderManager] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IKnownFolderManager]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IKnownFolderManager(super.ptr)
    : _vtable = ptr.value.cast<IKnownFolderManagerVtbl>().ref;

  /// Creates a new instance of [IKnownFolderManager] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IKnownFolderManager] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IKnownFolderManager.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IKnownFolderManagerVtbl _vtable;
  late final _FolderIdFromCsidlFn =
      _vtable.FolderIdFromCsidl.asFunction<
        int Function(VTablePointer, int, Pointer<GUID>)
      >();
  late final _FolderIdToCsidlFn =
      _vtable.FolderIdToCsidl.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<Int32>)
      >();
  late final _GetFolderIdsFn =
      _vtable.GetFolderIds.asFunction<
        int Function(VTablePointer, Pointer<Pointer<GUID>>, Pointer<Uint32>)
      >();
  late final _GetFolderFn =
      _vtable.GetFolder.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<VTablePointer>)
      >();
  late final _GetFolderByNameFn =
      _vtable.GetFolderByName.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<VTablePointer>)
      >();
  late final _RegisterFolderFn =
      _vtable.RegisterFolder.asFunction<
        int Function(
          VTablePointer,
          Pointer<GUID>,
          Pointer<KNOWNFOLDER_DEFINITION>,
        )
      >();
  late final _UnregisterFolderFn =
      _vtable.UnregisterFolder.asFunction<
        int Function(VTablePointer, Pointer<GUID>)
      >();
  late final _FindFolderFromPathFn =
      _vtable.FindFolderFromPath.asFunction<
        int Function(VTablePointer, PCWSTR, int, Pointer<VTablePointer>)
      >();
  late final _FindFolderFromIDListFn =
      _vtable.FindFolderFromIDList.asFunction<
        int Function(VTablePointer, Pointer<ITEMIDLIST>, Pointer<VTablePointer>)
      >();
  late final _RedirectFn =
      _vtable.Redirect.asFunction<
        int Function(
          VTablePointer,
          Pointer<GUID>,
          int,
          int,
          PCWSTR,
          int,
          Pointer<GUID>,
          Pointer<PWSTR>,
        )
      >();

  /// Gets the KNOWNFOLDERID that is the equivalent of a legacy CSIDL value.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfoldermanager-folderidfromcsidl>.
  Pointer<GUID> folderIdFromCsidl(int nCsidl) {
    final pfid = loggingCalloc<GUID>();
    final hr$ = HRESULT(_FolderIdFromCsidlFn(ptr, nCsidl, pfid));
    if (hr$.isError) {
      free(pfid);
      throw WindowsException(hr$);
    }
    return pfid;
  }

  /// Gets the legacy CSIDL value that is the equivalent of a given
  /// KNOWNFOLDERID.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfoldermanager-folderidtocsidl>.
  int folderIdToCsidl(Pointer<GUID> rfid) {
    final pnCsidl = loggingCalloc<Int32>();
    final hr$ = HRESULT(_FolderIdToCsidlFn(ptr, rfid, pnCsidl));
    if (hr$.isError) {
      free(pnCsidl);
      throw WindowsException(hr$);
    }
    final result$ = pnCsidl.value;
    free(pnCsidl);
    return result$;
  }

  /// Gets an array of all registered known folder IDs.
  ///
  /// This can be used in enumerating all known folders.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfoldermanager-getfolderids>.
  @pragma('vm:prefer-inline')
  void getFolderIds(Pointer<Pointer<GUID>> ppKFId, Pointer<Uint32> pCount) {
    final hr$ = HRESULT(_GetFolderIdsFn(ptr, ppKFId, pCount));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets an object that represents a known folder identified by its
  /// KNOWNFOLDERID.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfoldermanager-getfolder>.
  IKnownFolder? getFolder(Pointer<GUID> rfid) {
    final ppkf = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetFolderFn(ptr, rfid, ppkf));
    if (hr$.isError) {
      free(ppkf);
      throw WindowsException(hr$);
    }
    final result$ = ppkf.value;
    free(ppkf);
    if (result$.isNull) return null;
    return IKnownFolder(result$);
  }

  /// Gets an object that represents a known folder identified by its canonical
  /// name.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfoldermanager-getfolderbyname>.
  IKnownFolder? getFolderByName(PCWSTR pszCanonicalName) {
    final ppkf = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetFolderByNameFn(ptr, pszCanonicalName, ppkf));
    if (hr$.isError) {
      free(ppkf);
      throw WindowsException(hr$);
    }
    final result$ = ppkf.value;
    free(ppkf);
    if (result$.isNull) return null;
    return IKnownFolder(result$);
  }

  /// Adds a new known folder to the registry.
  ///
  /// Used particularly by independent software vendors (ISVs) that are adding
  /// one of their own folders to the known folder system.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfoldermanager-registerfolder>.
  @pragma('vm:prefer-inline')
  void registerFolder(
    Pointer<GUID> rfid,
    Pointer<KNOWNFOLDER_DEFINITION> pKFD,
  ) {
    final hr$ = HRESULT(_RegisterFolderFn(ptr, rfid, pKFD));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Remove a known folder from the registry, which makes it unknown to the
  /// known folder system.
  ///
  /// This method does not remove the folder itself.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfoldermanager-unregisterfolder>.
  @pragma('vm:prefer-inline')
  void unregisterFolder(Pointer<GUID> rfid) {
    final hr$ = HRESULT(_UnregisterFolderFn(ptr, rfid));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets an object that represents a known folder based on a file system path.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfoldermanager-findfolderfrompath>.
  IKnownFolder? findFolderFromPath(PCWSTR pszPath, FFFP_MODE mode) {
    final ppkf = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_FindFolderFromPathFn(ptr, pszPath, mode, ppkf));
    if (hr$.isError) {
      free(ppkf);
      throw WindowsException(hr$);
    }
    final result$ = ppkf.value;
    free(ppkf);
    if (result$.isNull) return null;
    return IKnownFolder(result$);
  }

  /// Gets an object that represents a known folder based on an IDList.
  ///
  /// The object allows you to query certain folder properties, get the current
  /// path of the folder, redirect the folder to another location, and get the
  /// path of the folder as an ITEMIDLIST.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfoldermanager-findfolderfromidlist>.
  IKnownFolder? findFolderFromIDList(Pointer<ITEMIDLIST> pidl) {
    final ppkf = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_FindFolderFromIDListFn(ptr, pidl, ppkf));
    if (hr$.isError) {
      free(ppkf);
      throw WindowsException(hr$);
    }
    final result$ = ppkf.value;
    free(ppkf);
    if (result$.isNull) return null;
    return IKnownFolder(result$);
  }

  /// Redirects folder requests for common and per-user folders.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfoldermanager-redirect>.
  @pragma('vm:prefer-inline')
  void redirect(
    Pointer<GUID> rfid,
    int? hwnd,
    int flags,
    PCWSTR? pszTargetPath,
    int cFolders,
    Pointer<GUID>? pExclusion,
    Pointer<PWSTR>? ppszError,
  ) {
    final hr$ = HRESULT(
      _RedirectFn(
        ptr,
        rfid,
        hwnd ?? NULL,
        flags,
        pszTargetPath ?? nullptr,
        cFolders,
        pExclusion ?? nullptr,
        ppszError ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IKnownFolderManager(ptr: $ptr)';
}

/// @nodoc
base class IKnownFolderManagerVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 nCsidl, Pointer<GUID> pfid)
    >
  >
  FolderIdFromCsidl;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> rfid,
        Pointer<Int32> pnCsidl,
      )
    >
  >
  FolderIdToCsidl;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<GUID>> ppKFId,
        Pointer<Uint32> pCount,
      )
    >
  >
  GetFolderIds;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> rfid,
        Pointer<VTablePointer> ppkf,
      )
    >
  >
  GetFolder;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pszCanonicalName,
        Pointer<VTablePointer> ppkf,
      )
    >
  >
  GetFolderByName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> rfid,
        Pointer<KNOWNFOLDER_DEFINITION> pKFD,
      )
    >
  >
  RegisterFolder;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<GUID> rfid)>
  >
  UnregisterFolder;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pszPath,
        Int32 mode,
        Pointer<VTablePointer> ppkf,
      )
    >
  >
  FindFolderFromPath;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<ITEMIDLIST> pidl,
        Pointer<VTablePointer> ppkf,
      )
    >
  >
  FindFolderFromIDList;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> rfid,
        HWND hwnd,
        Uint32 flags,
        PCWSTR pszTargetPath,
        Uint32 cFolders,
        Pointer<GUID> pExclusion,
        Pointer<PWSTR> ppszError,
      )
    >
  >
  Redirect;
}

@internal
final class IKnownFolderManagerCompanion
    extends ComCompanion<IKnownFolderManager> {
  const IKnownFolderManagerCompanion();

  @pragma('vm:prefer-inline')
  @override
  IKnownFolderManager Function(VTablePointer) get fromPointer =>
      IKnownFolderManager.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IKnownFolderManager;
}
