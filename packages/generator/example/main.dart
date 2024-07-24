import 'package:dart_style/dart_style.dart';
import 'package:generator/generator.dart';
import 'package:winmd/winmd.dart';

void printCallback(
    [String type =
        'Windows.Win32.System.StationsAndDesktops.DESKTOPENUMPROCW']) {
  final typeDef = MetadataStore.getMetadataForType(type);
  if (typeDef != null && typeDef.isDelegate) {
    final callbackProjection = CallbackProjection(typeDef);
    print(callbackProjection.format());
  }
}

void printFunction([String name = 'BroadcastSystemMessageW']) {
  final scopes = MetadataStore.scopeCache.values;
  for (final typeDef in scopes
      .expand((scope) => scope.typeDefs)
      .where((typeDef) => typeDef.name.endsWith('Apis'))) {
    final method = typeDef.findMethod(name);
    if (method != null) {
      final functionProjection = FunctionProjection(method, 'user32');
      print(functionProjection.format());
    }
  }
}

void printStruct(
    [String type = 'Windows.Win32.Graphics.Gdi.BITMAPFILEHEADER']) {
  final typeDef = MetadataStore.getMetadataForType(type);
  if (typeDef != null && typeDef.isStruct) {
    final structProjection = StructProjection(typeDef, lastComponent(type));
    print(structProjection.format());
  }
}

void printComInterface(
    [String type = 'Windows.Win32.UI.Shell.IFileOpenDialog']) {
  final typeDef = MetadataStore.getMetadataForType(type);
  if (typeDef != null && typeDef.isInterface) {
    final interfaceProjection = ComInterfaceProjection(typeDef);
    print(interfaceProjection.format());
  }
}

void printComMethod(String interface, String methodName) {
  final typeDef = MetadataStore.getMetadataForType(interface);
  final method = typeDef?.findMethod(methodName);
  if (method != null) {
    final methodProjection = ComMethodProjection(method, 3);
    print(methodProjection.format());
  }
}

void printComGetProperty(String interface, String propertyName) {
  final typeDef = MetadataStore.getMetadataForType(interface);
  final method = typeDef?.findMethod(propertyName);
  if (method != null) {
    final methodProjection = ComGetPropertyProjection(method, 3);
    print(methodProjection.format());
  }
}

void printComSetProperty(String interface, String propertyName) {
  final typeDef = MetadataStore.getMetadataForType(interface);
  final method = typeDef?.findMethod(propertyName);
  if (method != null) {
    final methodProjection = ComSetPropertyProjection(method, 3);
    print(methodProjection.format());
  }
}

extension on Object {
  String format() => DartFormatter(lineEnding: '\n').format(toString());
}

void main() async {
  await MetadataStore.loadWdkMetadata(version: wdkMetadataVersion);
  await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
  await MetadataStore.loadWinRTMetadata(version: winrtMetadataVersion);
  printStruct();
  MetadataStore.close();
}
