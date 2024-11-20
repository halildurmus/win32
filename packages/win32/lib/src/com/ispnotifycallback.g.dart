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
import 'iunknown.g.dart';

/// {@category com}
class ISpNotifyCallback {
  /// Creates a new instance of [ISpNotifyCallback] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpNotifyCallback]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ISpNotifyCallback(this.ptr)
    : assert(ptr != nullptr, "Pointer must not be 'nullptr'."),
      _vtable = ptr.value.cast<ISpNotifyCallbackVtbl>().ref;

  final VTablePointer ptr;
  final ISpNotifyCallbackVtbl _vtable;
  late final _NotifyCallbackFn = _vtable
      .NotifyCallback.asFunction<int Function(VTablePointer, int, int)>();

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void notifyCallback(int wParam, int lParam) {
    final hr$ = HRESULT(_NotifyCallbackFn(ptr, wParam, lParam));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ISpNotifyCallback(ptr: $ptr)';
}

/// @nodoc
base class ISpNotifyCallbackVtbl extends Struct {
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, WPARAM wParam, LPARAM lParam)
    >
  >
  NotifyCallback;
}
