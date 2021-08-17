import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:path/path.dart' as path;

import 'flutter_api.dart';
import 'memory_liberator.dart';

class Bundle {
  final String assets_path;
  final String icu_data_path;
  final String aot_library_path;
  final dart_entrypoint_argc = 0;
  final dart_entrypoint_argv = '';

  Bundle(this.assets_path, this.icu_data_path, this.aot_library_path);

  factory Bundle.fromSourceDir(String path) => Bundle(
        '$path\\flutter_assets',
        '$path\\icudtl.dat',
        '$path\\app.so',
      );

  MemoryLiberator<Pointer<EngineProperties>> toEngineProperties() {
    return MemoryLiberator(
      allocMemory: () {
        final engineProperties = calloc<EngineProperties>();
        engineProperties.ref
          ..assets_path = assets_path.toNativeUtf16()
          ..icu_data_path = icu_data_path.toNativeUtf16()
          ..aot_library_path = aot_library_path.toNativeUtf16()
          ..dart_entrypoint_argc = dart_entrypoint_argc
          ..dart_entrypoint_argv = calloc<Pointer<Utf8>>()
          ..dart_entrypoint_argv.value = dart_entrypoint_argv.toNativeUtf8();
        return engineProperties;
      },
      free: (pProp) {
        free(pProp.ref.assets_path);
        free(pProp.ref.icu_data_path);
        free(pProp.ref.aot_library_path);
        free(pProp.ref.dart_entrypoint_argv.value);
        free(pProp.ref.dart_entrypoint_argv);
        free(pProp);
      },
    );
  }

  static bool isDirectoryContain(String dir) {
    final assetDir = path.join(dir, 'flutter_assets');

    if (!Directory(assetDir).existsSync()) {
      return false;
    }

    final icudtlDat = path.join(dir, 'icudtl.dat');
    if (!File(icudtlDat).existsSync()) {
      return false;
    }

    final so = path.join(dir, 'app.so');
    if (!File(so).existsSync()) {
      return false;
    }

    return true;
  }
}
