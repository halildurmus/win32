// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_local_variable

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';

import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<COMObject>();

  final shelllinkw = IShellLinkW(ptr);
  test('Can instantiate IShellLinkW.GetPath', () {
    expect(shelllinkw.GetPath, isA<Function>());
  });
  test('Can instantiate IShellLinkW.GetIDList', () {
    expect(shelllinkw.GetIDList, isA<Function>());
  });
  test('Can instantiate IShellLinkW.SetIDList', () {
    expect(shelllinkw.SetIDList, isA<Function>());
  });
  test('Can instantiate IShellLinkW.GetDescription', () {
    expect(shelllinkw.GetDescription, isA<Function>());
  });
  test('Can instantiate IShellLinkW.SetDescription', () {
    expect(shelllinkw.SetDescription, isA<Function>());
  });
  test('Can instantiate IShellLinkW.GetWorkingDirectory', () {
    expect(shelllinkw.GetWorkingDirectory, isA<Function>());
  });
  test('Can instantiate IShellLinkW.SetWorkingDirectory', () {
    expect(shelllinkw.SetWorkingDirectory, isA<Function>());
  });
  test('Can instantiate IShellLinkW.GetArguments', () {
    expect(shelllinkw.GetArguments, isA<Function>());
  });
  test('Can instantiate IShellLinkW.SetArguments', () {
    expect(shelllinkw.SetArguments, isA<Function>());
  });
  test('Can instantiate IShellLinkW.GetHotkey', () {
    expect(shelllinkw.GetHotkey, isA<Function>());
  });
  test('Can instantiate IShellLinkW.SetHotkey', () {
    expect(shelllinkw.SetHotkey, isA<Function>());
  });
  test('Can instantiate IShellLinkW.GetShowCmd', () {
    expect(shelllinkw.GetShowCmd, isA<Function>());
  });
  test('Can instantiate IShellLinkW.SetShowCmd', () {
    expect(shelllinkw.SetShowCmd, isA<Function>());
  });
  test('Can instantiate IShellLinkW.GetIconLocation', () {
    expect(shelllinkw.GetIconLocation, isA<Function>());
  });
  test('Can instantiate IShellLinkW.SetIconLocation', () {
    expect(shelllinkw.SetIconLocation, isA<Function>());
  });
  test('Can instantiate IShellLinkW.SetRelativePath', () {
    expect(shelllinkw.SetRelativePath, isA<Function>());
  });
  test('Can instantiate IShellLinkW.Resolve', () {
    expect(shelllinkw.Resolve, isA<Function>());
  });
  test('Can instantiate IShellLinkW.SetPath', () {
    expect(shelllinkw.SetPath, isA<Function>());
  });
  free(ptr);
}
