import 'dart:io';
import 'dart:typed_data';
import 'errors/win_pe_patcher_error.dart';
import 'sub_system.dart';

class WinPePatcher {
  static const START_PE = 256 + 16;
  static const SUBSYSTEM_PE = 88;

  static final IMAGE_SUBSYSTEM_WINDOWS_GUI = [98, 52, 68, 0, 2];
  static final IMAGE_SUBSYSTEM_WINDOWS_CONSOLE = [0, 0, 0, 0, 3];

  String fileName;

  WinPePatcher(this.fileName);

  void change(SubSystem subSystem) {
    final bytesSubSystem = getBytes(subSystem);
    final file = open(fileName);
    file.writeFromSync(bytesSubSystem);
    file.closeSync();
  }

  static List<int> getBytes(SubSystem subSystem) =>
      (subSystem == SubSystem.GUI)
        ? IMAGE_SUBSYSTEM_WINDOWS_GUI
        : IMAGE_SUBSYSTEM_WINDOWS_CONSOLE;

  static RandomAccessFile open(String fileName) {
    final entry = File(fileName);
    verifiPEHeader(entry);
    final file = entry.openSync(mode: FileMode.append);
    file.setPositionSync(START_PE + SUBSYSTEM_PE);
    return file;
  }

  static void verifiPEHeader(File fileEntry) {
    final file = fileEntry.openSync(mode: FileMode.read);
    final Mark_Zbikowski =  Uint8List.fromList([0x4D, 0x5A]);
    final magicNumbers = file.readSync(2);
    if (magicNumbers[0] != Mark_Zbikowski[0] ||
        magicNumbers[1] != Mark_Zbikowski[1] ) {
      throw WinPePatcherVerifyError(fileEntry.path);
    }
    file.close();
  }
}
