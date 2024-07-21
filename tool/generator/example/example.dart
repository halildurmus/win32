import 'package:generator/generator.dart';
import 'package:winmd/winmd.dart';

void printStruct(Scope scope) {
  final struct = scope
      .findTypeDef('Windows.Win32.NetworkManagement.Dhcp.DHCP_ALL_OPTIONS');
  if (struct != null) {
    final structProjection = StructProjection(struct, 'DHCP_ALL_OPTIONS');
    print(structProjection);
  }
}

void printFunction(Scope scope) {
  final typeDef =
      scope.findTypeDef('Windows.Win32.System.StationsAndDesktops.Apis');
  final method = typeDef?.findMethod('BroadcastSystemMessageW');

  if (method != null) {
    final functionProjection = FunctionProjection(method, 'user32');
    print(functionProjection);
  }
}

void printCallback(Scope scope) {
  final callback = scope
      .findTypeDef('Windows.Win32.System.StationsAndDesktops.DESKTOPENUMPROCW');

  if (callback != null) {
    final callbackProjection = CallbackProjection(callback);
    print(callbackProjection);
  }
}

void printComMethod(Scope scope) {
  final interface =
      scope.findTypeDef('Windows.Win32.UI.Shell.IDesktopWallpaper');
  final method = interface?.findMethod('SetWallpaper');

  if (method != null) {
    final methodProjection = ComMethodProjection(method, 3);
    print(methodProjection);
  }
}

void printComGetProperty(Scope scope) {
  final interface = scope.findTypeDef(
      'Windows.Win32.Security.Cryptography.Certificates.ICEnroll4');
  final method = interface?.findMethod('get_IncludeSubjectKeyID');

  if (method != null) {
    final methodProjection = ComGetPropertyProjection(method, 122);
    print(methodProjection);
  }
}

void printComSetProperty(Scope scope) {
  final interface = scope.findTypeDef(
      'Windows.Win32.Networking.ActiveDirectory.IADsPropertyEntry');
  final method = interface?.findMethod('put_Name');

  if (method != null) {
    final methodProjection = ComSetPropertyProjection(method, 11);
    print(methodProjection);
  }
}

void printComInterface(Scope scope) {
  final interface =
      scope.findTypeDef('Windows.Win32.Media.DirectShow.ITuningSpace');

  if (interface != null) {
    final interfaceProjection = ComInterfaceProjection(interface);
    print(interfaceProjection);
  }
}

void printComClass(Scope scope) {
  final comClass = scope.findTypeDef('Windows.Win32.UI.Shell.IFileOpenDialog');

  if (comClass != null) {
    final classProjection = ComClassProjection.fromInterface(comClass);
    print(classProjection);
  }
}

void main() async {
  final scope =
      await MetadataStore.loadWin32Metadata(version: win32MetadataVersion);
  printStruct(scope);
  MetadataStore.close();
}
