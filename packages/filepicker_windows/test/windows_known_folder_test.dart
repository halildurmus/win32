import 'package:checks/checks.dart';
import 'package:filepicker_windows/filepicker_windows.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  group('WindowsKnownFolder', () {
    test('AdminTools', () {
      check(WindowsKnownFolder.AdminTools).equals(.new(FOLDERID_AdminTools));
    });
    test('CDBurning', () {
      check(WindowsKnownFolder.CDBurning).equals(.new(FOLDERID_CDBurning));
    });
    test('CommonAdminTools', () {
      check(
        WindowsKnownFolder.CommonAdminTools,
      ).equals(.new(FOLDERID_CommonAdminTools));
    });
    test('CommonPrograms', () {
      check(
        WindowsKnownFolder.CommonPrograms,
      ).equals(.new(FOLDERID_CommonPrograms));
    });
    test('CommonStartMenu', () {
      check(
        WindowsKnownFolder.CommonStartMenu,
      ).equals(.new(FOLDERID_CommonStartMenu));
    });
    test('CommonStartup', () {
      check(
        WindowsKnownFolder.CommonStartup,
      ).equals(.new(FOLDERID_CommonStartup));
    });
    test('CommonTemplates', () {
      check(
        WindowsKnownFolder.CommonTemplates,
      ).equals(.new(FOLDERID_CommonTemplates));
    });
    test('ComputerFolder', () {
      check(
        WindowsKnownFolder.ComputerFolder,
      ).equals(.new(FOLDERID_ComputerFolder));
    });
    test('ConnectionsFolder', () {
      check(
        WindowsKnownFolder.ConnectionsFolder,
      ).equals(.new(FOLDERID_ConnectionsFolder));
    });
    test('ControlPanelFolder', () {
      check(
        WindowsKnownFolder.ControlPanelFolder,
      ).equals(.new(FOLDERID_ControlPanelFolder));
    });
    test('Cookies', () {
      check(WindowsKnownFolder.Cookies).equals(.new(FOLDERID_Cookies));
    });
    test('Desktop', () {
      check(WindowsKnownFolder.Desktop).equals(.new(FOLDERID_Desktop));
    });
    test('Documents', () {
      check(WindowsKnownFolder.Documents).equals(.new(FOLDERID_Documents));
    });
    test('Downloads', () {
      check(WindowsKnownFolder.Downloads).equals(.new(FOLDERID_Downloads));
    });
    test('Favorites', () {
      check(WindowsKnownFolder.Favorites).equals(.new(FOLDERID_Favorites));
    });
    test('Fonts', () {
      check(WindowsKnownFolder.Fonts).equals(.new(FOLDERID_Fonts));
    });
    test('History', () {
      check(WindowsKnownFolder.History).equals(.new(FOLDERID_History));
    });
    test('InternetCache', () {
      check(
        WindowsKnownFolder.InternetCache,
      ).equals(.new(FOLDERID_InternetCache));
    });
    test('InternetFolder', () {
      check(
        WindowsKnownFolder.InternetFolder,
      ).equals(.new(FOLDERID_InternetFolder));
    });
    test('LocalAppData', () {
      check(
        WindowsKnownFolder.LocalAppData,
      ).equals(.new(FOLDERID_LocalAppData));
    });
    test('Music', () {
      check(WindowsKnownFolder.Music).equals(.new(FOLDERID_Music));
    });
    test('NetHood', () {
      check(WindowsKnownFolder.NetHood).equals(.new(FOLDERID_NetHood));
    });
    test('NetworkFolder', () {
      check(
        WindowsKnownFolder.NetworkFolder,
      ).equals(.new(FOLDERID_NetworkFolder));
    });
    test('Pictures', () {
      check(WindowsKnownFolder.Pictures).equals(.new(FOLDERID_Pictures));
    });
    test('PrintHood', () {
      check(WindowsKnownFolder.PrintHood).equals(.new(FOLDERID_PrintHood));
    });
    test('PrintersFolder', () {
      check(
        WindowsKnownFolder.PrintersFolder,
      ).equals(.new(FOLDERID_PrintersFolder));
    });
    test('Profile', () {
      check(WindowsKnownFolder.Profile).equals(.new(FOLDERID_Profile));
    });
    test('ProgramData', () {
      check(WindowsKnownFolder.ProgramData).equals(.new(FOLDERID_ProgramData));
    });
    test('ProgramFiles', () {
      check(
        WindowsKnownFolder.ProgramFiles,
      ).equals(.new(FOLDERID_ProgramFiles));
    });
    test('ProgramFilesCommon', () {
      check(
        WindowsKnownFolder.ProgramFilesCommon,
      ).equals(.new(FOLDERID_ProgramFilesCommon));
    });
    test('ProgramFilesCommonX64', () {
      check(
        WindowsKnownFolder.ProgramFilesCommonX64,
      ).equals(.new(FOLDERID_ProgramFilesCommonX64));
    });
    test('ProgramFilesCommonX86', () {
      check(
        WindowsKnownFolder.ProgramFilesCommonX86,
      ).equals(.new(FOLDERID_ProgramFilesCommonX86));
    });
    test('ProgramFilesX64', () {
      check(
        WindowsKnownFolder.ProgramFilesX64,
      ).equals(.new(FOLDERID_ProgramFilesX64));
    });
    test('ProgramFilesX86', () {
      check(
        WindowsKnownFolder.ProgramFilesX86,
      ).equals(.new(FOLDERID_ProgramFilesX86));
    });
    test('Programs', () {
      check(WindowsKnownFolder.Programs).equals(.new(FOLDERID_Programs));
    });
    test('PublicDesktop', () {
      check(
        WindowsKnownFolder.PublicDesktop,
      ).equals(.new(FOLDERID_PublicDesktop));
    });
    test('PublicDocuments', () {
      check(
        WindowsKnownFolder.PublicDocuments,
      ).equals(.new(FOLDERID_PublicDocuments));
    });
    test('PublicMusic', () {
      check(WindowsKnownFolder.PublicMusic).equals(.new(FOLDERID_PublicMusic));
    });
    test('PublicPictures', () {
      check(
        WindowsKnownFolder.PublicPictures,
      ).equals(.new(FOLDERID_PublicPictures));
    });
    test('PublicVideos', () {
      check(
        WindowsKnownFolder.PublicVideos,
      ).equals(.new(FOLDERID_PublicVideos));
    });
    test('Recent', () {
      check(WindowsKnownFolder.Recent).equals(.new(FOLDERID_Recent));
    });
    test('RecycleBinFolder', () {
      check(
        WindowsKnownFolder.RecycleBinFolder,
      ).equals(.new(FOLDERID_RecycleBinFolder));
    });
    test('ResourceDir', () {
      check(WindowsKnownFolder.ResourceDir).equals(.new(FOLDERID_ResourceDir));
    });
    test('RoamingAppData', () {
      check(
        WindowsKnownFolder.RoamingAppData,
      ).equals(.new(FOLDERID_RoamingAppData));
    });
    test('SendTo', () {
      check(WindowsKnownFolder.SendTo).equals(.new(FOLDERID_SendTo));
    });
    test('StartMenu', () {
      check(WindowsKnownFolder.StartMenu).equals(.new(FOLDERID_StartMenu));
    });
    test('Startup', () {
      check(WindowsKnownFolder.Startup).equals(.new(FOLDERID_Startup));
    });
    test('System', () {
      check(WindowsKnownFolder.System).equals(.new(FOLDERID_System));
    });
    test('SystemX86', () {
      check(WindowsKnownFolder.SystemX86).equals(.new(FOLDERID_SystemX86));
    });
    test('Templates', () {
      check(WindowsKnownFolder.Templates).equals(.new(FOLDERID_Templates));
    });
    test('Videos', () {
      check(WindowsKnownFolder.Videos).equals(.new(FOLDERID_Videos));
    });
    test('Windows', () {
      check(WindowsKnownFolder.Windows).equals(.new(FOLDERID_Windows));
    });
  });
}
