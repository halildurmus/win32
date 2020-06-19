// comdlg32.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _comdlg32 = DynamicLibrary.open('comdlg32.dll');

/// {@category comdlg32}
final ChooseColor = _comdlg32
    .lookupFunction<chooseColorNative, chooseColorDart>('ChooseColorW');

/// {@category comdlg32}
final ChooseFont =
    _comdlg32.lookupFunction<chooseFontNative, chooseFontDart>('ChooseFontW');

/// {@category comdlg32}
final FindText =
    _comdlg32.lookupFunction<findTextNative, findTextDart>('FindTextW');

/// {@category comdlg32}
final GetOpenFileName =
    _comdlg32.lookupFunction<getOpenFileNameNative, getOpenFileNameDart>(
        'GetOpenFileNameW');

/// {@category comdlg32}
final GetSaveFileName =
    _comdlg32.lookupFunction<getSaveFileNameNative, getSaveFileNameDart>(
        'GetSaveFileNameW');

/// {@category comdlg32}
final ReplaceText = _comdlg32
    .lookupFunction<replaceTextNative, replaceTextDart>('ReplaceTextW');
