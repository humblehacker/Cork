//
//  Top Package.swift
//  Cork
//
//  Created by David Bureš on 19.08.2023.
//

import Foundation

struct TopPackage: Hashable, Identifiable
{
    var id: UUID = UUID()

    let packageName: String
    let packageDownloads: Int
}
