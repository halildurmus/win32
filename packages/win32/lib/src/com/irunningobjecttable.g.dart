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
import 'ienummoniker.g.dart';
import 'imoniker.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IRunningObjectTable = Guid.fromComponents(
  0x10,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Manages access to the running object table (ROT), a globally accessible
/// look-up table on each workstation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/nn-objidl-irunningobjecttable>.
///
/// {@category com}
class IRunningObjectTable extends IUnknown implements ComInterface {
  /// Creates a new instance of [IRunningObjectTable] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IRunningObjectTable]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IRunningObjectTable(super.ptr)
    : _vtable = ptr.value.cast<IRunningObjectTableVtbl>().ref;

  /// Creates a new instance of [IRunningObjectTable] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IRunningObjectTable] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IRunningObjectTable.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IRunningObjectTableVtbl _vtable;
  late final _RegisterFn =
      _vtable.Register.asFunction<
        int Function(
          VTablePointer,
          int,
          VTablePointer,
          VTablePointer,
          Pointer<Uint32>,
        )
      >();
  late final _RevokeFn =
      _vtable.Revoke.asFunction<int Function(VTablePointer, int)>();
  late final _IsRunningFn = _vtable
      .IsRunning.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _GetObjectFn =
      _vtable.GetObject.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _NoteChangeTimeFn =
      _vtable.NoteChangeTime.asFunction<
        int Function(VTablePointer, int, Pointer<FILETIME>)
      >();
  late final _GetTimeOfLastChangeFn =
      _vtable.GetTimeOfLastChange.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<FILETIME>)
      >();
  late final _EnumRunningFn =
      _vtable.EnumRunning.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Registers an object and its identifying moniker in the running object
  /// table (ROT).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-irunningobjecttable-register>.
  int register(
    ROT_FLAGS grfFlags,
    IUnknown? punkObject,
    IMoniker? pmkObjectName,
  ) {
    final pdwRegister = loggingCalloc<Uint32>();
    final hr$ = HRESULT(
      _RegisterFn(
        ptr,
        grfFlags,
        punkObject?.ptr ?? nullptr,
        pmkObjectName?.ptr ?? nullptr,
        pdwRegister,
      ),
    );
    if (hr$.isError) {
      free(pdwRegister);
      throw WindowsException(hr$);
    }
    final result$ = pdwRegister.value;
    free(pdwRegister);
    return result$;
  }

  /// Removes an entry from the running object table (ROT) that was previously
  /// registered by a call to `IRunningObjectTable.register`.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-irunningobjecttable-revoke>.
  @pragma('vm:prefer-inline')
  void revoke(int dwRegister) {
    final hr$ = HRESULT(_RevokeFn(ptr, dwRegister));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Determines whether the object identified by the specified moniker is
  /// currently running.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-irunningobjecttable-isrunning>.
  @pragma('vm:prefer-inline')
  void isRunning(IMoniker? pmkObjectName) {
    final hr$ = HRESULT(_IsRunningFn(ptr, pmkObjectName?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Determines whether the object identified by the specified moniker is
  /// running, and if it is, retrieves a pointer to that object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-irunningobjecttable-getobject>.
  IUnknown? getObject(IMoniker? pmkObjectName) {
    final ppunkObject = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetObjectFn(ptr, pmkObjectName?.ptr ?? nullptr, ppunkObject),
    );
    if (hr$.isError) {
      free(ppunkObject);
      throw WindowsException(hr$);
    }
    final result$ = ppunkObject.value;
    free(ppunkObject);
    if (result$.isNull) return null;
    return IUnknown(result$);
  }

  /// Records the time that a running object was last modified.
  ///
  /// The object must have previously been registered with the running object
  /// table (ROT). This method stores the time of last change in the ROT.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-irunningobjecttable-notechangetime>.
  @pragma('vm:prefer-inline')
  void noteChangeTime(int dwRegister, Pointer<FILETIME> pfiletime) {
    final hr$ = HRESULT(_NoteChangeTimeFn(ptr, dwRegister, pfiletime));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the time that an object was last modified.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-irunningobjecttable-gettimeoflastchange>.
  Pointer<FILETIME> getTimeOfLastChange(IMoniker? pmkObjectName) {
    final pfiletime = loggingCalloc<FILETIME>();
    final hr$ = HRESULT(
      _GetTimeOfLastChangeFn(ptr, pmkObjectName?.ptr ?? nullptr, pfiletime),
    );
    if (hr$.isError) {
      free(pfiletime);
      throw WindowsException(hr$);
    }
    return pfiletime;
  }

  /// Creates and returns a pointer to an enumerator that can list the monikers
  /// of all the objects currently registered in the running object table (ROT).
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-irunningobjecttable-enumrunning>.
  IEnumMoniker? enumRunning() {
    final ppenumMoniker = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_EnumRunningFn(ptr, ppenumMoniker));
    if (hr$.isError) {
      free(ppenumMoniker);
      throw WindowsException(hr$);
    }
    final result$ = ppenumMoniker.value;
    free(ppenumMoniker);
    if (result$.isNull) return null;
    return IEnumMoniker(result$);
  }

  @override
  String toString() => 'IRunningObjectTable(ptr: $ptr)';
}

/// @nodoc
base class IRunningObjectTableVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 grfFlags,
        VTablePointer punkObject,
        VTablePointer pmkObjectName,
        Pointer<Uint32> pdwRegister,
      )
    >
  >
  Register;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 dwRegister)>
  >
  Revoke;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer pmkObjectName)
    >
  >
  IsRunning;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pmkObjectName,
        Pointer<VTablePointer> ppunkObject,
      )
    >
  >
  GetObject;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 dwRegister,
        Pointer<FILETIME> pfiletime,
      )
    >
  >
  NoteChangeTime;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pmkObjectName,
        Pointer<FILETIME> pfiletime,
      )
    >
  >
  GetTimeOfLastChange;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppenumMoniker)
    >
  >
  EnumRunning;
}

@internal
final class IRunningObjectTableCompanion
    extends ComCompanion<IRunningObjectTable> {
  const IRunningObjectTableCompanion();

  @pragma('vm:prefer-inline')
  @override
  IRunningObjectTable Function(VTablePointer) get fromPointer =>
      IRunningObjectTable.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IRunningObjectTable;
}
