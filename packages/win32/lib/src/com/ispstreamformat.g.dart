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
import 'interface.g.dart';
import 'istream.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpStreamFormat = Guid.fromComponents(
  0xbed530be,
  0x2606,
  0x4f4d,
  Uint8List.fromList(const [0xa1, 0xc0, 0x54, 0xc5, 0xcd, 0xa5, 0x56, 0x6f]),
);

/// {@category com}
class ISpStreamFormat extends IStream implements ComInterface {
  /// Creates a new instance of [ISpStreamFormat] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpStreamFormat]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpStreamFormat(super.ptr)
    : _vtable = ptr.value.cast<ISpStreamFormatVtbl>().ref;

  /// Creates a new instance of [ISpStreamFormat] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpStreamFormat] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpStreamFormat.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISpStreamFormatVtbl _vtable;
  late final _GetFormatFn =
      _vtable.GetFormat.asFunction<
        int Function(
          VTablePointer,
          Pointer<GUID>,
          Pointer<Pointer<WAVEFORMATEX>>,
        )
      >();

  /// Throws a [WindowsException] on failure.
  Pointer<WAVEFORMATEX> getFormat(Pointer<GUID> pguidFormatId) {
    final ppCoMemWaveFormatEx = loggingCalloc<Pointer<WAVEFORMATEX>>();
    final hr$ = HRESULT(_GetFormatFn(ptr, pguidFormatId, ppCoMemWaveFormatEx));
    if (hr$.isError) {
      free(ppCoMemWaveFormatEx);
      throw WindowsException(hr$);
    }
    final result$ = ppCoMemWaveFormatEx.value;
    free(ppCoMemWaveFormatEx);
    return result$;
  }

  @override
  String toString() => 'ISpStreamFormat(ptr: $ptr)';
}

/// @nodoc
base class ISpStreamFormatVtbl extends Struct {
  external IStreamVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> pguidFormatId,
        Pointer<Pointer<WAVEFORMATEX>> ppCoMemWaveFormatEx,
      )
    >
  >
  GetFormat;
}

@internal
final class ISpStreamFormatCompanion extends ComCompanion<ISpStreamFormat> {
  const ISpStreamFormatCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpStreamFormat Function(VTablePointer) get fromPointer =>
      ISpStreamFormat.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpStreamFormat;
}
