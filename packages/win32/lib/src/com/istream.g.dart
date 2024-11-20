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
import 'isequentialstream.g.dart';
import 'istream.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IStream = Guid.fromComponents(
  0xc,
  0x0,
  0x0,
  Uint8List.fromList(const [0xc0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x46]),
);

/// Lets you read and write data to stream objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/objidl/nn-objidl-istream>.
///
/// {@category com}
class IStream extends ISequentialStream implements ComInterface {
  /// Creates a new instance of [IStream] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IStream] interface. The
  /// [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IStream(super.ptr) : _vtable = ptr.value.cast<IStreamVtbl>().ref;

  /// Creates a new instance of [IStream] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IStream] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IStream.from(IUnknown interface, {bool releaseOriginal = false}) =>
      interface.cast(releaseOriginal: releaseOriginal);

  final IStreamVtbl _vtable;
  late final _SeekFn =
      _vtable.Seek.asFunction<
        int Function(VTablePointer, int, int, Pointer<Uint64>)
      >();
  late final _SetSizeFn =
      _vtable.SetSize.asFunction<int Function(VTablePointer, int)>();
  late final _CopyToFn =
      _vtable.CopyTo.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<Uint64>,
          Pointer<Uint64>,
        )
      >();
  late final _CommitFn =
      _vtable.Commit.asFunction<int Function(VTablePointer, int)>();
  late final _RevertFn =
      _vtable.Revert.asFunction<int Function(VTablePointer)>();
  late final _LockRegionFn = _vtable
      .LockRegion.asFunction<int Function(VTablePointer, int, int, int)>();
  late final _UnlockRegionFn = _vtable
      .UnlockRegion.asFunction<int Function(VTablePointer, int, int, int)>();
  late final _StatFn = _vtable
      .Stat.asFunction<int Function(VTablePointer, Pointer<STATSTG>, int)>();
  late final _CloneFn = _vtable
      .Clone.asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  /// Changes the seek pointer to a new location.
  ///
  /// The new location is relative to either the beginning of the stream, the
  /// end of the stream, or the current seek pointer.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-seek>.
  @pragma('vm:prefer-inline')
  void seek(
    int dlibMove,
    STREAM_SEEK dwOrigin,
    Pointer<Uint64>? plibNewPosition,
  ) {
    final hr$ = HRESULT(
      _SeekFn(ptr, dlibMove, dwOrigin, plibNewPosition ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Changes the size of the stream object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-setsize>.
  @pragma('vm:prefer-inline')
  void setSize(int libNewSize) {
    final hr$ = HRESULT(_SetSizeFn(ptr, libNewSize));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Copies a specified number of bytes from the current seek pointer in the
  /// stream to the current seek pointer in another stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-copyto>.
  @pragma('vm:prefer-inline')
  void copyTo(
    IStream? pstm,
    int cb,
    Pointer<Uint64>? pcbRead,
    Pointer<Uint64>? pcbWritten,
  ) {
    final hr$ = HRESULT(
      _CopyToFn(
        ptr,
        pstm?.ptr ?? nullptr,
        cb,
        pcbRead ?? nullptr,
        pcbWritten ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Ensures that any changes made to a stream object open in transacted mode
  /// are reflected in the parent storage.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-commit>.
  @pragma('vm:prefer-inline')
  void commit(STGC grfCommitFlags) {
    final hr$ = HRESULT(_CommitFn(ptr, grfCommitFlags));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Discards all changes that have been made to a transacted stream since the
  /// last `IStream.commit` call.
  ///
  /// On streams open in direct mode and streams using the COM compound file
  /// implementation of `IStream.revert`, this method has no effect.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-revert>.
  @pragma('vm:prefer-inline')
  void revert() {
    final hr$ = HRESULT(_RevertFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Restricts access to a specified range of bytes in the stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-lockregion>.
  @pragma('vm:prefer-inline')
  void lockRegion(int libOffset, int cb, LOCKTYPE dwLockType) {
    final hr$ = HRESULT(_LockRegionFn(ptr, libOffset, cb, dwLockType));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes the access restriction on a range of bytes previously restricted
  /// with `IStream.lockRegion`.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-unlockregion>.
  @pragma('vm:prefer-inline')
  void unlockRegion(int libOffset, int cb, int dwLockType) {
    final hr$ = HRESULT(_UnlockRegionFn(ptr, libOffset, cb, dwLockType));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the STATSTG structure for this stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-stat>.
  @pragma('vm:prefer-inline')
  void stat(Pointer<STATSTG> pstatstg, STATFLAG grfStatFlag) {
    final hr$ = HRESULT(_StatFn(ptr, pstatstg, grfStatFlag));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a new stream object with its own seek pointer that references the
  /// same bytes as the original stream.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/objidl/nf-objidl-istream-clone>.
  IStream? clone() {
    final ppstm = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CloneFn(ptr, ppstm));
    if (hr$.isError) {
      free(ppstm);
      throw WindowsException(hr$);
    }
    final result$ = ppstm.value;
    free(ppstm);
    if (result$.isNull) return null;
    return IStream(result$);
  }

  @override
  String toString() => 'IStream(ptr: $ptr)';
}

/// @nodoc
base class IStreamVtbl extends Struct {
  external ISequentialStreamVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int64 dlibMove,
        Uint32 dwOrigin,
        Pointer<Uint64> plibNewPosition,
      )
    >
  >
  Seek;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint64 libNewSize)>
  >
  SetSize;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pstm,
        Uint64 cb,
        Pointer<Uint64> pcbRead,
        Pointer<Uint64> pcbWritten,
      )
    >
  >
  CopyTo;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 grfCommitFlags)>
  >
  Commit;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Revert;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint64 libOffset,
        Uint64 cb,
        Uint32 dwLockType,
      )
    >
  >
  LockRegion;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint64 libOffset,
        Uint64 cb,
        Uint32 dwLockType,
      )
    >
  >
  UnlockRegion;
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
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppstm)
    >
  >
  Clone;
}

@internal
final class IStreamCompanion extends ComCompanion<IStream> {
  const IStreamCompanion();

  @pragma('vm:prefer-inline')
  @override
  IStream Function(VTablePointer) get fromPointer => IStream.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IStream;
}
