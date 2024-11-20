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
import 'ienumstatstg.g.dart';
import 'interface.g.dart';
import 'istorage.g.dart';
import 'istream.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IStorage = Guid.fromComponents(
  0xb,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Supports the creation and management of structured storage objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/nn-objidl-istorage>.
///
/// {@category com}
class IStorage extends IUnknown implements ComInterface {
  /// Creates a new instance of [IStorage] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IStorage] interface. The
  /// [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IStorage(super.ptr) : _vtable = ptr.value.cast<IStorageVtbl>().ref;

  /// Creates a new instance of [IStorage] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IStorage] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IStorage.from(IUnknown interface, {bool releaseOriginal = false}) =>
      interface.cast(releaseOriginal: releaseOriginal);

  final IStorageVtbl _vtable;
  late final _CreateStreamFn =
      _vtable.CreateStream.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          int,
          int,
          int,
          Pointer<VTablePointer>,
        )
      >();
  late final _OpenStreamFn =
      _vtable.OpenStream.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          Pointer,
          int,
          int,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateStorageFn =
      _vtable.CreateStorage.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          int,
          int,
          int,
          Pointer<VTablePointer>,
        )
      >();
  late final _OpenStorageFn =
      _vtable.OpenStorage.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          VTablePointer,
          int,
          Pointer<Pointer<Uint16>>,
          int,
          Pointer<VTablePointer>,
        )
      >();
  late final _CopyToFn =
      _vtable.CopyTo.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<GUID>,
          Pointer<Pointer<Uint16>>,
          VTablePointer,
        )
      >();
  late final _MoveElementToFn =
      _vtable.MoveElementTo.asFunction<
        int Function(VTablePointer, PCWSTR, VTablePointer, PCWSTR, int)
      >();
  late final _CommitFn =
      _vtable.Commit.asFunction<int Function(VTablePointer, int)>();
  late final _RevertFn =
      _vtable.Revert.asFunction<int Function(VTablePointer)>();
  late final _EnumElementsFn =
      _vtable.EnumElements.asFunction<
        int Function(VTablePointer, int, Pointer, int, Pointer<VTablePointer>)
      >();
  late final _DestroyElementFn =
      _vtable.DestroyElement.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _RenameElementFn = _vtable
      .RenameElement.asFunction<int Function(VTablePointer, PCWSTR, PCWSTR)>();
  late final _SetElementTimesFn =
      _vtable.SetElementTimes.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          Pointer<FILETIME>,
          Pointer<FILETIME>,
          Pointer<FILETIME>,
        )
      >();
  late final _SetClassFn =
      _vtable.SetClass.asFunction<int Function(VTablePointer, Pointer<GUID>)>();
  late final _SetStateBitsFn =
      _vtable.SetStateBits.asFunction<int Function(VTablePointer, int, int)>();
  late final _StatFn = _vtable
      .Stat.asFunction<int Function(VTablePointer, Pointer<STATSTG>, int)>();

  /// Creates and opens a stream object with the specified name contained in
  /// this storage object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istorage-createstream>.
  IStream? createStream(
    PCWSTR pwcsName,
    STGM grfMode,
    int reserved1,
    int reserved2,
  ) {
    final ppstm = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateStreamFn(ptr, pwcsName, grfMode, reserved1, reserved2, ppstm),
    );
    if (hr$.isError) {
      free(ppstm);
      throw WindowsException(hr$);
    }
    final result$ = ppstm.value;
    free(ppstm);
    if (result$.isNull) return null;
    return IStream(result$);
  }

  /// Opens an existing stream object within this storage object in the
  /// specified access mode.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istorage-openstream>.
  IStream? openStream(PCWSTR pwcsName, STGM grfMode, int reserved2) {
    final ppstm = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _OpenStreamFn(ptr, pwcsName, nullptr, grfMode, reserved2, ppstm),
    );
    if (hr$.isError) {
      free(ppstm);
      throw WindowsException(hr$);
    }
    final result$ = ppstm.value;
    free(ppstm);
    if (result$.isNull) return null;
    return IStream(result$);
  }

  /// Creates and opens a new storage object nested within this storage object
  /// with the specified name in the specified access mode.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istorage-createstorage>.
  IStorage? createStorage(
    PCWSTR pwcsName,
    STGM grfMode,
    int reserved1,
    int reserved2,
  ) {
    final ppstg = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateStorageFn(ptr, pwcsName, grfMode, reserved1, reserved2, ppstg),
    );
    if (hr$.isError) {
      free(ppstg);
      throw WindowsException(hr$);
    }
    final result$ = ppstg.value;
    free(ppstg);
    if (result$.isNull) return null;
    return IStorage(result$);
  }

  /// Opens an existing storage object with the specified name in the specified
  /// access mode.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istorage-openstorage>.
  IStorage? openStorage(
    PCWSTR pwcsName,
    IStorage? pstgPriority,
    STGM grfMode,
    Pointer<Pointer<Uint16>> snbExclude,
    int reserved,
  ) {
    final ppstg = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _OpenStorageFn(
        ptr,
        pwcsName,
        pstgPriority?.ptr ?? nullptr,
        grfMode,
        snbExclude,
        reserved,
        ppstg,
      ),
    );
    if (hr$.isError) {
      free(ppstg);
      throw WindowsException(hr$);
    }
    final result$ = ppstg.value;
    free(ppstg);
    if (result$.isNull) return null;
    return IStorage(result$);
  }

  /// Copies the entire contents of an open storage object to another storage
  /// object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istorage-copyto>.
  @pragma('vm:prefer-inline')
  void copyTo(
    int ciidExclude,
    Pointer<GUID>? rgiidExclude,
    Pointer<Pointer<Uint16>>? snbExclude,
    IStorage? pstgDest,
  ) {
    final hr$ = HRESULT(
      _CopyToFn(
        ptr,
        ciidExclude,
        rgiidExclude ?? nullptr,
        snbExclude ?? nullptr,
        pstgDest?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Copies or moves a substorage or stream from this storage object to another
  /// storage object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istorage-moveelementto>.
  @pragma('vm:prefer-inline')
  void moveElementTo(
    PCWSTR pwcsName,
    IStorage? pstgDest,
    PCWSTR pwcsNewName,
    STGMOVE grfFlags,
  ) {
    final hr$ = HRESULT(
      _MoveElementToFn(
        ptr,
        pwcsName,
        pstgDest?.ptr ?? nullptr,
        pwcsNewName,
        grfFlags,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Ensures that any changes made to a storage object open in transacted mode
  /// are reflected in the parent storage.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istorage-commit>.
  @pragma('vm:prefer-inline')
  void commit(int grfCommitFlags) {
    final hr$ = HRESULT(_CommitFn(ptr, grfCommitFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Discards all changes that have been made to the storage object since the
  /// last commit operation.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istorage-revert>.
  @pragma('vm:prefer-inline')
  void revert() {
    final hr$ = HRESULT(_RevertFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a pointer to an enumerator object that can be used to enumerate
  /// the storage and stream objects contained within this storage object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istorage-enumelements>.
  IEnumSTATSTG? enumElements() {
    final ppenum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_EnumElementsFn(ptr, NULL, nullptr, NULL, ppenum));
    if (hr$.isError) {
      free(ppenum);
      throw WindowsException(hr$);
    }
    final result$ = ppenum.value;
    free(ppenum);
    if (result$.isNull) return null;
    return IEnumSTATSTG(result$);
  }

  /// Removes the specified storage or stream from this storage object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istorage-destroyelement>.
  @pragma('vm:prefer-inline')
  void destroyElement(PCWSTR pwcsName) {
    final hr$ = HRESULT(_DestroyElementFn(ptr, pwcsName));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Renames the specified substorage or stream in this storage object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istorage-renameelement>.
  @pragma('vm:prefer-inline')
  void renameElement(PCWSTR pwcsOldName, PCWSTR pwcsNewName) {
    final hr$ = HRESULT(_RenameElementFn(ptr, pwcsOldName, pwcsNewName));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the modification, access, and creation times of the specified storage
  /// element, if the underlying file system supports this method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istorage-setelementtimes>.
  @pragma('vm:prefer-inline')
  void setElementTimes(
    PCWSTR pwcsName,
    Pointer<FILETIME> pctime,
    Pointer<FILETIME> patime,
    Pointer<FILETIME> pmtime,
  ) {
    final hr$ = HRESULT(
      _SetElementTimesFn(ptr, pwcsName, pctime, patime, pmtime),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Assigns the specified class identifier (CLSID) to this storage object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istorage-setclass>.
  @pragma('vm:prefer-inline')
  void setClass(Pointer<GUID> clsid) {
    final hr$ = HRESULT(_SetClassFn(ptr, clsid));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Stores up to 32 bits of state information in this storage object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istorage-setstatebits>.
  @pragma('vm:prefer-inline')
  void setStateBits(int grfStateBits, int grfMask) {
    final hr$ = HRESULT(_SetStateBitsFn(ptr, grfStateBits, grfMask));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the STATSTG structure for this open storage object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istorage-stat>.
  @pragma('vm:prefer-inline')
  void stat(Pointer<STATSTG> pstatstg, int grfStatFlag) {
    final hr$ = HRESULT(_StatFn(ptr, pstatstg, grfStatFlag));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IStorage(ptr: $ptr)';
}

/// @nodoc
base class IStorageVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pwcsName,
        Uint32 grfMode,
        Uint32 reserved1,
        Uint32 reserved2,
        Pointer<VTablePointer> ppstm,
      )
    >
  >
  CreateStream;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pwcsName,
        Pointer reserved1,
        Uint32 grfMode,
        Uint32 reserved2,
        Pointer<VTablePointer> ppstm,
      )
    >
  >
  OpenStream;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pwcsName,
        Uint32 grfMode,
        Uint32 reserved1,
        Uint32 reserved2,
        Pointer<VTablePointer> ppstg,
      )
    >
  >
  CreateStorage;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pwcsName,
        VTablePointer pstgPriority,
        Uint32 grfMode,
        Pointer<Pointer<Uint16>> snbExclude,
        Uint32 reserved,
        Pointer<VTablePointer> ppstg,
      )
    >
  >
  OpenStorage;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 ciidExclude,
        Pointer<GUID> rgiidExclude,
        Pointer<Pointer<Uint16>> snbExclude,
        VTablePointer pstgDest,
      )
    >
  >
  CopyTo;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pwcsName,
        VTablePointer pstgDest,
        PCWSTR pwcsNewName,
        Uint32 grfFlags,
      )
    >
  >
  MoveElementTo;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 grfCommitFlags)>
  >
  Commit;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Revert;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 reserved1,
        Pointer reserved2,
        Uint32 reserved3,
        Pointer<VTablePointer> ppenum,
      )
    >
  >
  EnumElements;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR pwcsName)>
  >
  DestroyElement;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pwcsOldName,
        PCWSTR pwcsNewName,
      )
    >
  >
  RenameElement;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pwcsName,
        Pointer<FILETIME> pctime,
        Pointer<FILETIME> patime,
        Pointer<FILETIME> pmtime,
      )
    >
  >
  SetElementTimes;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<GUID> clsid)>
  >
  SetClass;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Uint32 grfStateBits, Uint32 grfMask)
    >
  >
  SetStateBits;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<STATSTG> pstatstg,
        Uint32 grfStatFlag,
      )
    >
  >
  Stat;
}

@internal
final class IStorageCompanion extends ComCompanion<IStorage> {
  const IStorageCompanion();

  @pragma('vm:prefer-inline')
  @override
  IStorage Function(VTablePointer) get fromPointer => IStorage.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IStorage;
}
