//
//  Outdated Package.swift
//  Cork
//
//  Created by David Bureš on 05.04.2023.
//

import Foundation

struct OutdatedPackage: Identifiable, Hashable
{
    let id: UUID = UUID()

    let packageName: String

    var isMarkedForUpdating: Bool = true
}
