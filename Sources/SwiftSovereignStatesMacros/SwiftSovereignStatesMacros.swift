//
//  SwiftSovereignStatesMacros.swift
//  
//
//  Created by Evan Anderson on 6/18/24.
//

import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxMacros
import SwiftSyntaxBuilder
import SwiftDiagnostics

@main
struct MacrosPlugin : CompilerPlugin {
    let providingMacros:[Macro.Type] = [SubdivisionCases.self]
}

// MARK: SubdivisionCases
struct SubdivisionCases : MemberMacro {
    static func expansion(of node: AttributeSyntax, providingMembersOf declaration: some DeclGroupSyntax, in context: some MacroExpansionContext) throws -> [DeclSyntax] {
        guard let decl:ExtensionDeclSyntax = declaration.as(ExtensionDeclSyntax.self) else {
            context.diagnose(Diagnostic(node: node, message: ErrorDiagnostic.notAnExtension))
            return []
        }
        let values:[String] = decl.memberBlock.members.compactMap({ $0.decl.as(VariableDeclSyntax.self)?.bindings.first?.pattern.as(IdentifierPatternSyntax.self)?.identifier.text })
        return [
            "static let isoRegions:[Self] = [\(raw: values.map({ "." + $0 }).joined(separator: ","))]"
        ]
    }
}

// MARK: ErrorDiagnostic
public struct ErrorDiagnostic : DiagnosticMessage {
    public let message:String
    public let diagnosticID:MessageID
    public let severity:DiagnosticSeverity = DiagnosticSeverity.error

    public init(id: String, message: String) {
        self.message = message
        self.diagnosticID = MessageID(domain: "SwiftSovereignStatesMacros", id: id)
    }

    public static let notAStruct:ErrorDiagnostic = ErrorDiagnostic(id: "notAStruct", message: "Can only be applied to a 'struct'")
    public static let notAnExtension:ErrorDiagnostic = ErrorDiagnostic(id: "notAnExtension", message: "Can only be applied to an 'extension'")
}
