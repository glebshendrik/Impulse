// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {

  internal enum AllWidgets {
    /// Colors
    internal static let colors = L10n.tr("Localizable", "all-widgets.colors")
    /// Images
    internal static let images = L10n.tr("Localizable", "all-widgets.images")
    /// Make photo widget
    internal static let makePhotoWidget = L10n.tr("Localizable", "all-widgets.make-photo-widget")
    /// Photos
    internal static let photos = L10n.tr("Localizable", "all-widgets.photos")
    /// All Widgets
    internal static let title = L10n.tr("Localizable", "all-widgets.title")
    internal enum SuccesAlert {
      /// You can install it from your home screen. Use help (?) for detailed instructions.
      internal static let body = L10n.tr("Localizable", "all-widgets.succes-alert.body")
      internal enum Added {
        /// Widget added
        internal static let title = L10n.tr("Localizable", "all-widgets.succes-alert.added.title")
      }
      internal enum Selected {
        /// Widget selected
        internal static let title = L10n.tr("Localizable", "all-widgets.succes-alert.selected.title")
      }
    }
  }

  internal enum Instruction {
    /// How to add widget
    internal static let title = L10n.tr("Localizable", "instruction.title")
  }

  internal enum MakePhotoWidget {
    /// Choose photo
    internal static let choosePhoto = L10n.tr("Localizable", "make-photo-widget.choose-photo")
    /// Save as new widget
    internal static let saveAsNew = L10n.tr("Localizable", "make-photo-widget.save-as-new")
    /// Set widget
    internal static let setWidget = L10n.tr("Localizable", "make-photo-widget.set-widget")
    /// Photo widget
    internal static let title = L10n.tr("Localizable", "make-photo-widget.title")
  }

  internal enum MakeTimeWidget {
    /// Choose photo
    internal static let choosePhoto = L10n.tr("Localizable", "make-time-widget.choose-photo")
    /// Save as new widget
    internal static let saveAsNew = L10n.tr("Localizable", "make-time-widget.save-as-new")
    /// Set widget
    internal static let setWidget = L10n.tr("Localizable", "make-time-widget.set-widget")
    /// Show battery percentage
    internal static let showBattery = L10n.tr("Localizable", "make-time-widget.show-battery")
    /// Text color
    internal static let textColor = L10n.tr("Localizable", "make-time-widget.text-color")
    /// Time widget
    internal static let title = L10n.tr("Localizable", "make-time-widget.title")
  }

  internal enum MyWidgets {
    /// Long press on the widget on your home screen, tap "Edit Widget" to choose which widget to show
    internal static let info = L10n.tr("Localizable", "my-widgets.info")
    /// My Widgets
    internal static let title = L10n.tr("Localizable", "my-widgets.title")
    /// Widget %ld
    internal static func widgetName(_ p1: Int) -> String {
      return L10n.tr("Localizable", "my-widgets.widget-name", p1)
    }
  }

  internal enum Settings {
    /// Contact Us
    internal static let contactUs = L10n.tr("Localizable", "settings.contact-us")
    /// How to add multiple widgets?
    internal static let howToAddMultipleWidgets = L10n.tr("Localizable", "settings.how-to-add-multiple-widgets")
    /// How to add widget?
    internal static let howToAddWidget = L10n.tr("Localizable", "settings.how-to-add-widget")
    /// Settings
    internal static let title = L10n.tr("Localizable", "settings.title")
    /// Rate Us
    internal static let writeReview = L10n.tr("Localizable", "settings.write-review")
    internal enum ContactUs {
      internal enum Error {
        /// Please add an e-mail account to mobile settings or write to:
        internal static let descr = L10n.tr("Localizable", "settings.contact-us.error.descr")
        /// Email not configured
        internal static let title = L10n.tr("Localizable", "settings.contact-us.error.title")
      }
    }
    internal enum Header {
      /// about our App
      internal static let aboutOurApp = L10n.tr("Localizable", "settings.header.about-our-app")
      /// Tell your\n friends
      internal static let body = L10n.tr("Localizable", "settings.header.body")
      /// Share App
      internal static let share = L10n.tr("Localizable", "settings.header.share")
      /// Please
      internal static let title = L10n.tr("Localizable", "settings.header.title")
    }
    internal enum Share {
      /// Check out Widgets GO!
      internal static let message = L10n.tr("Localizable", "settings.share.message")
    }
  }

  internal enum SorryScreen {
    /// You need to reinstall your widgets because of our latest update. We’ve added new features that can’t work without reinstalling.
    internal static let body = L10n.tr("Localizable", "sorry-screen.body")
    /// We’re sorry :’(
    internal static let title = L10n.tr("Localizable", "sorry-screen.title")
  }

  internal enum ThemeInfo {
    /// icons
    internal static let icons = L10n.tr("Localizable", "theme-info.icons")
    /// Install Theme
    internal static let install = L10n.tr("Localizable", "theme-info.install")
    /// wallpapers
    internal static let wallpapers = L10n.tr("Localizable", "theme-info.wallpapers")
    /// widgets
    internal static let widgets = L10n.tr("Localizable", "theme-info.widgets")
  }

  internal enum ThemeInstruction {
    /// How to install theme
    internal static let title = L10n.tr("Localizable", "theme-instruction.title")
    internal enum AddWidget {
      /// Add widgets
      internal static let btn = L10n.tr("Localizable", "theme-instruction.add-widget.btn")
      /// Widgets added
      internal static let btnAdded = L10n.tr("Localizable", "theme-instruction.add-widget.btn-added")
      /// Add widgets from the theme. When added, they will appear on the My Widgets tab.
      internal static let descr = L10n.tr("Localizable", "theme-instruction.add-widget.descr")
      /// Add Widgets
      internal static let title = L10n.tr("Localizable", "theme-instruction.add-widget.title")
    }
    internal enum Download {
      /// Download wallpaper
      internal static let btn = L10n.tr("Localizable", "theme-instruction.download.btn")
      /// Download the wallpaper for this theme. After downloading, the wallpaper will appear in your Camera Roll.
      internal static let descr = L10n.tr("Localizable", "theme-instruction.download.descr")
      /// Downloading
      internal static let downloading = L10n.tr("Localizable", "theme-instruction.download.downloading")
      /// Icons downloaded
      internal static let iconsDownloaded = L10n.tr("Localizable", "theme-instruction.download.icons-downloaded")
      /// Download Wallpapers
      internal static let title = L10n.tr("Localizable", "theme-instruction.download.title")
      /// Wallpapers downloaded
      internal static let wallpaperDownloaded = L10n.tr("Localizable", "theme-instruction.download.wallpaper-downloaded")
    }
    internal enum DownloadIcons {
      /// Download icons
      internal static let btn = L10n.tr("Localizable", "theme-instruction.download-icons.btn")
      /// Download the icons for this theme.
      internal static let descr = L10n.tr("Localizable", "theme-instruction.download-icons.descr")
      /// Download Icons
      internal static let title = L10n.tr("Localizable", "theme-instruction.download-icons.title")
    }
    internal enum SelectWidget {
      /// Add widgets from Widgets GO! to your Home Screen. Select the one you need with the Edit Widget menu.
      internal static let descr = L10n.tr("Localizable", "theme-instruction.select-widget.descr")
      /// Select Widgets
      internal static let title = L10n.tr("Localizable", "theme-instruction.select-widget.title")
    }
    internal enum SetWallpaper {
      /// Go to Settings > Wallpaper and set your downloaded wallpaper.
      internal static let descr = L10n.tr("Localizable", "theme-instruction.set-wallpaper.descr")
      /// Set Wallpapers
      internal static let title = L10n.tr("Localizable", "theme-instruction.set-wallpaper.title")
    }
    internal enum Shortcuts {
      /// See instruction
      internal static let btn = L10n.tr("Localizable", "theme-instruction.shortcuts.btn")
      /// Read a detailed guide on how to replace app icons with the Shortcut app.
      internal static let descr = L10n.tr("Localizable", "theme-instruction.shortcuts.descr")
      /// Create Shortcuts
      internal static let title = L10n.tr("Localizable", "theme-instruction.shortcuts.title")
    }
  }

  internal enum Themes {
    /// Share your feedback! Tell us what themes you want to see
    internal static let tellUs = L10n.tr("Localizable", "themes.tell-us")
    /// Themes
    internal static let title = L10n.tr("Localizable", "themes.title")
    /// Write a review
    internal static let writeReview = L10n.tr("Localizable", "themes.write-review")
  }

  internal enum TlPhotosPicker {
    /// Cancel
    internal static let cancel = L10n.tr("Localizable", "tl-photos-picker.cancel")
    /// Settings
    internal static let settings = L10n.tr("Localizable", "tl-photos-picker.settings")
    internal enum Camera {
      /// Camera access required
      internal static let body = L10n.tr("Localizable", "tl-photos-picker.camera.body")
    }
    internal enum Gallery {
      /// Photo gallery access required to select photos
      internal static let body = L10n.tr("Localizable", "tl-photos-picker.gallery.body")
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
