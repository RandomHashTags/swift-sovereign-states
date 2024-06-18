//
//  Macros.swift
//  
//
//  Created by Evan Anderson on 6/18/24.
//

import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxMacros

@main
struct MacrosPlugin : CompilerPlugin {
    let providingMacros:[Macro.Type] = [SubdivisionLevel1.self]
}

public struct SubdivisionLevel1 : DeclarationMacro {
    public static func expansion(of node: some FreestandingMacroExpansionSyntax, in context: some MacroExpansionContext) throws -> [DeclSyntax] {
        return []
    }
}