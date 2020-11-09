//
//  Theme.swift
//  Impulse
//
//  Created by Gleb Shendrik on 07.10.2020.
//

import UIKit

enum ThemeImages: String {
    case Wallpapers = "Wallpapers"
    case Icons = "Icons"
    case Widgets = "WidgetsImages"
}


struct Theme {
    let title: String
    let backgroundName: String
    let previewLargeName: String
    let previewSmallName: String
    let wallpaperPreviewName: String
    let iconsPreviewName: String
    let widgetsPreviewName: String
    
    var background: UIImage? { return UIImage(named: backgroundName) }
    var previewLarge: UIImage? { return UIImage(named: previewLargeName) }
    var previewSmall: UIImage? { return UIImage(named: previewSmallName) }
    var wallpaperPreview: UIImage? { return UIImage(named: wallpaperPreviewName) }
    var iconsPreview: UIImage? { return UIImage(named: iconsPreviewName) }
    var widgetsPreview: UIImage? { return UIImage(named: widgetsPreviewName) }
    
    
    var iconsCount: Int {
        return getCountArrUrlsImages(for: .Icons)
    }
    
    var wallpapersCount: Int {
        return getCountArrUrlsImages(for: .Wallpapers)
    }
    
    var widgetsCount: Int {
        return getCountArrUrlsImages(for: .Widgets)
    }
    
    init(title: String, backgroundName: String, previewLargeName: String, previewSmallName: String, wallpaperPreviewName: String, iconsPreviewName: String, widgetsPreviewName: String) {
        self.title = title
        self.backgroundName = backgroundName
        self.previewLargeName = previewLargeName
        self.previewSmallName = previewSmallName
        self.wallpaperPreviewName = wallpaperPreviewName
        self.iconsPreviewName = iconsPreviewName
        self.widgetsPreviewName = widgetsPreviewName
    }
    
    private func getCountArrUrlsImages(for item: ThemeImages) -> Int {
        let themeStr = self.title.replacingOccurrences(of: " ", with: "")
        let urls = Bundle.main.urls(forResourcesWithExtension: "png", subdirectory: "\(item.rawValue)/\(themeStr)")!
        return urls.count
    }
    
}
