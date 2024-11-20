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
final IID_IKnownFolder = Guid.fromComponents(
  0x3aa7af7e,
  0x9b36,
  0x420c,
  Uint8List.fromList(const [0xa8, 0xe3, 0xf7, 0x7d, 0x46, 0x74, 0xa4, 0x88]),
);

/// Exposes methods that allow an application to retrieve information about a
/// known folder's category, type, GUID, pointer to an item identifier list
/// (PIDL) value, redirection capabilities, and definition.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-iknownfolder>.
///
/// {@category com}
class IKnownFolder extends IUnknown implements ComInterface {
  /// Creates a new instance of [IKnownFolder] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IKnownFolder] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IKnownFolder(super.ptr) : _vtable = ptr.value.cast<IKnownFolderVtbl>().ref;

  /// Creates a new instance of [IKnownFolder] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IKnownFolder] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IKnownFolder.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IKnownFolderVtbl _vtable;
  late final _GetIdFn =
      _vtable.GetId.asFunction<int Function(VTablePointer, Pointer<GUID>)>();
  late final _GetCategoryFn = _vtable
      .GetCategory.asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _GetShellItemFn =
      _vtable.GetShellItem.asFunction<
        int Function(VTablePointer, int, Pointer<GUID>, Pointer<Pointer>)
      >();
  late final _GetPathFn = _vtable
      .GetPath.asFunction<int Function(VTablePointer, int, Pointer<PWSTR>)>();
  late final _SetPathFn =
      _vtable.SetPath.asFunction<int Function(VTablePointer, int, PCWSTR)>();
  late final _GetIDListFn =
      _vtable.GetIDList.asFunction<
        int Function(VTablePointer, int, Pointer<Pointer<ITEMIDLIST>>)
      >();
  late final _GetFolderTypeFn = _vtable
      .GetFolderType.asFunction<int Function(VTablePointer, Pointer<GUID>)>();
  late final _GetRedirectionCapabilitiesFn =
      _vtable.GetRedirectionCapabilities.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();
  late final _GetFolderDefinitionFn =
      _vtable.GetFolderDefinition.asFunction<
        int Function(VTablePointer, Pointer<KNOWNFOLDER_DEFINITION>)
      >();

  /// Gets the ID of the selected folder.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getid>.
  Pointer<GUID> getId() {
    final pkfid = loggingCalloc<GUID>();
    final hr$ = HRESULT(_GetIdFn(ptr, pkfid));
    if (hr$.isError) {
      free(pkfid);
      throw WindowsException(hr$);
    }
    return pkfid;
  }

  /// Retrieves the category—virtual, fixed, common, or per-user—of the selected
  /// folder.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getcategory>.
  KF_CATEGORY getCategory() {
    final pCategory = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetCategoryFn(ptr, pCategory));
    if (hr$.isError) {
      free(pCategory);
      throw WindowsException(hr$);
    }
    final result$ = pCategory.value;
    free(pCategory);
    return KF_CATEGORY(result$);
  }

  /// Retrieves the location of a known folder in the Shell namespace in the
  /// form of a Shell item (IShellItem or derived interface).
  ///
  /// This method uses the [ComInterface.type] method to retrieve metadata about
  /// the target interface defined by [T], including its IID (Interface ID) and
  /// instantiation logic.
  ///
  /// All COM interfaces provided by this package are pre-registered. Custom COM
  /// interfaces must be registered manually using the [ComInterface.register]
  /// method before calling this method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getshellitem>.
  T getShellItem<T extends IUnknown>(int dwFlags) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final ppv = loggingCalloc<Pointer>();
    final hr$ = HRESULT(_GetShellItemFn(ptr, dwFlags, riid.ptr, ppv));
    if (hr$.isError) {
      free(ppv);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppv.value.cast());
    free(ppv);
    return result;
  }

  /// Retrieves the path of a known folder as a string.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getpath>.
  PWSTR getPath(int dwFlags) {
    final ppszPath = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetPathFn(ptr, dwFlags, ppszPath));
    if (hr$.isError) {
      free(ppszPath);
      throw WindowsException(hr$);
    }
    final result$ = ppszPath.value;
    free(ppszPath);
    return result$;
  }

  /// Assigns a new path to a known folder.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-setpath>.
  @pragma('vm:prefer-inline')
  void setPath(int dwFlags, PCWSTR pszPath) {
    final hr$ = HRESULT(_SetPathFn(ptr, dwFlags, pszPath));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the location of the Shell namespace folder in the IDList (ITEMIDLIST)
  /// form.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getidlist>.
  Pointer<ITEMIDLIST> getIDList(int dwFlags) {
    final ppidl = loggingCalloc<Pointer<ITEMIDLIST>>();
    final hr$ = HRESULT(_GetIDListFn(ptr, dwFlags, ppidl));
    if (hr$.isError) {
      free(ppidl);
      throw WindowsException(hr$);
    }
    final result$ = ppidl.value;
    free(ppidl);
    return result$;
  }

  /// Retrieves the folder type.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getfoldertype>.
  Pointer<GUID> getFolderType() {
    final pftid = loggingCalloc<GUID>();
    final hr$ = HRESULT(_GetFolderTypeFn(ptr, pftid));
    if (hr$.isError) {
      free(pftid);
      throw WindowsException(hr$);
    }
    return pftid;
  }

  /// Gets a value that states whether the known folder can have its path set to
  /// a new value or what specific restrictions or prohibitions are placed on
  /// that redirection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getredirectioncapabilities>.
  int getRedirectionCapabilities() {
    final pCapabilities = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetRedirectionCapabilitiesFn(ptr, pCapabilities));
    if (hr$.isError) {
      free(pCapabilities);
      throw WindowsException(hr$);
    }
    final result$ = pCapabilities.value;
    free(pCapabilities);
    return result$;
  }

  /// Retrieves a structure that contains the defining elements of a known
  /// folder, which includes the folder's category, name, path, description,
  /// tooltip, icon, and other properties.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-iknownfolder-getfolderdefinition>.
  Pointer<KNOWNFOLDER_DEFINITION> getFolderDefinition() {
    final pKFD = loggingCalloc<KNOWNFOLDER_DEFINITION>();
    final hr$ = HRESULT(_GetFolderDefinitionFn(ptr, pKFD));
    if (hr$.isError) {
      free(pKFD);
      throw WindowsException(hr$);
    }
    return pKFD;
  }

  @override
  String toString() => 'IKnownFolder(ptr: $ptr)';
}

/// @nodoc
base class IKnownFolderVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<GUID> pkfid)>
  >
  GetId;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> pCategory)
    >
  >
  GetCategory;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwFlags,
        Pointer<GUID> riid,
        Pointer<Pointer> ppv,
      )
    >
  >
  GetShellItem;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwFlags,
        Pointer<PWSTR> ppszPath,
      )
    >
  >
  GetPath;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 dwFlags, PCWSTR pszPath)
    >
  >
  SetPath;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwFlags,
        Pointer<Pointer<ITEMIDLIST>> ppidl,
      )
    >
  >
  GetIDList;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<GUID> pftid)>
  >
  GetFolderType;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pCapabilities)
    >
  >
  GetRedirectionCapabilities;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<KNOWNFOLDER_DEFINITION> pKFD)
    >
  >
  GetFolderDefinition;
}

@internal
final class IKnownFolderCompanion extends ComCompanion<IKnownFolder> {
  const IKnownFolderCompanion();

  @pragma('vm:prefer-inline')
  @override
  IKnownFolder Function(VTablePointer) get fromPointer => IKnownFolder.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IKnownFolder;
}
