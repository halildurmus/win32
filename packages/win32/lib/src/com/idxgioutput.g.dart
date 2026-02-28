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
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'idxgiobject.g.dart';
import 'idxgisurface.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IDXGIOutput = GUID.fromComponents(
  0xae02eedb,
  0xc735,
  0x4690,
  Uint8List.fromList(const [0x8d, 0x52, 0x5a, 0x8d, 0xc2, 0x2, 0x13, 0xaa]),
);

/// Represents an adapter output (such as a monitor).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dxgi/nn-dxgi-idxgioutput>.
///
/// {@category com}
class IDXGIOutput extends IDXGIObject implements ComInterface {
  /// Creates a new instance of [IDXGIOutput] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IDXGIOutput] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  IDXGIOutput(super.ptr) : _vtable = ptr.value.cast<IDXGIOutputVtbl>().ref;

  /// Creates a new instance of [IDXGIOutput] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IDXGIOutput] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IDXGIOutput.from(IUnknown interface) => interface.queryInterface();

  final IDXGIOutputVtbl _vtable;
  late final _GetDescFn =
      _vtable.GetDesc.asFunction<
        int Function(VTablePointer, Pointer<DXGI_OUTPUT_DESC>)
      >();
  late final _GetDisplayModeListFn =
      _vtable.GetDisplayModeList.asFunction<
        int Function(
          VTablePointer,
          int,
          int,
          Pointer<Uint32>,
          Pointer<DXGI_MODE_DESC>,
        )
      >();
  late final _FindClosestMatchingModeFn =
      _vtable.FindClosestMatchingMode.asFunction<
        int Function(
          VTablePointer,
          Pointer<DXGI_MODE_DESC>,
          Pointer<DXGI_MODE_DESC>,
          VTablePointer,
        )
      >();
  late final _WaitForVBlankFn =
      _vtable.WaitForVBlank.asFunction<int Function(VTablePointer)>();
  late final _TakeOwnershipFn =
      _vtable.TakeOwnership.asFunction<
        int Function(VTablePointer, VTablePointer, int)
      >();
  late final _ReleaseOwnershipFn =
      _vtable.ReleaseOwnership.asFunction<void Function(VTablePointer)>();
  late final _GetGammaControlCapabilitiesFn =
      _vtable.GetGammaControlCapabilities.asFunction<
        int Function(VTablePointer, Pointer<DXGI_GAMMA_CONTROL_CAPABILITIES>)
      >();
  late final _SetGammaControlFn =
      _vtable.SetGammaControl.asFunction<
        int Function(VTablePointer, Pointer<DXGI_GAMMA_CONTROL>)
      >();
  late final _GetGammaControlFn =
      _vtable.GetGammaControl.asFunction<
        int Function(VTablePointer, Pointer<DXGI_GAMMA_CONTROL>)
      >();
  late final _SetDisplaySurfaceFn =
      _vtable.SetDisplaySurface.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _GetDisplaySurfaceDataFn =
      _vtable.GetDisplaySurfaceData.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _GetFrameStatisticsFn =
      _vtable.GetFrameStatistics.asFunction<
        int Function(VTablePointer, Pointer<DXGI_FRAME_STATISTICS>)
      >();

  /// Get a description of the output.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgioutput-getdesc>.
  Pointer<DXGI_OUTPUT_DESC> getDesc() {
    final pDesc = adaptiveCalloc<DXGI_OUTPUT_DESC>();
    final hr$ = HRESULT(_GetDescFn(ptr, pDesc));
    if (hr$.isError) {
      free(pDesc);
      throw WindowsException(hr$);
    }
    return pDesc;
  }

  /// Gets the display modes that match the requested format and other input
  /// options.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgioutput-getdisplaymodelist>.
  @pragma('vm:prefer-inline')
  void getDisplayModeList(
    DXGI_FORMAT enumFormat,
    DXGI_ENUM_MODES flags,
    Pointer<Uint32> pNumModes,
    Pointer<DXGI_MODE_DESC>? pDesc,
  ) {
    final hr$ = HRESULT(
      _GetDisplayModeListFn(
        ptr,
        enumFormat,
        flags,
        pNumModes,
        pDesc ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Finds the display mode that most closely matches the requested display
  /// mode.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgioutput-findclosestmatchingmode>.
  @pragma('vm:prefer-inline')
  void findClosestMatchingMode(
    Pointer<DXGI_MODE_DESC> pModeToMatch,
    Pointer<DXGI_MODE_DESC> pClosestMatch,
    IUnknown? pConcernedDevice,
  ) {
    final hr$ = HRESULT(
      _FindClosestMatchingModeFn(
        ptr,
        pModeToMatch,
        pClosestMatch,
        pConcernedDevice?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Halt a thread until the next vertical blank occurs.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgioutput-waitforvblank>.
  @pragma('vm:prefer-inline')
  void waitForVBlank() {
    final hr$ = HRESULT(_WaitForVBlankFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Takes ownership of an output.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgioutput-takeownership>.
  @pragma('vm:prefer-inline')
  void takeOwnership(IUnknown? pDevice, bool exclusive) {
    final hr$ = HRESULT(
      _TakeOwnershipFn(ptr, pDevice?.ptr ?? nullptr, exclusive ? TRUE : FALSE),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Releases ownership of the output.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgioutput-releaseownership>.
  @pragma('vm:prefer-inline')
  void releaseOwnership() => _ReleaseOwnershipFn(ptr);

  /// Gets a description of the gamma-control capabilities.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgioutput-getgammacontrolcapabilities>.
  Pointer<DXGI_GAMMA_CONTROL_CAPABILITIES> getGammaControlCapabilities() {
    final pGammaCaps = adaptiveCalloc<DXGI_GAMMA_CONTROL_CAPABILITIES>();
    final hr$ = HRESULT(_GetGammaControlCapabilitiesFn(ptr, pGammaCaps));
    if (hr$.isError) {
      free(pGammaCaps);
      throw WindowsException(hr$);
    }
    return pGammaCaps;
  }

  /// Sets the gamma controls.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgioutput-setgammacontrol>.
  @pragma('vm:prefer-inline')
  void setGammaControl(Pointer<DXGI_GAMMA_CONTROL> pArray) {
    final hr$ = HRESULT(_SetGammaControlFn(ptr, pArray));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the gamma control settings.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgioutput-getgammacontrol>.
  Pointer<DXGI_GAMMA_CONTROL> getGammaControl() {
    final pArray = adaptiveCalloc<DXGI_GAMMA_CONTROL>();
    final hr$ = HRESULT(_GetGammaControlFn(ptr, pArray));
    if (hr$.isError) {
      free(pArray);
      throw WindowsException(hr$);
    }
    return pArray;
  }

  /// Changes the display mode.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgioutput-setdisplaysurface>.
  @pragma('vm:prefer-inline')
  void setDisplaySurface(IDXGISurface? pScanoutSurface) {
    final hr$ = HRESULT(
      _SetDisplaySurfaceFn(ptr, pScanoutSurface?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets a copy of the current display surface.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgioutput-getdisplaysurfacedata>.
  @pragma('vm:prefer-inline')
  void getDisplaySurfaceData(IDXGISurface? pDestination) {
    final hr$ = HRESULT(
      _GetDisplaySurfaceDataFn(ptr, pDestination?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets statistics about recently rendered frames.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/dxgi/nf-dxgi-idxgioutput-getframestatistics>.
  Pointer<DXGI_FRAME_STATISTICS> getFrameStatistics() {
    final pStats = adaptiveCalloc<DXGI_FRAME_STATISTICS>();
    final hr$ = HRESULT(_GetFrameStatisticsFn(ptr, pStats));
    if (hr$.isError) {
      free(pStats);
      throw WindowsException(hr$);
    }
    return pStats;
  }

  @override
  String toString() => 'IDXGIOutput(ptr: $ptr)';
}

/// @nodoc
base class IDXGIOutputVtbl extends Struct {
  external IDXGIObjectVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<DXGI_OUTPUT_DESC> pDesc)
    >
  >
  GetDesc;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 enumFormat,
        Uint32 flags,
        Pointer<Uint32> pNumModes,
        Pointer<DXGI_MODE_DESC> pDesc,
      )
    >
  >
  GetDisplayModeList;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<DXGI_MODE_DESC> pModeToMatch,
        Pointer<DXGI_MODE_DESC> pClosestMatch,
        VTablePointer pConcernedDevice,
      )
    >
  >
  FindClosestMatchingMode;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  WaitForVBlank;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pDevice,
        Int32 exclusive,
      )
    >
  >
  TakeOwnership;
  external Pointer<NativeFunction<Void Function(VTablePointer this$)>>
  ReleaseOwnership;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<DXGI_GAMMA_CONTROL_CAPABILITIES> pGammaCaps,
      )
    >
  >
  GetGammaControlCapabilities;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<DXGI_GAMMA_CONTROL> pArray)
    >
  >
  SetGammaControl;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<DXGI_GAMMA_CONTROL> pArray)
    >
  >
  GetGammaControl;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer pScanoutSurface)
    >
  >
  SetDisplaySurface;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer pDestination)
    >
  >
  GetDisplaySurfaceData;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<DXGI_FRAME_STATISTICS> pStats)
    >
  >
  GetFrameStatistics;
}

@internal
final class IDXGIOutputCompanion extends ComCompanion<IDXGIOutput> {
  const IDXGIOutputCompanion();

  @pragma('vm:prefer-inline')
  @override
  IDXGIOutput Function(VTablePointer) get fromPointer => IDXGIOutput.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IDXGIOutput;
}
