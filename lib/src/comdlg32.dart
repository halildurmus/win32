// comdlg32.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _comdlg32 = DynamicLibrary.open('comdlg32.dll');
final ChooseColor = _comdlg32
    .lookupFunction<chooseColorNative, chooseColorDart>('ChooseColorW');
final ChooseFont =
    _comdlg32.lookupFunction<chooseFontNative, chooseFontDart>('ChooseFontW');
final FindText =
    _comdlg32.lookupFunction<findTextNative, findTextDart>('FindTextW');
final GetOpenFileName =
    _comdlg32.lookupFunction<getOpenFileNameNative, getOpenFileNameDart>(
        'GetOpenFileNameW');
final GetSaveFileName =
    _comdlg32.lookupFunction<getSaveFileNameNative, getSaveFileNameDart>(
        'GetSaveFileNameW');
final ReplaceText = _comdlg32
    .lookupFunction<replaceTextNative, replaceTextDart>('ReplaceTextW');
