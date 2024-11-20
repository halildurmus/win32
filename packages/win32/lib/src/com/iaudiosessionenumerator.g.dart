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
import 'iaudiosessioncontrol.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAudioSessionEnumerator = Guid.fromComponents(
  0xe2f5bb11,
  0x570,
  0x40ca,
  Uint8List.fromList(const [0xac, 0xdd, 0x3a, 0xa0, 0x12, 0x77, 0xde, 0xe8]),
);

/// Enumerates audio sessions on an audio device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nn-audiopolicy-iaudiosessionenumerator>.
///
/// {@category com}
class IAudioSessionEnumerator extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAudioSessionEnumerator] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAudioSessionEnumerator]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAudioSessionEnumerator(super.ptr)
    : _vtable = ptr.value.cast<IAudioSessionEnumeratorVtbl>().ref;

  /// Creates a new instance of [IAudioSessionEnumerator] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAudioSessionEnumerator] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAudioSessionEnumerator.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAudioSessionEnumeratorVtbl _vtable;
  late final _GetCountFn = _vtable
      .GetCount.asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _GetSessionFn =
      _vtable.GetSession.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();

  /// Gets the total number of audio sessions that are open on the audio device.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionenumerator-getcount>.
  int getCount() {
    final sessionCount = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetCountFn(ptr, sessionCount));
    if (hr$.isError) {
      free(sessionCount);
      throw WindowsException(hr$);
    }
    final result$ = sessionCount.value;
    free(sessionCount);
    return result$;
  }

  /// Gets the audio session specified by an audio session number.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/audiopolicy/nf-audiopolicy-iaudiosessionenumerator-getsession>.
  IAudioSessionControl? getSession(int sessionCount) {
    final session = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetSessionFn(ptr, sessionCount, session));
    if (hr$.isError) {
      free(session);
      throw WindowsException(hr$);
    }
    final result$ = session.value;
    free(session);
    if (result$.isNull) return null;
    return IAudioSessionControl(result$);
  }

  @override
  String toString() => 'IAudioSessionEnumerator(ptr: $ptr)';
}

/// @nodoc
base class IAudioSessionEnumeratorVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> sessionCount)
    >
  >
  GetCount;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 sessionCount,
        Pointer<VTablePointer> session,
      )
    >
  >
  GetSession;
}

@internal
final class IAudioSessionEnumeratorCompanion
    extends ComCompanion<IAudioSessionEnumerator> {
  const IAudioSessionEnumeratorCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAudioSessionEnumerator Function(VTablePointer) get fromPointer =>
      IAudioSessionEnumerator.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAudioSessionEnumerator;
}
