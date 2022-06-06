// ignore_for_file: constant_identifier_names

/// An enum for each of the documented Windows known folders.
enum WindowsKnownFolder {
  /// The file system directory that is used to store administrative tools for
  /// an individual user. The MMC will save customized consoles to this
  /// directory, and it will roam with the user.
  AdminTools,

  /// The file system directory that acts as a staging area for files waiting to
  /// be written to a CD. A typical path is C:\Documents and
  /// Settings\username\Local Settings\Application Data\Microsoft\CD Burning.
  CDBurning,

  /// The file system directory that contains administrative tools for all users
  /// of the computer.
  CommonAdminTools,

  /// The file system directory that contains the directories for the common
  /// program groups that appear on the Start menu for all users. A typical path
  /// is C:\Documents and Settings\All Users\Start Menu\Programs.
  CommonPrograms,

  /// The file system directory that contains the programs and folders that
  /// appear on the Start menu for all users. A typical path is C:\Documents and
  /// Settings\All Users\Start Menu.
  CommonStartMenu,

  /// The file system directory that contains the programs that appear in the
  /// Startup folder for all users. A typical path is C:\Documents and
  /// Settings\All Users\Start Menu\Programs\Startup.
  CommonStartup,

  /// The file system directory that contains the templates that are available
  /// to all users. A typical path is C:\Documents and Settings\All
  /// Users\Templates.
  CommonTemplates,

  /// The virtual folder that represents My Computer, containing everything on
  /// the local computer: storage devices, printers, and Control Panel. The
  /// folder can also contain mapped network drives.
  ComputerFolder,

  /// The virtual folder that represents Network Connections, that contains
  /// network and dial-up connections.
  ConnectionsFolder,

  /// The virtual folder that contains icons for the Control Panel applications.
  ControlPanelFolder,

  /// The file system directory that serves as a common repository for Internet
  /// cookies. A typical path is C:\Documents and Settings\username\Cookies.
  Cookies,

  /// The virtual folder that represents the Windows desktop, the root of the
  /// namespace.
  Desktop,

  /// The virtual folder that represents the My Documents desktop item.
  Documents,

  /// The file system directory that serves as a repository for Internet
  /// downloads.
  Downloads,

  /// The file system directory that serves as a common repository for the
  /// user's favorite items. A typical path is C:\Documents and
  /// Settings\username\Favorites.
  Favorites,

  /// A virtual folder that contains fonts. A typical path is C:\Windows\Fonts.
  Fonts,

  /// The file system directory that serves as a common repository for Internet
  /// history items.
  History,

  /// The file system directory that serves as a common repository for temporary
  /// Internet files. A typical path is C:\Documents and Settings\username\Local
  /// Settings\Temporary Internet Files.
  InternetCache,

  /// A virtual folder for Internet Explorer.
  InternetFolder,

  /// The file system directory that serves as a data repository for local
  /// (nonroaming) applications. A typical path is C:\Documents and
  /// Settings\username\Local Settings\Application Data.
  LocalAppData,

  /// The file system directory that serves as a common repository for music
  /// files. A typical path is C:\Documents and Settings\User\My Documents\My
  /// Music.
  Music,

  /// A file system directory that contains the link objects that may exist in
  /// the My Network Places virtual folder. A typical path is C:\Documents and
  /// Settings\username\NetHood.
  NetHood,

  /// The folder that represents other computers in your workgroup.
  NetworkFolder,

  /// The file system directory that serves as a common repository for image
  /// files. A typical path is C:\Documents and Settings\username\My
  /// Documents\My Pictures.
  Pictures,

  /// The file system directory that contains the link objects that can exist in
  /// the Printers virtual folder. A typical path is C:\Documents and
  /// Settings\username\PrintHood.
  PrintHood,

  /// The virtual folder that contains installed printers.
  PrintersFolder,

  /// The user's profile folder. A typical path is C:\Users\username.
  /// Applications should not create files or folders at this level.
  Profile,

  /// The file system directory that contains application data for all users. A
  /// typical path is C:\Documents and Settings\All Users\Application Data. This
  /// folder is used for application data that is not user specific. For
  /// example, an application can store a spell-check dictionary, a database of
  /// clip art, or a log file in the CSIDL_COMMON_APPDATA folder. This
  /// information will not roam and is available to anyone using the computer.
  ProgramData,

  /// The Program Files folder. A typical path is C:\Program Files.
  ProgramFiles,

  /// The common Program Files folder. A typical path is C:\Program
  /// Files\Common.
  ProgramFilesCommon,

  /// On 64-bit systems, a link to the common Program Files folder. A typical path is
  /// C:\Program Files\Common Files.
  ProgramFilesCommonX64,

  /// On 64-bit systems, a link to the 32-bit common Program Files folder. A
  /// typical path is C:\Program Files (x86)\Common Files. On 32-bit systems, a
  /// link to the Common Program Files folder.
  ProgramFilesCommonX86,

  /// On 64-bit systems, a link to the Program Files folder. A typical path is
  /// C:\Program Files.
  ProgramFilesX64,

  /// On 64-bit systems, a link to the 32-bit Program Files folder. A typical
  /// path is C:\Program Files (x86). On 32-bit systems, a link to the Common
  /// Program Files folder.
  ProgramFilesX86,

  /// The file system directory that contains the user's program groups (which
  /// are themselves file system directories).
  Programs,

  /// The file system directory that contains files and folders that appear on
  /// the desktop for all users. A typical path is C:\Documents and Settings\All
  /// Users\Desktop.
  PublicDesktop,

  /// The file system directory that contains documents that are common to all
  /// users. A typical path is C:\Documents and Settings\All Users\Documents.
  PublicDocuments,

  /// The file system directory that serves as a repository for music files
  /// common to all users. A typical path is C:\Documents and Settings\All
  /// Users\Documents\My Music.
  PublicMusic,

  /// The file system directory that serves as a repository for image files
  /// common to all users. A typical path is C:\Documents and Settings\All
  /// Users\Documents\My Pictures.
  PublicPictures,

  /// The file system directory that serves as a repository for video files
  /// common to all users. A typical path is C:\Documents and Settings\All
  /// Users\Documents\My Videos.
  PublicVideos,

  /// The file system directory that contains shortcuts to the user's most
  /// recently used documents. A typical path is C:\Documents and
  /// Settings\username\My Recent Documents.
  Recent,

  /// The virtual folder that contains the objects in the user's Recycle Bin.
  RecycleBinFolder,

  /// The file system directory that contains resource data. A typical path is
  /// C:\Windows\Resources.
  ResourceDir,

  /// The file system directory that serves as a common repository for
  /// application-specific data. A typical path is C:\Documents and
  /// Settings\username\Application Data.
  RoamingAppData,

  /// The file system directory that contains Send To menu items. A typical path
  /// is C:\Documents and Settings\username\SendTo.
  SendTo,

  /// The file system directory that contains Start menu items. A typical path
  /// is C:\Documents and Settings\username\Start Menu.
  StartMenu,

  /// The file system directory that corresponds to the user's Startup program
  /// group. The system starts these programs whenever the associated user logs
  /// on. A typical path is C:\Documents and Settings\username\Start
  /// Menu\Programs\Startup.
  Startup,

  /// The Windows System folder. A typical path is C:\Windows\System32.
  System,

  /// The 32-bit Windows System folder. On 32-bit systems, this is typically
  /// C:\Windows\system32. On 64-bit systems, this is typically
  /// C:\Windows\syswow64.
  SystemX86,

  /// The file system directory that serves as a common repository for document
  /// templates. A typical path is C:\Documents and Settings\username\Templates.
  Templates,

  /// The file system directory that serves as a common repository for video
  /// files. A typical path is C:\Documents and Settings\username\My
  /// Documents\My Videos.
  Videos,

  /// The Windows directory or SYSROOT. This corresponds to the %windir% or
  /// %SYSTEMROOT% environment variables. A typical path is C:\Windows.
  Windows
}
