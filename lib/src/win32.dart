import 'dart:ffi';
import 'typedefs.dart';

// Prototypes of window-related functions, constants and structs in user32.dll

///////////////
// CALLBACKS //
///////////////
typedef WindowProc = Int64 Function(
    Int64 hwnd, Int32 uMsg, Int64 wParam, Int64 lParam);

///////////////
// API CLASS //
///////////////
class Win32 {
  createWindowExDart CreateWindowEx;
  beginPaintDart BeginPaint;
  defWindowProcDart DefWindowProc;
  dispatchMessageDart DispatchMessage;
  drawTextDart DrawText;
  endPaintDart EndPaint;
  fillRectDart FillRect;
  getClientRectDart GetClientRect;
  getLastErrorDart GetLastError;
  getMessageDart GetMessage;
  getModuleHandleDart GetModuleHandle;
  getStockObjectDart GetStockObject;
  loadCursorDart LoadCursor;
  postQuitMessageDart PostQuitMessage;
  registerClassDart RegisterClass;
  showWindowDart ShowWindow;
  translateMessageDart TranslateMessage;
  updateWindowDart UpdateWindow;

  Win32() {
    final user32 = DynamicLibrary.open('user32.dll');
    BeginPaint =
        user32.lookupFunction<beginPaintNative, beginPaintDart>('BeginPaint');
    CreateWindowEx =
        user32.lookupFunction<createWindowExNative, createWindowExDart>(
            'CreateWindowExW');
    DefWindowProc =
        user32.lookupFunction<defWindowProcNative, defWindowProcDart>(
            'DefWindowProcW');
    DispatchMessage =
        user32.lookupFunction<dispatchMessageNative, dispatchMessageDart>(
            'DispatchMessageW');
    DrawText = user32.lookupFunction<drawTextNative, drawTextDart>('DrawTextW');
    EndPaint = user32.lookupFunction<endPaintNative, endPaintDart>('EndPaint');
    FillRect = user32.lookupFunction<fillRectNative, fillRectDart>('FillRect');
    GetClientRect =
        user32.lookupFunction<getClientRectNative, getClientRectDart>(
            'GetClientRect');
    GetMessage =
        user32.lookupFunction<getMessageNative, getMessageDart>('GetMessageW');
    LoadCursor =
        user32.lookupFunction<loadCursorNative, loadCursorDart>('LoadCursorW');
    PostQuitMessage =
        user32.lookupFunction<postQuitMessageNative, postQuitMessageDart>(
            'PostQuitMessage');
    RegisterClass =
        user32.lookupFunction<registerClassNative, registerClassDart>(
            'RegisterClassW');
    ShowWindow =
        user32.lookupFunction<showWindowNative, showWindowDart>('ShowWindow');
    TranslateMessage =
        user32.lookupFunction<translateMessageNative, translateMessageDart>(
            'TranslateMessage');
    UpdateWindow = user32
        .lookupFunction<updateWindowNative, updateWindowDart>('UpdateWindow');

    final kernel32 = DynamicLibrary.open('kernel32.dll');
    GetLastError = kernel32
        .lookupFunction<getLastErrorNative, getLastErrorDart>('GetLastError');
    GetModuleHandle =
        kernel32.lookupFunction<getModuleHandleNative, getModuleHandleDart>(
            'GetModuleHandleW');

    final gdi32 = DynamicLibrary.open('gdi32.dll');
    GetStockObject =
        gdi32.lookupFunction<getStockObjectNative, getStockObjectDart>(
            'GetStockObject');
  }
}
