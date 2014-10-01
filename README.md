[![Build Status](http://jenkins.cxl.epac.to/job/ArchLinux_Build_Package/badge/icon)](https://jenkins.cxl.epac.to/job/ArchLinux_Build_Package/)

Unity-for-Arch-Extra
====================
This project is a port of various packages that complete the Unity experience: themes, icons, 3rd party programs, etc.

Installation from binary repositories
-------------------------------------
The packages in this repo are automatically built by my Jenkins server whenever a commit is made. To use these packages, just add the following to `/etc/pacman.conf`:

    [Unity-for-Arch]
    SigLevel = Optional TrustAll
    Server = http://dl.dropbox.com/u/486665/Repos/$repo/$arch

    [Unity-for-Arch-Extra]
    SigLevel = Optional TrustAll
    Server = http://dl.dropbox.com/u/486665/Repos/$repo/$arch

Compiling from source
---------------------

### Themes, icons, etc.

| Package                          | Description                                |
| -------------------------------- | ------------------------------------------ |
| humanity-icon-theme              | Icons used in Ubuntu &lt; 10.04            |
| ubuntu-themes                    | Ubuntu icons and Ambiance and Radiance     |
| ubuntu-wallpapers                | Wallpapers from Ubuntu 9.10 - 14.04        |
| ubuntu-sounds                    | Sound theme from Ubuntu <= 12.04           |
| ubuntu-default-settings          | What the package name says ;)              |

### Applications

| Package                          | Description                                |
| -------------------------------- | ------------------------------------------ |
| accountsservice-ubuntu           | Daemon to query user account information   |
| messagingmenu-extension          | Messaging indicator extension for Moz. TB  |
| liferea-indicator                | Liferea with indicator support             |
| pidgin-libnotify-ubuntu          | Pidgin notification plugin                 |
| plasma-widget-menubar            | KDE Plasma widget to display menu bar      |
| xfce4-indicator-plugin           | XFCE panel plugin to display indicators    |
| indicator-cpufreq                | CPU frequency indicator                    |
| empathy-ubuntu                   | Instant messaging client                   |
| telepathy-indicator              | Telepathy integration with the msg menu    |
| unity-tweak-tool                 | Tool to configure the Unity desktop        |

### LightDM remote session

| Package                          | Description                                |
| -------------------------------- | ------------------------------------------ |
| thin-client-config-agent         | Retrieve list of remote servers for a user |
| remote-login-service             | Service to track the remote servers to use |
| lightdm-remote-session-uccsconfigure | Session to configure UCCS              |
| libpam-freerdp                   | PAM module to auth. against an RDP server  |
| lightdm-remote-session-freerdp   | Session to login with FreeRDP              |

### Everpad

| Package                          | Description                                |
| -------------------------------- | ------------------------------------------ |
| python2-oauth2                   | Python 2 library for OAuth 1.0             |
| python2-magic                    | Python 2 bindings for file                 |
| python-regex                     | Alternative Python regex module            |
| everpad                          | Evernote client with Unity integration     |

### Remindor

| Package                          | Description                                |
| -------------------------------- | ------------------------------------------ |
| remindor-common                  | Common files for UI frontends              |
| remindor-qt                      | Qt 4 frontend for remindor                 |
| indicator-remindor               | Indicator for remindor                     |

Troubleshooting
---------------

* The LightDM Unity Greeter does not show the user's wallpaper.

    This is because the regular accountsservice package does not care about
    the wallpaper being changed. This action is only logged by accountsservice-
    ubuntu, so just change the wallpaper to something else and then back.
