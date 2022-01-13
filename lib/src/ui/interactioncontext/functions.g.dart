// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../ui/interactioncontext/structs.g.dart';
import '../../ui/input/pointer/structs.g.dart';
import '../../ui/interactioncontext/callbacks.g.dart'; // -----------------------------------------------------------------------

// ninput.dll
// -----------------------------------------------------------------------
final _ninput = DynamicLibrary.open('ninput.dll');

int AddPointerInteractionContext(
  int interactionContext,
  int pointerId,
) =>
    _AddPointerInteractionContext(
      interactionContext,
      pointerId,
    );

late final _AddPointerInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Uint32 pointerId,
),
    int Function(
  int interactionContext,
  int pointerId,
)>('AddPointerInteractionContext');

int BufferPointerPacketsInteractionContext(
  int interactionContext,
  int entriesCount,
  Pointer<POINTER_INFO> pointerInfo,
) =>
    _BufferPointerPacketsInteractionContext(
      interactionContext,
      entriesCount,
      pointerInfo,
    );

late final _BufferPointerPacketsInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Uint32 entriesCount,
  Pointer<POINTER_INFO> pointerInfo,
),
    int Function(
  int interactionContext,
  int entriesCount,
  Pointer<POINTER_INFO> pointerInfo,
)>('BufferPointerPacketsInteractionContext');

int CreateInteractionContext(
  Pointer<IntPtr> interactionContext,
) =>
    _CreateInteractionContext(
      interactionContext,
    );

late final _CreateInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> interactionContext,
),
    int Function(
  Pointer<IntPtr> interactionContext,
)>('CreateInteractionContext');

int DestroyInteractionContext(
  int interactionContext,
) =>
    _DestroyInteractionContext(
      interactionContext,
    );

late final _DestroyInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
),
    int Function(
  int interactionContext,
)>('DestroyInteractionContext');

int GetCrossSlideParameterInteractionContext(
  int interactionContext,
  int threshold,
  Pointer<Float> distance,
) =>
    _GetCrossSlideParameterInteractionContext(
      interactionContext,
      threshold,
      distance,
    );

late final _GetCrossSlideParameterInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Int32 threshold,
  Pointer<Float> distance,
),
    int Function(
  int interactionContext,
  int threshold,
  Pointer<Float> distance,
)>('GetCrossSlideParameterInteractionContext');

int GetHoldParameterInteractionContext(
  int interactionContext,
  int parameter,
  Pointer<Float> value,
) =>
    _GetHoldParameterInteractionContext(
      interactionContext,
      parameter,
      value,
    );

late final _GetHoldParameterInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Int32 parameter,
  Pointer<Float> value,
),
    int Function(
  int interactionContext,
  int parameter,
  Pointer<Float> value,
)>('GetHoldParameterInteractionContext');

int GetInertiaParameterInteractionContext(
  int interactionContext,
  int inertiaParameter,
  Pointer<Float> value,
) =>
    _GetInertiaParameterInteractionContext(
      interactionContext,
      inertiaParameter,
      value,
    );

late final _GetInertiaParameterInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Int32 inertiaParameter,
  Pointer<Float> value,
),
    int Function(
  int interactionContext,
  int inertiaParameter,
  Pointer<Float> value,
)>('GetInertiaParameterInteractionContext');

int GetInteractionConfigurationInteractionContext(
  int interactionContext,
  int configurationCount,
  Pointer<INTERACTION_CONTEXT_CONFIGURATION> configuration,
) =>
    _GetInteractionConfigurationInteractionContext(
      interactionContext,
      configurationCount,
      configuration,
    );

late final _GetInteractionConfigurationInteractionContext =
    _ninput.lookupFunction<
        Int32 Function(
  IntPtr interactionContext,
  Uint32 configurationCount,
  Pointer<INTERACTION_CONTEXT_CONFIGURATION> configuration,
),
        int Function(
  int interactionContext,
  int configurationCount,
  Pointer<INTERACTION_CONTEXT_CONFIGURATION> configuration,
)>('GetInteractionConfigurationInteractionContext');

int GetMouseWheelParameterInteractionContext(
  int interactionContext,
  int parameter,
  Pointer<Float> value,
) =>
    _GetMouseWheelParameterInteractionContext(
      interactionContext,
      parameter,
      value,
    );

late final _GetMouseWheelParameterInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Int32 parameter,
  Pointer<Float> value,
),
    int Function(
  int interactionContext,
  int parameter,
  Pointer<Float> value,
)>('GetMouseWheelParameterInteractionContext');

int GetPropertyInteractionContext(
  int interactionContext,
  int contextProperty,
  Pointer<Uint32> value,
) =>
    _GetPropertyInteractionContext(
      interactionContext,
      contextProperty,
      value,
    );

late final _GetPropertyInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Int32 contextProperty,
  Pointer<Uint32> value,
),
    int Function(
  int interactionContext,
  int contextProperty,
  Pointer<Uint32> value,
)>('GetPropertyInteractionContext');

int GetStateInteractionContext(
  int interactionContext,
  Pointer<POINTER_INFO> pointerInfo,
  Pointer<Int32> state,
) =>
    _GetStateInteractionContext(
      interactionContext,
      pointerInfo,
      state,
    );

late final _GetStateInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Pointer<POINTER_INFO> pointerInfo,
  Pointer<Int32> state,
),
    int Function(
  int interactionContext,
  Pointer<POINTER_INFO> pointerInfo,
  Pointer<Int32> state,
)>('GetStateInteractionContext');

int GetTapParameterInteractionContext(
  int interactionContext,
  int parameter,
  Pointer<Float> value,
) =>
    _GetTapParameterInteractionContext(
      interactionContext,
      parameter,
      value,
    );

late final _GetTapParameterInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Int32 parameter,
  Pointer<Float> value,
),
    int Function(
  int interactionContext,
  int parameter,
  Pointer<Float> value,
)>('GetTapParameterInteractionContext');

int GetTranslationParameterInteractionContext(
  int interactionContext,
  int parameter,
  Pointer<Float> value,
) =>
    _GetTranslationParameterInteractionContext(
      interactionContext,
      parameter,
      value,
    );

late final _GetTranslationParameterInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Int32 parameter,
  Pointer<Float> value,
),
    int Function(
  int interactionContext,
  int parameter,
  Pointer<Float> value,
)>('GetTranslationParameterInteractionContext');

int ProcessBufferedPacketsInteractionContext(
  int interactionContext,
) =>
    _ProcessBufferedPacketsInteractionContext(
      interactionContext,
    );

late final _ProcessBufferedPacketsInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
),
    int Function(
  int interactionContext,
)>('ProcessBufferedPacketsInteractionContext');

int ProcessInertiaInteractionContext(
  int interactionContext,
) =>
    _ProcessInertiaInteractionContext(
      interactionContext,
    );

late final _ProcessInertiaInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
),
    int Function(
  int interactionContext,
)>('ProcessInertiaInteractionContext');

int ProcessPointerFramesInteractionContext(
  int interactionContext,
  int entriesCount,
  int pointerCount,
  Pointer<POINTER_INFO> pointerInfo,
) =>
    _ProcessPointerFramesInteractionContext(
      interactionContext,
      entriesCount,
      pointerCount,
      pointerInfo,
    );

late final _ProcessPointerFramesInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Uint32 entriesCount,
  Uint32 pointerCount,
  Pointer<POINTER_INFO> pointerInfo,
),
    int Function(
  int interactionContext,
  int entriesCount,
  int pointerCount,
  Pointer<POINTER_INFO> pointerInfo,
)>('ProcessPointerFramesInteractionContext');

int RegisterOutputCallbackInteractionContext(
  int interactionContext,
  Pointer<NativeFunction<INTERACTION_CONTEXT_OUTPUT_CALLBACK>> outputCallback,
  Pointer clientData,
) =>
    _RegisterOutputCallbackInteractionContext(
      interactionContext,
      outputCallback,
      clientData,
    );

late final _RegisterOutputCallbackInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Pointer<NativeFunction<INTERACTION_CONTEXT_OUTPUT_CALLBACK>> outputCallback,
  Pointer clientData,
),
    int Function(
  int interactionContext,
  Pointer<NativeFunction<INTERACTION_CONTEXT_OUTPUT_CALLBACK>> outputCallback,
  Pointer clientData,
)>('RegisterOutputCallbackInteractionContext');

int RegisterOutputCallbackInteractionContext2(
  int interactionContext,
  Pointer<NativeFunction<INTERACTION_CONTEXT_OUTPUT_CALLBACK2>> outputCallback,
  Pointer clientData,
) =>
    _RegisterOutputCallbackInteractionContext2(
      interactionContext,
      outputCallback,
      clientData,
    );

late final _RegisterOutputCallbackInteractionContext2 = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Pointer<NativeFunction<INTERACTION_CONTEXT_OUTPUT_CALLBACK2>> outputCallback,
  Pointer clientData,
),
    int Function(
  int interactionContext,
  Pointer<NativeFunction<INTERACTION_CONTEXT_OUTPUT_CALLBACK2>> outputCallback,
  Pointer clientData,
)>('RegisterOutputCallbackInteractionContext2');

int RemovePointerInteractionContext(
  int interactionContext,
  int pointerId,
) =>
    _RemovePointerInteractionContext(
      interactionContext,
      pointerId,
    );

late final _RemovePointerInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Uint32 pointerId,
),
    int Function(
  int interactionContext,
  int pointerId,
)>('RemovePointerInteractionContext');

int ResetInteractionContext(
  int interactionContext,
) =>
    _ResetInteractionContext(
      interactionContext,
    );

late final _ResetInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
),
    int Function(
  int interactionContext,
)>('ResetInteractionContext');

int SetCrossSlideParametersInteractionContext(
  int interactionContext,
  int parameterCount,
  Pointer<CROSS_SLIDE_PARAMETER> crossSlideParameters,
) =>
    _SetCrossSlideParametersInteractionContext(
      interactionContext,
      parameterCount,
      crossSlideParameters,
    );

late final _SetCrossSlideParametersInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Uint32 parameterCount,
  Pointer<CROSS_SLIDE_PARAMETER> crossSlideParameters,
),
    int Function(
  int interactionContext,
  int parameterCount,
  Pointer<CROSS_SLIDE_PARAMETER> crossSlideParameters,
)>('SetCrossSlideParametersInteractionContext');

int SetHoldParameterInteractionContext(
  int interactionContext,
  int parameter,
  double value,
) =>
    _SetHoldParameterInteractionContext(
      interactionContext,
      parameter,
      value,
    );

late final _SetHoldParameterInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Int32 parameter,
  Float value,
),
    int Function(
  int interactionContext,
  int parameter,
  double value,
)>('SetHoldParameterInteractionContext');

int SetInertiaParameterInteractionContext(
  int interactionContext,
  int inertiaParameter,
  double value,
) =>
    _SetInertiaParameterInteractionContext(
      interactionContext,
      inertiaParameter,
      value,
    );

late final _SetInertiaParameterInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Int32 inertiaParameter,
  Float value,
),
    int Function(
  int interactionContext,
  int inertiaParameter,
  double value,
)>('SetInertiaParameterInteractionContext');

int SetInteractionConfigurationInteractionContext(
  int interactionContext,
  int configurationCount,
  Pointer<INTERACTION_CONTEXT_CONFIGURATION> configuration,
) =>
    _SetInteractionConfigurationInteractionContext(
      interactionContext,
      configurationCount,
      configuration,
    );

late final _SetInteractionConfigurationInteractionContext =
    _ninput.lookupFunction<
        Int32 Function(
  IntPtr interactionContext,
  Uint32 configurationCount,
  Pointer<INTERACTION_CONTEXT_CONFIGURATION> configuration,
),
        int Function(
  int interactionContext,
  int configurationCount,
  Pointer<INTERACTION_CONTEXT_CONFIGURATION> configuration,
)>('SetInteractionConfigurationInteractionContext');

int SetMouseWheelParameterInteractionContext(
  int interactionContext,
  int parameter,
  double value,
) =>
    _SetMouseWheelParameterInteractionContext(
      interactionContext,
      parameter,
      value,
    );

late final _SetMouseWheelParameterInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Int32 parameter,
  Float value,
),
    int Function(
  int interactionContext,
  int parameter,
  double value,
)>('SetMouseWheelParameterInteractionContext');

int SetPivotInteractionContext(
  int interactionContext,
  double x,
  double y,
  double radius,
) =>
    _SetPivotInteractionContext(
      interactionContext,
      x,
      y,
      radius,
    );

late final _SetPivotInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Float x,
  Float y,
  Float radius,
),
    int Function(
  int interactionContext,
  double x,
  double y,
  double radius,
)>('SetPivotInteractionContext');

int SetPropertyInteractionContext(
  int interactionContext,
  int contextProperty,
  int value,
) =>
    _SetPropertyInteractionContext(
      interactionContext,
      contextProperty,
      value,
    );

late final _SetPropertyInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Int32 contextProperty,
  Uint32 value,
),
    int Function(
  int interactionContext,
  int contextProperty,
  int value,
)>('SetPropertyInteractionContext');

int SetTapParameterInteractionContext(
  int interactionContext,
  int parameter,
  double value,
) =>
    _SetTapParameterInteractionContext(
      interactionContext,
      parameter,
      value,
    );

late final _SetTapParameterInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Int32 parameter,
  Float value,
),
    int Function(
  int interactionContext,
  int parameter,
  double value,
)>('SetTapParameterInteractionContext');

int SetTranslationParameterInteractionContext(
  int interactionContext,
  int parameter,
  double value,
) =>
    _SetTranslationParameterInteractionContext(
      interactionContext,
      parameter,
      value,
    );

late final _SetTranslationParameterInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
  Int32 parameter,
  Float value,
),
    int Function(
  int interactionContext,
  int parameter,
  double value,
)>('SetTranslationParameterInteractionContext');

int StopInteractionContext(
  int interactionContext,
) =>
    _StopInteractionContext(
      interactionContext,
    );

late final _StopInteractionContext = _ninput.lookupFunction<
    Int32 Function(
  IntPtr interactionContext,
),
    int Function(
  int interactionContext,
)>('StopInteractionContext');
