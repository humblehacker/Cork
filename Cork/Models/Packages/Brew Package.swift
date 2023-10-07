//
//  Brew Package.swift
//  Cork
//
//  Created by David Bureš on 03.07.2022.
//

import Foundation

struct BrewPackage: Identifiable, Equatable, Hashable, Codable
{
    var id = UUID()
    let name: String
    
    let isCask: Bool
    var isTagged: Bool = false
    
    let installedOn: Date?
    let versions: [String]
    
    var installedIntentionally: Bool = true
    
    let sizeInBytes: Int64?
    
    var isBeingModified: Bool = false
    
    mutating func changeTaggedStatus() -> Void
    {
        self.isTagged.toggle()
    }
    
    mutating func changeBeingModifiedStatus() -> Void
    {
        self.isBeingModified.toggle()
    }
}

extension FormatStyle where Self == Date.FormatStyle
{
    static var packageInstallationStyle: Self
    {
        Self.dateTime.day().month(.wide).year().weekday(.wide).hour().minute()
    }
}
