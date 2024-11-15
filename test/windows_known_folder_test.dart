import 'package:checks/checks.dart';
import 'package:filepicker_windows/filepicker_windows.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  group('WindowsKnownFolder', () {
    test('AdminTools', () {
      check(WindowsKnownFolder.AdminTools.guid).equals(FOLDERID_AdminTools);
    });
    test('CDBurning', () {
      check(WindowsKnownFolder.CDBurning.guid).equals(FOLDERID_CDBurning);
    });
    test('CommonAdminTools', () {
      check(WindowsKnownFolder.CommonAdminTools.guid)
          .equals(FOLDERID_CommonAdminTools);
    });
    test('CommonPrograms', () {
      check(WindowsKnownFolder.CommonPrograms.guid)
          .equals(FOLDERID_CommonPrograms);
    });
    test('CommonStartMenu', () {
      check(WindowsKnownFolder.CommonStartMenu.guid)
          .equals(FOLDERID_CommonStartMenu);
    });
    test('CommonStartup', () {
      check(WindowsKnownFolder.CommonStartup.guid)
          .equals(FOLDERID_CommonStartup);
    });
    test('CommonTemplates', () {
      check(WindowsKnownFolder.CommonTemplates.guid)
          .equals(FOLDERID_CommonTemplates);
    });
    test('ComputerFolder', () {
      check(WindowsKnownFolder.ComputerFolder.guid)
          .equals(FOLDERID_ComputerFolder);
    });
    test('ConnectionsFolder', () {
      check(WindowsKnownFolder.ConnectionsFolder.guid)
          .equals(FOLDERID_ConnectionsFolder);
    });
    test('ControlPanelFolder', () {
      check(WindowsKnownFolder.ControlPanelFolder.guid)
          .equals(FOLDERID_ControlPanelFolder);
    });
    test('Cookies', () {
      check(WindowsKnownFolder.Cookies.guid).equals(FOLDERID_Cookies);
    });
    test('Desktop', () {
      check(WindowsKnownFolder.Desktop.guid).equals(FOLDERID_Desktop);
    });
    test('Documents', () {
      check(WindowsKnownFolder.Documents.guid).equals(FOLDERID_Documents);
    });
    test('Downloads', () {
      check(WindowsKnownFolder.Downloads.guid).equals(FOLDERID_Downloads);
    });
    test('Favorites', () {
      check(WindowsKnownFolder.Favorites.guid).equals(FOLDERID_Favorites);
    });
    test('Fonts', () {
      check(WindowsKnownFolder.Fonts.guid).equals(FOLDERID_Fonts);
    });
    test('History', () {
      check(WindowsKnownFolder.History.guid).equals(FOLDERID_History);
    });
    test('InternetCache', () {
      check(WindowsKnownFolder.InternetCache.guid)
          .equals(FOLDERID_InternetCache);
    });
    test('InternetFolder', () {
      check(WindowsKnownFolder.InternetFolder.guid)
          .equals(FOLDERID_InternetFolder);
    });
    test('LocalAppData', () {
      check(WindowsKnownFolder.LocalAppData.guid).equals(FOLDERID_LocalAppData);
    });
    test('Music', () {
      check(WindowsKnownFolder.Music.guid).equals(FOLDERID_Music);
    });
    test('NetHood', () {
      check(WindowsKnownFolder.NetHood.guid).equals(FOLDERID_NetHood);
    });
    test('NetworkFolder', () {
      check(WindowsKnownFolder.NetworkFolder.guid)
          .equals(FOLDERID_NetworkFolder);
    });
    test('Pictures', () {
      check(WindowsKnownFolder.Pictures.guid).equals(FOLDERID_Pictures);
    });
    test('PrintHood', () {
      check(WindowsKnownFolder.PrintHood.guid).equals(FOLDERID_PrintHood);
    });
    test('PrintersFolder', () {
      check(WindowsKnownFolder.PrintersFolder.guid)
          .equals(FOLDERID_PrintersFolder);
    });
    test('Profile', () {
      check(WindowsKnownFolder.Profile.guid).equals(FOLDERID_Profile);
    });
    test('ProgramData', () {
      check(WindowsKnownFolder.ProgramData.guid).equals(FOLDERID_ProgramData);
    });
    test('ProgramFiles', () {
      check(WindowsKnownFolder.ProgramFiles.guid).equals(FOLDERID_ProgramFiles);
    });
    test('ProgramFilesCommon', () {
      check(WindowsKnownFolder.ProgramFilesCommon.guid)
          .equals(FOLDERID_ProgramFilesCommon);
    });
    test('ProgramFilesCommonX64', () {
      check(WindowsKnownFolder.ProgramFilesCommonX64.guid)
          .equals(FOLDERID_ProgramFilesCommonX64);
    });
    test('ProgramFilesCommonX86', () {
      check(WindowsKnownFolder.ProgramFilesCommonX86.guid)
          .equals(FOLDERID_ProgramFilesCommonX86);
    });
    test('ProgramFilesX64', () {
      check(WindowsKnownFolder.ProgramFilesX64.guid)
          .equals(FOLDERID_ProgramFilesX64);
    });
    test('ProgramFilesX86', () {
      check(WindowsKnownFolder.ProgramFilesX86.guid)
          .equals(FOLDERID_ProgramFilesX86);
    });
    test('Programs', () {
      check(WindowsKnownFolder.Programs.guid).equals(FOLDERID_Programs);
    });
    test('PublicDesktop', () {
      check(WindowsKnownFolder.PublicDesktop.guid)
          .equals(FOLDERID_PublicDesktop);
    });
    test('PublicDocuments', () {
      check(WindowsKnownFolder.PublicDocuments.guid)
          .equals(FOLDERID_PublicDocuments);
    });
    test('PublicMusic', () {
      check(WindowsKnownFolder.PublicMusic.guid).equals(FOLDERID_PublicMusic);
    });
    test('PublicPictures', () {
      check(WindowsKnownFolder.PublicPictures.guid)
          .equals(FOLDERID_PublicPictures);
    });
    test('PublicVideos', () {
      check(WindowsKnownFolder.PublicVideos.guid).equals(FOLDERID_PublicVideos);
    });
    test('Recent', () {
      check(WindowsKnownFolder.Recent.guid).equals(FOLDERID_Recent);
    });
    test('RecycleBinFolder', () {
      check(WindowsKnownFolder.RecycleBinFolder.guid)
          .equals(FOLDERID_RecycleBinFolder);
    });
    test('ResourceDir', () {
      check(WindowsKnownFolder.ResourceDir.guid).equals(FOLDERID_ResourceDir);
    });
    test('RoamingAppData', () {
      check(WindowsKnownFolder.RoamingAppData.guid)
          .equals(FOLDERID_RoamingAppData);
    });
    test('SendTo', () {
      check(WindowsKnownFolder.SendTo.guid).equals(FOLDERID_SendTo);
    });
    test('StartMenu', () {
      check(WindowsKnownFolder.StartMenu.guid).equals(FOLDERID_StartMenu);
    });
    test('Startup', () {
      check(WindowsKnownFolder.Startup.guid).equals(FOLDERID_Startup);
    });
    test('System', () {
      check(WindowsKnownFolder.System.guid).equals(FOLDERID_System);
    });
    test('SystemX86', () {
      check(WindowsKnownFolder.SystemX86.guid).equals(FOLDERID_SystemX86);
    });
    test('Templates', () {
      check(WindowsKnownFolder.Templates.guid).equals(FOLDERID_Templates);
    });
    test('Videos', () {
      check(WindowsKnownFolder.Videos.guid).equals(FOLDERID_Videos);
    });
    test('Windows', () {
      check(WindowsKnownFolder.Windows.guid).equals(FOLDERID_Windows);
    });
  });
}
