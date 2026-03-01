// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../propvariant.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'ibindctx.g.dart';
import 'interface.g.dart';
import 'ishellitem.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IShellItem2 = GUID.fromComponents(
  0x7e9fb0d3,
  0x919f,
  0x4307,
  .fromList(const [0xab, 0x2e, 0x9b, 0x18, 0x60, 0x31, 0xc, 0x93]),
);

/// Extends IShellItem with methods that retrieve various property values of the
/// item.
///
/// IShellItem and IShellItem2 are the preferred representations of items in any
/// new code.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ishellitem2>.
///
/// {@category com}
class IShellItem2 extends IShellItem implements ComInterface {
  /// Creates a new instance of [IShellItem2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IShellItem2] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  IShellItem2(super.ptr) : _vtable = ptr.value.cast<IShellItem2Vtbl>().ref;

  /// Creates a new instance of [IShellItem2] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IShellItem2] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IShellItem2.from(IUnknown interface) => interface.queryInterface();

  final IShellItem2Vtbl _vtable;
  late final _GetPropertyStoreFn =
      _vtable.GetPropertyStore.asFunction<
        int Function(VTablePointer, int, Pointer<GUID>, Pointer<Pointer>)
      >();
  late final _GetPropertyStoreWithCreateObjectFn =
      _vtable.GetPropertyStoreWithCreateObject.asFunction<
        int Function(
          VTablePointer,
          int,
          VTablePointer,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();
  late final _GetPropertyStoreForKeysFn =
      _vtable.GetPropertyStoreForKeys.asFunction<
        int Function(
          VTablePointer,
          Pointer<PROPERTYKEY>,
          int,
          int,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();
  late final _GetPropertyDescriptionListFn =
      _vtable.GetPropertyDescriptionList.asFunction<
        int Function(
          VTablePointer,
          Pointer<PROPERTYKEY>,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();
  late final _UpdateFn =
      _vtable.Update.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _GetPropertyFn =
      _vtable.GetProperty.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<PROPVARIANT>)
      >();
  late final _GetCLSIDFn =
      _vtable.GetCLSID.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<GUID>)
      >();
  late final _GetFileTimeFn =
      _vtable.GetFileTime.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<FILETIME>)
      >();
  late final _GetInt32Fn =
      _vtable.GetInt32.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<Int32>)
      >();
  late final _GetStringFn =
      _vtable.GetString.asFunction<
        int Function(
          VTablePointer,
          Pointer<PROPERTYKEY>,
          Pointer<Pointer<Utf16>>,
        )
      >();
  late final _GetUInt32Fn =
      _vtable.GetUInt32.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<Uint32>)
      >();
  late final _GetUInt64Fn =
      _vtable.GetUInt64.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<Uint64>)
      >();
  late final _GetBoolFn =
      _vtable.GetBool.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<Int32>)
      >();

  /// Gets a property store object for specified property store flags.
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
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getpropertystore>.
  T getPropertyStore<T extends IUnknown>(GETPROPERTYSTOREFLAGS flags) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid.toNative();
    final ppv = adaptiveCalloc<Pointer>();
    final hr$ = HRESULT(_GetPropertyStoreFn(ptr, flags, riid, ppv));
    free(riid);
    if (hr$.isError) {
      free(ppv);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppv.value.cast());
    free(ppv);
    return result;
  }

  /// Uses the specified ICreateObject instead of CoCreateInstance to create an
  /// instance of the property handler associated with the Shell item on which
  /// this method is called.
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
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getpropertystorewithcreateobject>.
  T getPropertyStoreWithCreateObject<T extends IUnknown>(
    GETPROPERTYSTOREFLAGS flags,
    IUnknown? punkCreateObject,
  ) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid.toNative();
    final ppv = adaptiveCalloc<Pointer>();
    final hr$ = HRESULT(
      _GetPropertyStoreWithCreateObjectFn(
        ptr,
        flags,
        punkCreateObject?.ptr ?? nullptr,
        riid,
        ppv,
      ),
    );
    free(riid);
    if (hr$.isError) {
      free(ppv);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppv.value.cast());
    free(ppv);
    return result;
  }

  /// Gets property store object for specified property keys.
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
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getpropertystoreforkeys>.
  T getPropertyStoreForKeys<T extends IUnknown>(
    Pointer<PROPERTYKEY> rgKeys,
    int cKeys,
    GETPROPERTYSTOREFLAGS flags,
  ) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid.toNative();
    final ppv = adaptiveCalloc<Pointer>();
    final hr$ = HRESULT(
      _GetPropertyStoreForKeysFn(ptr, rgKeys, cKeys, flags, riid, ppv),
    );
    free(riid);
    if (hr$.isError) {
      free(ppv);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppv.value.cast());
    free(ppv);
    return result;
  }

  /// Gets a property description list object given a reference to a property
  /// key.
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
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getpropertydescriptionlist>.
  T getPropertyDescriptionList<T extends IUnknown>(
    Pointer<PROPERTYKEY> keyType,
  ) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid.toNative();
    final ppv = adaptiveCalloc<Pointer>();
    final hr$ = HRESULT(_GetPropertyDescriptionListFn(ptr, keyType, riid, ppv));
    free(riid);
    if (hr$.isError) {
      free(ppv);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppv.value.cast());
    free(ppv);
    return result;
  }

  /// Ensures that any cached information in this item is updated.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-update>.
  @pragma('vm:prefer-inline')
  void update(IBindCtx? pbc) {
    final hr$ = HRESULT(_UpdateFn(ptr, pbc?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets a PROPVARIANT structure from a specified property key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getproperty>.
  Pointer<PROPVARIANT> getProperty(Pointer<PROPERTYKEY> key) {
    final ppropvar = adaptiveCalloc<PROPVARIANT>();
    final hr$ = HRESULT(_GetPropertyFn(ptr, key, ppropvar));
    if (hr$.isError) {
      free(ppropvar);
      throw WindowsException(hr$);
    }
    return ppropvar;
  }

  /// Gets the class identifier (CLSID) value of specified property key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getclsid>.
  Pointer<GUID> getCLSID(Pointer<PROPERTYKEY> key) {
    final pclsid = adaptiveCalloc<GUID>();
    final hr$ = HRESULT(_GetCLSIDFn(ptr, key, pclsid));
    if (hr$.isError) {
      free(pclsid);
      throw WindowsException(hr$);
    }
    return pclsid;
  }

  /// Gets the date and time value of a specified property key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getfiletime>.
  Pointer<FILETIME> getFileTime(Pointer<PROPERTYKEY> key) {
    final pft = adaptiveCalloc<FILETIME>();
    final hr$ = HRESULT(_GetFileTimeFn(ptr, key, pft));
    if (hr$.isError) {
      free(pft);
      throw WindowsException(hr$);
    }
    return pft;
  }

  /// Gets the Int32 value of specified property key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getint32>.
  int getInt32(Pointer<PROPERTYKEY> key) {
    final pi = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_GetInt32Fn(ptr, key, pi));
    if (hr$.isError) {
      free(pi);
      throw WindowsException(hr$);
    }
    final result$ = pi.value;
    free(pi);
    return result$;
  }

  /// Gets the string value of a specified property key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getstring>.
  PWSTR getString(Pointer<PROPERTYKEY> key) {
    final ppsz = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetStringFn(ptr, key, ppsz));
    if (hr$.isError) {
      free(ppsz);
      throw WindowsException(hr$);
    }
    final result$ = ppsz.value;
    free(ppsz);
    return .new(result$);
  }

  /// Gets the UInt32 value of a specified property key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getuint32>.
  int getUInt32(Pointer<PROPERTYKEY> key) {
    final pui = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(_GetUInt32Fn(ptr, key, pui));
    if (hr$.isError) {
      free(pui);
      throw WindowsException(hr$);
    }
    final result$ = pui.value;
    free(pui);
    return result$;
  }

  /// Gets the UInt64 value of a specified property key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getuint64>.
  int getUInt64(Pointer<PROPERTYKEY> key) {
    final pull = adaptiveCalloc<Uint64>();
    final hr$ = HRESULT(_GetUInt64Fn(ptr, key, pull));
    if (hr$.isError) {
      free(pull);
      throw WindowsException(hr$);
    }
    final result$ = pull.value;
    free(pull);
    return result$;
  }

  /// Gets the boolean value of a specified property key.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ishellitem2-getbool>.
  bool getBool(Pointer<PROPERTYKEY> key) {
    final pf = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_GetBoolFn(ptr, key, pf));
    if (hr$.isError) {
      free(pf);
      throw WindowsException(hr$);
    }
    final result$ = pf.value;
    free(pf);
    return result$ != FALSE;
  }

  @override
  String toString() => 'IShellItem2(ptr: $ptr)';
}

/// @nodoc
base class IShellItem2Vtbl extends Struct {
  external IShellItemVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 flags,
        Pointer<GUID> riid,
        Pointer<Pointer> ppv,
      )
    >
  >
  GetPropertyStore;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 flags,
        VTablePointer punkCreateObject,
        Pointer<GUID> riid,
        Pointer<Pointer> ppv,
      )
    >
  >
  GetPropertyStoreWithCreateObject;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> rgKeys,
        Uint32 cKeys,
        Int32 flags,
        Pointer<GUID> riid,
        Pointer<Pointer> ppv,
      )
    >
  >
  GetPropertyStoreForKeys;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> keyType,
        Pointer<GUID> riid,
        Pointer<Pointer> ppv,
      )
    >
  >
  GetPropertyDescriptionList;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pbc)>
  >
  Update;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<PROPVARIANT> ppropvar,
      )
    >
  >
  GetProperty;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<GUID> pclsid,
      )
    >
  >
  GetCLSID;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<FILETIME> pft,
      )
    >
  >
  GetFileTime;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<Int32> pi,
      )
    >
  >
  GetInt32;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<Pointer<Utf16>> ppsz,
      )
    >
  >
  GetString;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<Uint32> pui,
      )
    >
  >
  GetUInt32;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<Uint64> pull,
      )
    >
  >
  GetUInt64;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<Int32> pf,
      )
    >
  >
  GetBool;
}

@internal
final class IShellItem2Companion extends ComCompanion<IShellItem2> {
  const IShellItem2Companion();

  @pragma('vm:prefer-inline')
  @override
  IShellItem2 Function(VTablePointer) get fromPointer => IShellItem2.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IShellItem2;
}
