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
import 'ienummoniker.g.dart';
import 'imoniker.g.dart';
import 'interface.g.dart';
import 'ipersiststream.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IMoniker = Guid.fromComponents(
  0xf,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Enables you to use a moniker object, which contains information that
/// uniquely identifies a COM object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/nn-objidl-imoniker>.
///
/// {@category com}
class IMoniker extends IPersistStream implements ComInterface {
  /// Creates a new instance of [IMoniker] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IMoniker] interface. The
  /// [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IMoniker(super.ptr) : _vtable = ptr.value.cast<IMonikerVtbl>().ref;

  /// Creates a new instance of [IMoniker] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IMoniker] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IMoniker.from(IUnknown interface, {bool releaseOriginal = false}) =>
      interface.cast(releaseOriginal: releaseOriginal);

  final IMonikerVtbl _vtable;
  late final _BindToObjectFn =
      _vtable.BindToObject.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();
  late final _BindToStorageFn =
      _vtable.BindToStorage.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();
  late final _ReduceFn =
      _vtable.Reduce.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<VTablePointer>,
          Pointer<VTablePointer>,
        )
      >();
  late final _ComposeWithFn =
      _vtable.ComposeWith.asFunction<
        int Function(VTablePointer, VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _EnumFn =
      _vtable.Enum.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _IsEqualFn =
      _vtable.IsEqual.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _HashFn =
      _vtable.Hash.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _IsRunningFn =
      _vtable.IsRunning.asFunction<
        int Function(VTablePointer, VTablePointer, VTablePointer, VTablePointer)
      >();
  late final _GetTimeOfLastChangeFn =
      _vtable.GetTimeOfLastChange.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          Pointer<FILETIME>,
        )
      >();
  late final _InverseFn =
      _vtable.Inverse.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CommonPrefixWithFn =
      _vtable.CommonPrefixWith.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _RelativePathToFn =
      _vtable.RelativePathTo.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetDisplayNameFn =
      _vtable.GetDisplayName.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          Pointer<PWSTR>,
        )
      >();
  late final _ParseDisplayNameFn =
      _vtable.ParseDisplayName.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          VTablePointer,
          PCWSTR,
          Pointer<Uint32>,
          Pointer<VTablePointer>,
        )
      >();
  late final _IsSystemMonikerFn =
      _vtable.IsSystemMoniker.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();

  /// Binds to the specified object.
  ///
  /// The binding process involves finding the object, putting it into the
  /// running state if necessary, and providing the caller with a pointer to a
  /// specified interface on the identified object.
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
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-bindtoobject>.
  T bindToObject<T extends IUnknown>(IBindCtx? pbc, IMoniker? pmkToLeft) {
    final companion = ComInterface.type<T>();
    final riidResult = companion.iid;
    final ppvResult = loggingCalloc<Pointer>();
    final hr$ = HRESULT(
      _BindToObjectFn(
        ptr,
        pbc?.ptr ?? nullptr,
        pmkToLeft?.ptr ?? nullptr,
        riidResult.ptr,
        ppvResult,
      ),
    );
    if (hr$.isError) {
      free(ppvResult);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppvResult.value.cast());
    free(ppvResult);
    return result;
  }

  /// Binds to the storage for the specified object.
  ///
  /// Unlike the `IMoniker.bindToObject` method, this method does not activate
  /// the object identified by the moniker.
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
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-bindtostorage>.
  T bindToStorage<T extends IUnknown>(IBindCtx? pbc, IMoniker? pmkToLeft) {
    final companion = ComInterface.type<T>();
    final riid = companion.iid;
    final ppvObj = loggingCalloc<Pointer>();
    final hr$ = HRESULT(
      _BindToStorageFn(
        ptr,
        pbc?.ptr ?? nullptr,
        pmkToLeft?.ptr ?? nullptr,
        riid.ptr,
        ppvObj,
      ),
    );
    if (hr$.isError) {
      free(ppvObj);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppvObj.value.cast());
    free(ppvObj);
    return result;
  }

  /// Reduces a moniker to its simplest form.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-reduce>.
  @pragma('vm:prefer-inline')
  void reduce(
    IBindCtx? pbc,
    int dwReduceHowFar,
    Pointer<VTablePointer> ppmkToLeft,
    Pointer<VTablePointer> ppmkReduced,
  ) {
    final hr$ = HRESULT(
      _ReduceFn(
        ptr,
        pbc?.ptr ?? nullptr,
        dwReduceHowFar,
        ppmkToLeft,
        ppmkReduced,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a new composite moniker by combining the current moniker with the
  /// specified moniker.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-composewith>.
  IMoniker? composeWith(IMoniker? pmkRight, bool fOnlyIfNotGeneric) {
    final ppmkComposite = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _ComposeWithFn(
        ptr,
        pmkRight?.ptr ?? nullptr,
        fOnlyIfNotGeneric ? TRUE : FALSE,
        ppmkComposite,
      ),
    );
    if (hr$.isError) {
      free(ppmkComposite);
      throw WindowsException(hr$);
    }
    final result$ = ppmkComposite.value;
    free(ppmkComposite);
    if (result$.isNull) return null;
    return IMoniker(result$);
  }

  /// Retrieves a pointer to an enumerator for the components of a composite
  /// moniker.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-enum>.
  IEnumMoniker? enum$(bool fForward) {
    final ppenumMoniker = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_EnumFn(ptr, fForward ? TRUE : FALSE, ppenumMoniker));
    if (hr$.isError) {
      free(ppenumMoniker);
      throw WindowsException(hr$);
    }
    final result$ = ppenumMoniker.value;
    free(ppenumMoniker);
    if (result$.isNull) return null;
    return IEnumMoniker(result$);
  }

  /// Determines whether this moniker is identical to the specified moniker.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-isequal>.
  @pragma('vm:prefer-inline')
  HRESULT isEqual(IMoniker? pmkOtherMoniker) =>
      HRESULT(_IsEqualFn(ptr, pmkOtherMoniker?.ptr ?? nullptr));

  /// Creates a hash value using the internal state of the moniker.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-hash>.
  int hash() {
    final pdwHash = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_HashFn(ptr, pdwHash));
    if (hr$.isError) {
      free(pdwHash);
      throw WindowsException(hr$);
    }
    final result$ = pdwHash.value;
    free(pdwHash);
    return result$;
  }

  /// Determines whether the object identified by this moniker is currently
  /// loaded and running.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-isrunning>.
  @pragma('vm:prefer-inline')
  void isRunning(
    IBindCtx? pbc,
    IMoniker? pmkToLeft,
    IMoniker? pmkNewlyRunning,
  ) {
    final hr$ = HRESULT(
      _IsRunningFn(
        ptr,
        pbc?.ptr ?? nullptr,
        pmkToLeft?.ptr ?? nullptr,
        pmkNewlyRunning?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the time at which the object identified by this moniker was last
  /// changed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-gettimeoflastchange>.
  Pointer<FILETIME> getTimeOfLastChange(IBindCtx? pbc, IMoniker? pmkToLeft) {
    final pFileTime = loggingCalloc<FILETIME>();
    final hr$ = HRESULT(
      _GetTimeOfLastChangeFn(
        ptr,
        pbc?.ptr ?? nullptr,
        pmkToLeft?.ptr ?? nullptr,
        pFileTime,
      ),
    );
    if (hr$.isError) {
      free(pFileTime);
      throw WindowsException(hr$);
    }
    return pFileTime;
  }

  /// Creates a moniker that is the inverse of this moniker.
  ///
  /// When composed to the right of this moniker or one of similar structure,
  /// the moniker will compose to nothing.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-inverse>.
  IMoniker? inverse() {
    final ppmk = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_InverseFn(ptr, ppmk));
    if (hr$.isError) {
      free(ppmk);
      throw WindowsException(hr$);
    }
    final result$ = ppmk.value;
    free(ppmk);
    if (result$.isNull) return null;
    return IMoniker(result$);
  }

  /// Creates a new moniker based on the prefix that this moniker has in common
  /// with the specified moniker.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-commonprefixwith>.
  IMoniker? commonPrefixWith(IMoniker? pmkOther) {
    final ppmkPrefix = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CommonPrefixWithFn(ptr, pmkOther?.ptr ?? nullptr, ppmkPrefix),
    );
    if (hr$.isError) {
      free(ppmkPrefix);
      throw WindowsException(hr$);
    }
    final result$ = ppmkPrefix.value;
    free(ppmkPrefix);
    if (result$.isNull) return null;
    return IMoniker(result$);
  }

  /// Creates a relative moniker between this moniker and the specified moniker.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-relativepathto>.
  IMoniker? relativePathTo(IMoniker? pmkOther) {
    final ppmkRelPath = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _RelativePathToFn(ptr, pmkOther?.ptr ?? nullptr, ppmkRelPath),
    );
    if (hr$.isError) {
      free(ppmkRelPath);
      throw WindowsException(hr$);
    }
    final result$ = ppmkRelPath.value;
    free(ppmkRelPath);
    if (result$.isNull) return null;
    return IMoniker(result$);
  }

  /// Retrieves the display name for the moniker.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-getdisplayname>.
  PWSTR getDisplayName(IBindCtx? pbc, IMoniker? pmkToLeft) {
    final ppszDisplayName = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(
      _GetDisplayNameFn(
        ptr,
        pbc?.ptr ?? nullptr,
        pmkToLeft?.ptr ?? nullptr,
        ppszDisplayName,
      ),
    );
    if (hr$.isError) {
      free(ppszDisplayName);
      throw WindowsException(hr$);
    }
    final result$ = ppszDisplayName.value;
    free(ppszDisplayName);
    return result$;
  }

  /// Converts a display name into a moniker.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-parsedisplayname>.
  @pragma('vm:prefer-inline')
  void parseDisplayName(
    IBindCtx? pbc,
    IMoniker? pmkToLeft,
    PCWSTR pszDisplayName,
    Pointer<Uint32> pchEaten,
    Pointer<VTablePointer> ppmkOut,
  ) {
    final hr$ = HRESULT(
      _ParseDisplayNameFn(
        ptr,
        pbc?.ptr ?? nullptr,
        pmkToLeft?.ptr ?? nullptr,
        pszDisplayName,
        pchEaten,
        ppmkOut,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Determines whether this moniker is one of the system-provided moniker
  /// classes.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-imoniker-issystemmoniker>.
  int isSystemMoniker() {
    final pdwMksys = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_IsSystemMonikerFn(ptr, pdwMksys));
    if (hr$.isError) {
      free(pdwMksys);
      throw WindowsException(hr$);
    }
    final result$ = pdwMksys.value;
    free(pdwMksys);
    return result$;
  }

  @override
  String toString() => 'IMoniker(ptr: $ptr)';
}

/// @nodoc
base class IMonikerVtbl extends Struct {
  external IPersistStreamVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pbc,
        VTablePointer pmkToLeft,
        Pointer<GUID> riidResult,
        Pointer<Pointer> ppvResult,
      )
    >
  >
  BindToObject;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pbc,
        VTablePointer pmkToLeft,
        Pointer<GUID> riid,
        Pointer<Pointer> ppvObj,
      )
    >
  >
  BindToStorage;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pbc,
        Uint32 dwReduceHowFar,
        Pointer<VTablePointer> ppmkToLeft,
        Pointer<VTablePointer> ppmkReduced,
      )
    >
  >
  Reduce;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pmkRight,
        BOOL fOnlyIfNotGeneric,
        Pointer<VTablePointer> ppmkComposite,
      )
    >
  >
  ComposeWith;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BOOL fForward,
        Pointer<VTablePointer> ppenumMoniker,
      )
    >
  >
  Enum;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer pmkOtherMoniker)
    >
  >
  IsEqual;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> pdwHash)>
  >
  Hash;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pbc,
        VTablePointer pmkToLeft,
        VTablePointer pmkNewlyRunning,
      )
    >
  >
  IsRunning;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pbc,
        VTablePointer pmkToLeft,
        Pointer<FILETIME> pFileTime,
      )
    >
  >
  GetTimeOfLastChange;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppmk)
    >
  >
  Inverse;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pmkOther,
        Pointer<VTablePointer> ppmkPrefix,
      )
    >
  >
  CommonPrefixWith;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pmkOther,
        Pointer<VTablePointer> ppmkRelPath,
      )
    >
  >
  RelativePathTo;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pbc,
        VTablePointer pmkToLeft,
        Pointer<PWSTR> ppszDisplayName,
      )
    >
  >
  GetDisplayName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pbc,
        VTablePointer pmkToLeft,
        PCWSTR pszDisplayName,
        Pointer<Uint32> pchEaten,
        Pointer<VTablePointer> ppmkOut,
      )
    >
  >
  ParseDisplayName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pdwMksys)
    >
  >
  IsSystemMoniker;
}

@internal
final class IMonikerCompanion extends ComCompanion<IMoniker> {
  const IMonikerCompanion();

  @pragma('vm:prefer-inline')
  @override
  IMoniker Function(VTablePointer) get fromPointer => IMoniker.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IMoniker;
}
