//
//  Resolve Symlink.swift
//  Cork
//
//  Created by David Bureš on 12.09.2023.
//

import Foundation

/// Takes in URL of a symlink and returns where it's pointing to
func resolveSymlink(at url: URL) -> URL
{
    return url.resolvingSymlinksInPath()
}
