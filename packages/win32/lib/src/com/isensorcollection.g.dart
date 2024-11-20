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
import 'isensor.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISensorCollection = Guid.fromComponents(
  0x23571e11,
  0xe545,
  0x4dd8,
  Uint8List.fromList(const [0xa3, 0x37, 0xb8, 0x9b, 0xf4, 0x4b, 0x10, 0xdf]),
);

/// Represents a collection of sensors, such as all the sensors connected to a
/// computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nn-sensorsapi-isensorcollection>.
///
/// {@category com}
class ISensorCollection extends IUnknown implements ComInterface {
  /// Creates a new instance of [ISensorCollection] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISensorCollection]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISensorCollection(super.ptr)
    : _vtable = ptr.value.cast<ISensorCollectionVtbl>().ref;

  /// Creates a new instance of [ISensorCollection] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISensorCollection] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISensorCollection.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISensorCollectionVtbl _vtable;
  late final _GetAtFn =
      _vtable.GetAt.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _GetCountFn = _vtable
      .GetCount.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _AddFn =
      _vtable.Add.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _RemoveFn =
      _vtable.Remove.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _RemoveByIDFn = _vtable
      .RemoveByID.asFunction<int Function(VTablePointer, Pointer<GUID>)>();
  late final _ClearFn = _vtable.Clear.asFunction<int Function(VTablePointer)>();

  /// Retrieves the sensor at the specified index in the collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensorcollection-getat>.
  ISensor? getAt(int ulIndex) {
    final ppSensor = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetAtFn(ptr, ulIndex, ppSensor));
    if (hr$.isError) {
      free(ppSensor);
      throw WindowsException(hr$);
    }
    final result$ = ppSensor.value;
    free(ppSensor);
    if (result$.isNull) return null;
    return ISensor(result$);
  }

  /// Retrieves the count of sensors in the collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensorcollection-getcount>.
  int getCount() {
    final pCount = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetCountFn(ptr, pCount));
    if (hr$.isError) {
      free(pCount);
      throw WindowsException(hr$);
    }
    final result$ = pCount.value;
    free(pCount);
    return result$;
  }

  /// Adds a sensor to the collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensorcollection-add>.
  @pragma('vm:prefer-inline')
  void add(ISensor? pSensor) {
    final hr$ = HRESULT(_AddFn(ptr, pSensor?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes a sensor from the collection.
  ///
  /// The sensor is specified by a pointer to the ISensor interface to be
  /// removed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensorcollection-remove>.
  @pragma('vm:prefer-inline')
  void remove(ISensor? pSensor) {
    final hr$ = HRESULT(_RemoveFn(ptr, pSensor?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes a sensor from the collection.
  ///
  /// The sensor to be removed is specified by its ID.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensorcollection-removebyid>.
  @pragma('vm:prefer-inline')
  void removeByID(Pointer<GUID> sensorID) {
    final hr$ = HRESULT(_RemoveByIDFn(ptr, sensorID));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Empties the sensor collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensorcollection-clear>.
  @pragma('vm:prefer-inline')
  void clear() {
    final hr$ = HRESULT(_ClearFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ISensorCollection(ptr: $ptr)';
}

/// @nodoc
base class ISensorCollectionVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 ulIndex,
        Pointer<VTablePointer> ppSensor,
      )
    >
  >
  GetAt;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> pCount)>
  >
  GetCount;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pSensor)>
  >
  Add;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pSensor)>
  >
  Remove;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<GUID> sensorID)>
  >
  RemoveByID;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Clear;
}

@internal
final class ISensorCollectionCompanion extends ComCompanion<ISensorCollection> {
  const ISensorCollectionCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISensorCollection Function(VTablePointer) get fromPointer =>
      ISensorCollection.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISensorCollection;
}
