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
import '../variant.dart';
import 'idispatch.g.dart';
import 'interface.g.dart';
import 'ispeechaudioformat.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpeechBaseStream = Guid.fromComponents(
  0x6450336f,
  0x7d49,
  0x4ced,
  Uint8List.fromList(const [0x80, 0x97, 0x49, 0xd6, 0xde, 0xe3, 0x72, 0x94]),
);

/// Defines properties and methods for manipulating data streams.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/windows/desktop/ms721006(v=vs.85)>.
///
/// {@category com}
class ISpeechBaseStream extends IDispatch implements ComInterface {
  /// Creates a new instance of [ISpeechBaseStream] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpeechBaseStream]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpeechBaseStream(super.ptr)
    : _vtable = ptr.value.cast<ISpeechBaseStreamVtbl>().ref;

  /// Creates a new instance of [ISpeechBaseStream] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpeechBaseStream] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpeechBaseStream.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISpeechBaseStreamVtbl _vtable;
  late final _get_FormatFn = _vtable.get_Format
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _putref_FormatFn = _vtable.putref_Format
      .asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _ReadFn =
      _vtable.Read.asFunction<
        int Function(VTablePointer, Pointer<VARIANT>, int, Pointer<Int32>)
      >();
  late final _WriteFn = _vtable
      .Write.asFunction<int Function(VTablePointer, VARIANT, Pointer<Int32>)>();
  late final _SeekFn =
      _vtable.Seek.asFunction<
        int Function(VTablePointer, VARIANT, int, Pointer<VARIANT>)
      >();

  ISpeechAudioFormat? get format {
    final audioFormat = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_FormatFn(ptr, audioFormat));
    if (hr$.isError) {
      free(audioFormat);
      throw WindowsException(hr$);
    }
    final result$ = audioFormat.value;
    free(audioFormat);
    if (result$.isNull) return null;
    return ISpeechAudioFormat(result$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setFormat(ISpeechAudioFormat? audioFormat) {
    final hr$ = HRESULT(_putref_FormatFn(ptr, audioFormat?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void read(
    Pointer<VARIANT> buffer,
    int numberOfBytes,
    Pointer<Int32> bytesRead,
  ) {
    final hr$ = HRESULT(_ReadFn(ptr, buffer, numberOfBytes, bytesRead));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  int write(VARIANT buffer) {
    final bytesWritten = loggingCalloc<Int32>();
    final hr$ = HRESULT(_WriteFn(ptr, buffer, bytesWritten));
    if (hr$.isError) {
      free(bytesWritten);
      throw WindowsException(hr$);
    }
    final result$ = bytesWritten.value;
    free(bytesWritten);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  Pointer<VARIANT> seek(VARIANT position, SpeechStreamSeekPositionType origin) {
    final newPosition = loggingCalloc<VARIANT>();
    final hr$ = HRESULT(_SeekFn(ptr, position, origin, newPosition));
    if (hr$.isError) {
      free(newPosition);
      throw WindowsException(hr$);
    }
    return newPosition;
  }

  @override
  String toString() => 'ISpeechBaseStream(ptr: $ptr)';
}

/// @nodoc
base class ISpeechBaseStreamVtbl extends Struct {
  external IDispatchVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> audioFormat)
    >
  >
  get_Format;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer audioFormat)
    >
  >
  putref_Format;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VARIANT> buffer,
        Int32 numberOfBytes,
        Pointer<Int32> bytesRead,
      )
    >
  >
  Read;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VARIANT buffer,
        Pointer<Int32> bytesWritten,
      )
    >
  >
  Write;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VARIANT position,
        Uint32 origin,
        Pointer<VARIANT> newPosition,
      )
    >
  >
  Seek;
}

@internal
final class ISpeechBaseStreamCompanion extends ComCompanion<ISpeechBaseStream> {
  const ISpeechBaseStreamCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpeechBaseStream Function(VTablePointer) get fromPointer =>
      ISpeechBaseStream.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpeechBaseStream;
}
