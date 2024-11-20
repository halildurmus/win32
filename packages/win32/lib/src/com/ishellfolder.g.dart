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
import 'ibindctx.g.dart';
import 'ienumidlist.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IShellFolder = Guid.fromComponents(
  0x214e6,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Exposed by all Shell namespace folder objects, its methods are used to
/// manage folders.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ishellfolder>.
///
/// {@category com}
class IShellFolder extends IUnknown implements ComInterface {
  /// Creates a new instance of [IShellFolder] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IShellFolder] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IShellFolder(super.ptr) : _vtable = ptr.value.cast<IShellFolderVtbl>().ref;

  /// Creates a new instance of [IShellFolder] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IShellFolder] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IShellFolder.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IShellFolderVtbl _vtable;
  late final _ParseDisplayNameFn =
      _vtable.ParseDisplayName.asFunction<
        int Function(
          VTablePointer,
          int,
          VTablePointer,
          PCWSTR,
          Pointer<Uint32>,
          Pointer<Pointer<ITEMIDLIST>>,
          Pointer<Uint32>,
        )
      >();
  late final _EnumObjectsFn =
      _vtable.EnumObjects.asFunction<
        int Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _BindToObjectFn =
      _vtable.BindToObject.asFunction<
        int Function(
          VTablePointer,
          Pointer<ITEMIDLIST>,
          VTablePointer,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();
  late final _BindToStorageFn =
      _vtable.BindToStorage.asFunction<
        int Function(
          VTablePointer,
          Pointer<ITEMIDLIST>,
          VTablePointer,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();
  late final _CompareIDsFn =
      _vtable.CompareIDs.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<ITEMIDLIST>,
          Pointer<ITEMIDLIST>,
        )
      >();
  late final _CreateViewObjectFn =
      _vtable.CreateViewObject.asFunction<
        int Function(VTablePointer, int, Pointer<GUID>, Pointer<Pointer>)
      >();
  late final _GetAttributesOfFn =
      _vtable.GetAttributesOf.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<Pointer<ITEMIDLIST>>,
          Pointer<Uint32>,
        )
      >();
  late final _GetUIObjectOfFn =
      _vtable.GetUIObjectOf.asFunction<
        int Function(
          VTablePointer,
          int,
          int,
          Pointer<Pointer<ITEMIDLIST>>,
          Pointer<GUID>,
          Pointer<Uint32>,
          Pointer<Pointer>,
        )
      >();
  late final _GetDisplayNameOfFn =
      _vtable.GetDisplayNameOf.asFunction<
        int Function(VTablePointer, Pointer<ITEMIDLIST>, int, Pointer<STRRET>)
      >();
  late final _SetNameOfFn =
      _vtable.SetNameOf.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<ITEMIDLIST>,
          PCWSTR,
          int,
          Pointer<Pointer<ITEMIDLIST>>,
        )
      >();

  /// Translates the display name of a file object or a folder into an item
  /// identifier list.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-parsedisplayname>.
  @pragma('vm:prefer-inline')
  void parseDisplayName(
    int hwnd,
    IBindCtx? pbc,
    PCWSTR pszDisplayName,
    Pointer<Pointer<ITEMIDLIST>> ppidl,
    Pointer<Uint32> pdwAttributes,
  ) {
    final hr$ = HRESULT(
      _ParseDisplayNameFn(
        ptr,
        hwnd,
        pbc?.ptr ?? nullptr,
        pszDisplayName,
        nullptr,
        ppidl,
        pdwAttributes,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Enables a client to determine the contents of a folder by creating an item
  /// identifier enumeration object and returning its IEnumIDList interface.
  ///
  /// The methods supported by that interface can then be used to enumerate the
  /// folder's contents.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-enumobjects>.
  @pragma('vm:prefer-inline')
  HRESULT enumObjects(
    int hwnd,
    int grfFlags,
    Pointer<VTablePointer> ppenumIDList,
  ) => HRESULT(_EnumObjectsFn(ptr, hwnd, grfFlags, ppenumIDList));

  /// Retrieves a handler, typically the Shell folder object that implements
  /// IShellFolder for a particular item.
  ///
  /// Optional parameters that control the construction of the handler are
  /// passed in the bind context.
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
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-bindtoobject>.
  T bindToObject<T extends IUnknown>(Pointer<ITEMIDLIST> pidl, IBindCtx? pbc) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final ppv = loggingCalloc<Pointer>();
    final hr$ = HRESULT(
      _BindToObjectFn(ptr, pidl, pbc?.ptr ?? nullptr, riid.ptr, ppv),
    );
    if (hr$.isError) {
      free(ppv);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppv.value.cast());
    free(ppv);
    return result;
  }

  /// Requests a pointer to an object's storage interface.
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
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-bindtostorage>.
  T bindToStorage<T extends IUnknown>(Pointer<ITEMIDLIST> pidl, IBindCtx? pbc) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final ppv = loggingCalloc<Pointer>();
    final hr$ = HRESULT(
      _BindToStorageFn(ptr, pidl, pbc?.ptr ?? nullptr, riid.ptr, ppv),
    );
    if (hr$.isError) {
      free(ppv);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppv.value.cast());
    free(ppv);
    return result;
  }

  /// Determines the relative order of two file objects or folders, given their
  /// item identifier lists.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-compareids>.
  @pragma('vm:prefer-inline')
  HRESULT compareIDs(
    int lParam,
    Pointer<ITEMIDLIST> pidl1,
    Pointer<ITEMIDLIST> pidl2,
  ) => HRESULT(_CompareIDsFn(ptr, lParam, pidl1, pidl2));

  /// Requests an object that can be used to obtain information from or interact
  /// with a folder object.
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
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-createviewobject>.
  T createViewObject<T extends IUnknown>(int hwndOwner) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final ppv = loggingCalloc<Pointer>();
    final hr$ = HRESULT(_CreateViewObjectFn(ptr, hwndOwner, riid.ptr, ppv));
    if (hr$.isError) {
      free(ppv);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppv.value.cast());
    free(ppv);
    return result;
  }

  /// Gets the attributes of one or more file or folder objects contained in the
  /// object represented by IShellFolder.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-getattributesof>.
  @pragma('vm:prefer-inline')
  void getAttributesOf(
    int cidl,
    Pointer<Pointer<ITEMIDLIST>> apidl,
    Pointer<Uint32> rgfInOut,
  ) {
    final hr$ = HRESULT(_GetAttributesOfFn(ptr, cidl, apidl, rgfInOut));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets an object that can be used to carry out actions on the specified file
  /// objects or folders.
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
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-getuiobjectof>.
  T getUIObjectOf<T extends IUnknown>(
    int hwndOwner,
    int cidl,
    Pointer<Pointer<ITEMIDLIST>> apidl,
  ) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final ppv = loggingCalloc<Pointer>();
    final hr$ = HRESULT(
      _GetUIObjectOfFn(ptr, hwndOwner, cidl, apidl, riid.ptr, nullptr, ppv),
    );
    if (hr$.isError) {
      free(ppv);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppv.value.cast());
    free(ppv);
    return result;
  }

  /// Retrieves the display name for the specified file object or subfolder.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-getdisplaynameof>.
  Pointer<STRRET> getDisplayNameOf(Pointer<ITEMIDLIST> pidl, SHGDNF uFlags) {
    final pName = loggingCalloc<STRRET>();
    final hr$ = HRESULT(_GetDisplayNameOfFn(ptr, pidl, uFlags, pName));
    if (hr$.isError) {
      free(pName);
      throw WindowsException(hr$);
    }
    return pName;
  }

  /// Sets the display name of a file object or subfolder, changing the item
  /// identifier in the process.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellfolder-setnameof>.
  @pragma('vm:prefer-inline')
  void setNameOf(
    int? hwnd,
    Pointer<ITEMIDLIST> pidl,
    PCWSTR pszName,
    SHGDNF uFlags,
    Pointer<Pointer<ITEMIDLIST>>? ppidlOut,
  ) {
    final hr$ = HRESULT(
      _SetNameOfFn(
        ptr,
        hwnd ?? NULL,
        pidl,
        pszName,
        uFlags,
        ppidlOut ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IShellFolder(ptr: $ptr)';
}

/// @nodoc
base class IShellFolderVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        HWND hwnd,
        VTablePointer pbc,
        PCWSTR pszDisplayName,
        Pointer<Uint32> pchEaten,
        Pointer<Pointer<ITEMIDLIST>> ppidl,
        Pointer<Uint32> pdwAttributes,
      )
    >
  >
  ParseDisplayName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        HWND hwnd,
        Uint32 grfFlags,
        Pointer<VTablePointer> ppenumIDList,
      )
    >
  >
  EnumObjects;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<ITEMIDLIST> pidl,
        VTablePointer pbc,
        Pointer<GUID> riid,
        Pointer<Pointer> ppv,
      )
    >
  >
  BindToObject;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<ITEMIDLIST> pidl,
        VTablePointer pbc,
        Pointer<GUID> riid,
        Pointer<Pointer> ppv,
      )
    >
  >
  BindToStorage;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        LPARAM lParam,
        Pointer<ITEMIDLIST> pidl1,
        Pointer<ITEMIDLIST> pidl2,
      )
    >
  >
  CompareIDs;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        HWND hwndOwner,
        Pointer<GUID> riid,
        Pointer<Pointer> ppv,
      )
    >
  >
  CreateViewObject;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 cidl,
        Pointer<Pointer<ITEMIDLIST>> apidl,
        Pointer<Uint32> rgfInOut,
      )
    >
  >
  GetAttributesOf;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        HWND hwndOwner,
        Uint32 cidl,
        Pointer<Pointer<ITEMIDLIST>> apidl,
        Pointer<GUID> riid,
        Pointer<Uint32> rgfReserved,
        Pointer<Pointer> ppv,
      )
    >
  >
  GetUIObjectOf;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<ITEMIDLIST> pidl,
        Uint32 uFlags,
        Pointer<STRRET> pName,
      )
    >
  >
  GetDisplayNameOf;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        HWND hwnd,
        Pointer<ITEMIDLIST> pidl,
        PCWSTR pszName,
        Uint32 uFlags,
        Pointer<Pointer<ITEMIDLIST>> ppidlOut,
      )
    >
  >
  SetNameOf;
}

@internal
final class IShellFolderCompanion extends ComCompanion<IShellFolder> {
  const IShellFolderCompanion();

  @pragma('vm:prefer-inline')
  @override
  IShellFolder Function(VTablePointer) get fromPointer => IShellFolder.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IShellFolder;
}
