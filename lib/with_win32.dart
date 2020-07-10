// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'win32.dart' as win32;

export 'win32.dart'
    hide
        CreateWindowEx,
        DispatchMessage,
        DrawText,
        GetClientRect,
        GetMessage,
        RegisterClass,
        TranslateMessage;

T withMSG<T>(T Function(win32.MSG) func) {
  final msg = win32.MSG.allocate();
  T t;
  try {
    t = func(msg);
  } finally {
    free(msg.addressOf);
  }
  return t;
}

T withPAINTSTRUCT<T>(T Function(win32.PAINTSTRUCT) func) {
  final ps = win32.PAINTSTRUCT.allocate();
  T t;
  try {
    t = func(ps);
  } finally {
    free(ps.addressOf);
  }
  return t;
}

T withRECT<T>(T Function(win32.RECT) func) {
  final rect = win32.RECT.allocate();
  T t;
  try {
    t = func(rect);
  } finally {
    free(rect.addressOf);
  }
  return t;
}

T withTEXT<T>(String text, T Function(Pointer<Utf16>) func) {
  final utf16Text = win32.TEXT(text);
  T t;
  try {
    t = func(utf16Text);
  } finally {
    free(utf16Text);
  }
  return t;
}

T withWNDCLASS<T>(T Function(win32.WNDCLASS) func) {
  final wc = win32.WNDCLASS.allocate();
  T t;
  try {
    t = func(wc);
  } finally {
    free(wc.addressOf);
  }
  return t;
}

T BeginPaint<T>(int hWnd, T Function(int hdc) func) => withPAINTSTRUCT((ps) {
      final hdc = win32.BeginPaint(hWnd, ps.addressOf);
      T t;
      try {
        t = func(hdc);
      } finally {
        win32.EndPaint(hWnd, ps.addressOf);
      }
      return t;
    });

int CreateWindowEx(
        int dwExStyle,
        String className,
        String windowName,
        int dwStyle,
        int X,
        int Y,
        int nWidth,
        int nHeight,
        int hWndParent,
        int hMenu,
        int hInstance,
        Pointer<Void> lpParam) =>
    withTEXT(
      className,
      (className) => withTEXT(
        windowName,
        (windowName) {
          var hWnd = win32.CreateWindowEx(
            dwExStyle,
            className,
            windowName,
            dwStyle,
            X,
            Y,
            nWidth,
            nHeight,
            hWndParent,
            hMenu,
            hInstance,
            lpParam,
          );

          if (hWnd == 0) {
            final error = win32.GetLastError();
            throw win32.WindowsException(win32.HRESULT_FROM_WIN32(error));
          }

          return hWnd;
        },
      ),
    );

int DispatchMessage(win32.MSG msg) => win32.DispatchMessage(msg.addressOf);

int DrawText(int hdc, String text, int cchText, win32.RECT rect, int format) =>
    withTEXT(
        text,
        (utf16text) =>
            win32.DrawText(hdc, utf16text, cchText, rect.addressOf, format));

T GetClientRect<T>(int hWnd, T Function(win32.RECT rect) func) =>
    withRECT((rect) {
      var result = win32.GetClientRect(hWnd, rect.addressOf);
      if (result != 0) {
        return func(rect);
      } else {
        final error = win32.GetLastError();
        throw win32.WindowsException(win32.HRESULT_FROM_WIN32(error));
      }
    });

int GetMessage(win32.MSG msg, int hWnd, int wMsgFilterMin, int wMsgFilterMax) =>
    win32.GetMessage(msg.addressOf, hWnd, wMsgFilterMax, wMsgFilterMax);

int RegisterClass(void Function(win32.WNDCLASS wc) func) => withWNDCLASS((wc) {
      func(wc);
      return win32.RegisterClass(wc.addressOf);
    });

int TranslateMessage(win32.MSG msg) => win32.TranslateMessage(msg.addressOf);
