// Retrieves the exported symbols from kernel32

import 'dart:ffi';
import 'dart:io' show exit;

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../inputs/functions.dart';

extension SymbolInfoHelper on Pointer<SYMBOL_INFO> {
  int get virtAddress => ref.Address;
  String get name => cast<Uint8>().elementAt(84).cast<Utf16>().toDartString();
}

final _exportedSymbols = <String, int>{};

int _enumSymbolProc(Pointer<SYMBOL_INFO> pSymInfo, int size, Pointer ctx) {
  if (pSymInfo.ref.Flags & SYMFLAG_EXPORT == SYMFLAG_EXPORT) {
    _exportedSymbols[pSymInfo.name] = pSymInfo.virtAddress;
  }

  return TRUE;
}

Map<String, int> getExports(String module) {
  _exportedSymbols.clear();
  final hProcess = GetCurrentProcess();

  final status = SymInitialize(hProcess, nullptr, FALSE);
  if (status == FALSE) {
    print('SymInitialize failed.');
    exit(1);
  }

  final modulePtr = module.toNativeUtf16();
  final mask = '*'.toNativeUtf16();

  final baseOfDll =
      SymLoadModuleEx(hProcess, 0, modulePtr, nullptr, 0, 0, nullptr, 0);

  if (baseOfDll == 0) {
    print('SymLoadModuleEx failed.');

    SymCleanup(hProcess);
    exit(1);
  }

  if (SymEnumSymbols(
          hProcess,
          baseOfDll,
          mask,
          Pointer.fromFunction<SymEnumSymbolsProc>(_enumSymbolProc, 0),
          nullptr) ==
      FALSE) {
    print('SymEnumSymbols failed.');
  }

  SymCleanup(hProcess);
  free(modulePtr);
  free(mask);

  return _exportedSymbols;
}

void main(List<String> args) {
  final module = args.isNotEmpty ? args.first : 'gdi32.dll';

  final projected = loadFunctionsFromJson();

  final projectedSymbols = projected.entries.map((e) {
    var protoShard = e.value.prototype.first.split(' ')[1];
    if (['WINAPI', 'IMAGEAPI'].contains(protoShard)) {
      protoShard = e.value.prototype.first.split(' ')[2];
    }
    final protoName = protoShard.split('(').first;
    return protoName;
  }).toList()
    ..sort();

  final symbols = getExports('c:\\windows\\system32\\$module');

  var included = 0;
  var missing = 0;

  for (final symbol in symbols.keys.toList()..sort()) {
    if (projectedSymbols.contains(symbol)) {
      included++;
    } else {
      print(symbol);
      missing++;
    }
  }

  print('$included symbols projected.');
  print('$missing symbols missing.');
}
