// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal static let accentColor = ColorAsset(name: "AccentColor")
  internal static let launch = ImageAsset(name: "Launch")
  internal static let addWidgets = ImageAsset(name: "add widgets")
  internal static let checkCircle = ImageAsset(name: "check-circle")
  internal static let createShortcuts = ImageAsset(name: "create shortcuts")
  internal static let downloadIcons = ImageAsset(name: "download icons")
  internal static let downloadWallpaper = ImageAsset(name: "download wallpaper")
  internal static let loader = ImageAsset(name: "loader")
  internal static let seeInstruction = ImageAsset(name: "see instruction")
  internal static let selectWidgets = ImageAsset(name: "select widgets")
  internal static let setWallpapers = ImageAsset(name: "set wallpapers")
  internal static let wallpaperLight = ImageAsset(name: "wallpaper-light")
  internal static let battery = ImageAsset(name: "battery")
  internal static let bg = ImageAsset(name: "bg")
  internal static let camera = ImageAsset(name: "camera")
  internal static let choosePhoto = ImageAsset(name: "choose-photo")
  internal static let closeBlue = ImageAsset(name: "close-blue")
  internal static let close = ImageAsset(name: "close")
  internal static let infoPhone = ImageAsset(name: "info-phone")
  internal static let info = ImageAsset(name: "info")
  internal static let jiggleMode = ImageAsset(name: "jiggle mode")
  internal static let makePhotoWidgetBg = ImageAsset(name: "make-photo-widget-bg")
  internal static let makePhotoWidgetIcon = ImageAsset(name: "make-photo-widget-icon")
  internal static let instrMultiple1 = ImageAsset(name: "instr-multiple1")
  internal static let instrMultiple2 = ImageAsset(name: "instr-multiple2")
  internal static let instrMultiple3 = ImageAsset(name: "instr-multiple3")
  internal static let myWidgetsInfo = ImageAsset(name: "my-widgets-info")
  internal static let settingsHeaderIcon = ImageAsset(name: "settings-header-icon")
  internal static let settingsHeaderVector = ImageAsset(name: "settings-header-vector")
  internal static let settingsContactUs = ImageAsset(name: "settings-contact-us")
  internal static let settingsHelp = ImageAsset(name: "settings-help")
  internal static let settingsWidgets = ImageAsset(name: "settings-widgets")
  internal static let settingsWriteReview = ImageAsset(name: "settings-write-review")
  internal static let shortsutsInstr2 = ImageAsset(name: "shortsuts instr 2")
  internal static let shortsutsInstr3 = ImageAsset(name: "shortsuts instr 3")
  internal static let shortsutsInstr4 = ImageAsset(name: "shortsuts instr 4")
  internal static let shortsutsInstr5 = ImageAsset(name: "shortsuts instr 5")
  internal static let shortsutsInstr6 = ImageAsset(name: "shortsuts instr 6")
  internal static let shortsutsInstr7 = ImageAsset(name: "shortsuts instr 7")
  internal static let shortsutsInstr8 = ImageAsset(name: "shortsuts instr 8")
  internal static let sorryImage = ImageAsset(name: "sorry-image")
  internal static let successIcon = ImageAsset(name: "success-icon")
  internal static let tabBarAllWidgets = ImageAsset(name: "tab-bar-all-widgets")
  internal static let tabBarMyWidgets = ImageAsset(name: "tab-bar-my-widgets")
  internal static let tabBarSettings = ImageAsset(name: "tab-bar-settings")
  internal static let tabBarTheme = ImageAsset(name: "tab-bar-theme")
  internal static let themeLightBg = ImageAsset(name: "theme-light-bg")
  internal static let themeLightIconsPreview = ImageAsset(name: "theme-light-icons-preview")
  internal static let themeLightPreviewLarge = ImageAsset(name: "theme-light-preview-large")
  internal static let themeLightPreviewSmall = ImageAsset(name: "theme-light-preview-small")
  internal static let themeLightWallpaperPreview = ImageAsset(name: "theme-light-wallpaper-preview")
  internal static let themeLightWidgetsPreview = ImageAsset(name: "theme-light-widgets-preview")
  internal static let themeNeonBg = ImageAsset(name: "theme-neon-bg")
  internal static let themeNeonIconsPreview = ImageAsset(name: "theme-neon-icons-preview")
  internal static let themeNeonPreviewLarge = ImageAsset(name: "theme-neon-preview-large")
  internal static let themeNeonPreviewSmall = ImageAsset(name: "theme-neon-preview-small")
  internal static let themeNeonWallpaperPreview = ImageAsset(name: "theme-neon-wallpaper-preview")
  internal static let themeNeonWidgetsPreview = ImageAsset(name: "theme-neon-widgets-preview")
  internal static let themeWriteReviewIcon = ImageAsset(name: "theme-write-review-icon")
  internal static let trash = ImageAsset(name: "trash")
  internal static let widgetBgMedium10 = ImageAsset(name: "widget-bg-medium-10")
  internal static let widgetBgMedium11 = ImageAsset(name: "widget-bg-medium-11")
  internal static let widgetBgMedium13 = ImageAsset(name: "widget-bg-medium-13")
  internal static let widgetBgMedium15 = ImageAsset(name: "widget-bg-medium-15")
  internal static let widgetBgMedium16 = ImageAsset(name: "widget-bg-medium-16")
  internal static let widgetBgMedium17 = ImageAsset(name: "widget-bg-medium-17")
  internal static let widgetBgMedium18 = ImageAsset(name: "widget-bg-medium-18")
  internal static let widgetBgMedium19 = ImageAsset(name: "widget-bg-medium-19")
  internal static let widgetBgMedium2 = ImageAsset(name: "widget-bg-medium-2")
  internal static let widgetBgMedium22 = ImageAsset(name: "widget-bg-medium-22")
  internal static let widgetBgMedium25 = ImageAsset(name: "widget-bg-medium-25")
  internal static let widgetBgMedium26 = ImageAsset(name: "widget-bg-medium-26")
  internal static let widgetBgMedium27 = ImageAsset(name: "widget-bg-medium-27")
  internal static let widgetBgMedium28 = ImageAsset(name: "widget-bg-medium-28")
  internal static let widgetBgMedium3 = ImageAsset(name: "widget-bg-medium-3")
  internal static let widgetBgMedium30 = ImageAsset(name: "widget-bg-medium-30")
  internal static let widgetBgMedium31 = ImageAsset(name: "widget-bg-medium-31")
  internal static let widgetBgMedium32 = ImageAsset(name: "widget-bg-medium-32")
  internal static let widgetBgMedium33 = ImageAsset(name: "widget-bg-medium-33")
  internal static let widgetBgMedium35 = ImageAsset(name: "widget-bg-medium-35")
  internal static let widgetBgMedium38 = ImageAsset(name: "widget-bg-medium-38")
  internal static let widgetBgMedium39 = ImageAsset(name: "widget-bg-medium-39")
  internal static let widgetBgMedium40 = ImageAsset(name: "widget-bg-medium-40")
  internal static let widgetBgMedium41 = ImageAsset(name: "widget-bg-medium-41")
  internal static let widgetBgMedium42 = ImageAsset(name: "widget-bg-medium-42")
  internal static let widgetBgMedium6 = ImageAsset(name: "widget-bg-medium-6")
  internal static let widgetBgMedium7 = ImageAsset(name: "widget-bg-medium-7")
  internal static let widgetBgMedium8 = ImageAsset(name: "widget-bg-medium-8")
  internal static let widgetBgSmall10 = ImageAsset(name: "widget-bg-small-10")
  internal static let widgetBgSmall11 = ImageAsset(name: "widget-bg-small-11")
  internal static let widgetBgSmall13 = ImageAsset(name: "widget-bg-small-13")
  internal static let widgetBgSmall15 = ImageAsset(name: "widget-bg-small-15")
  internal static let widgetBgSmall16 = ImageAsset(name: "widget-bg-small-16")
  internal static let widgetBgSmall17 = ImageAsset(name: "widget-bg-small-17")
  internal static let widgetBgSmall18 = ImageAsset(name: "widget-bg-small-18")
  internal static let widgetBgSmall19 = ImageAsset(name: "widget-bg-small-19")
  internal static let widgetBgSmall2 = ImageAsset(name: "widget-bg-small-2")
  internal static let widgetBgSmall22 = ImageAsset(name: "widget-bg-small-22")
  internal static let widgetBgSmall25 = ImageAsset(name: "widget-bg-small-25")
  internal static let widgetBgSmall26 = ImageAsset(name: "widget-bg-small-26")
  internal static let widgetBgSmall27 = ImageAsset(name: "widget-bg-small-27")
  internal static let widgetBgSmall28 = ImageAsset(name: "widget-bg-small-28")
  internal static let widgetBgSmall3 = ImageAsset(name: "widget-bg-small-3")
  internal static let widgetBgSmall30 = ImageAsset(name: "widget-bg-small-30")
  internal static let widgetBgSmall31 = ImageAsset(name: "widget-bg-small-31")
  internal static let widgetBgSmall32 = ImageAsset(name: "widget-bg-small-32")
  internal static let widgetBgSmall33 = ImageAsset(name: "widget-bg-small-33")
  internal static let widgetBgSmall35 = ImageAsset(name: "widget-bg-small-35")
  internal static let widgetBgSmall38 = ImageAsset(name: "widget-bg-small-38")
  internal static let widgetBgSmall39 = ImageAsset(name: "widget-bg-small-39")
  internal static let widgetBgSmall40 = ImageAsset(name: "widget-bg-small-40")
  internal static let widgetBgSmall41 = ImageAsset(name: "widget-bg-small-41")
  internal static let widgetBgSmall42 = ImageAsset(name: "widget-bg-small-42")
  internal static let widgetBgSmall6 = ImageAsset(name: "widget-bg-small-6")
  internal static let widgetBgSmall7 = ImageAsset(name: "widget-bg-small-7")
  internal static let widgetBgSmall8 = ImageAsset(name: "widget-bg-small-8")
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  internal private(set) lazy var color: Color = Color(asset: self)

  fileprivate init(name: String) {
    self.name = name
  }
}

internal extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init!(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  internal var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image named \(name).")
    }
    return result
  }
}

internal extension ImageAsset.Image {
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init!(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
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
