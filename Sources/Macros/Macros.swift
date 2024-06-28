//
//  Macros.swift
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
    let providingMacros:[Macro.Type] = [SubdivisionLevel1.self, SubdivisionCases.self]
}

struct SubdivisionLevel1 : MemberMacro {
    static func expansion(of node: AttributeSyntax, providingMembersOf declaration: some DeclGroupSyntax, in context: some MacroExpansionContext) throws -> [DeclSyntax] {
        guard declaration.is(StructDeclSyntax.self) else {
            context.diagnose(Diagnostic(node: node, message: ErrorDiagnostic.notAStruct))
            return []
        }
        guard let arguments = node.arguments else {
            context.diagnose(Diagnostic(node: node, message: ErrorDiagnostic(id: "noArguments", message: "no arguments")))
            return []
        }
        let token = arguments.firstToken(viewMode: .sourceAccurate)!.nextToken(viewMode: .sourceAccurate)!.nextToken(viewMode: .sourceAccurate)!
        guard let region_token = token.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate) else {
            context.diagnose(Diagnostic(node: node, message: ErrorDiagnostic(id: "missingRegion", message: "missing `region` parameter")))
            return []
        }
        guard let all_same_type_token = region_token.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate) else {
            context.diagnose(Diagnostic(node: node, message: ErrorDiagnostic(id: "missingAllSameType", message: "missing `allSameType` parameter")))
            return []
        }
        let all_same_type:Bool = all_same_type_token.text.elementsEqual("true")
        guard let type_token = all_same_type_token.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate) else {
            context.diagnose(Diagnostic(node: node, message: ErrorDiagnostic(id: "missingType", message: "missing `type` parameter")))
            return []
        }
        var values:[DeclSyntax] = [
            "public var region : Locale.Region { Locale.Region.\(raw: region_token.text) }",
            "public let identifier:String",
            "public init(_ identifier: String) { self.identifier = identifier }",
        ]
        if all_same_type {
            values.append("public var type : Locale.Region.SubdivisionType { Locale.Region.SubdivisionType.\(raw: type_token.text) }")
        }
        return values
    }
}

/*
extension SubdivisionLevel1 : ExtensionMacro {
    static func expansion(of node: AttributeSyntax, attachedTo declaration: some DeclGroupSyntax, providingExtensionsOf type: some TypeSyntaxProtocol, conformingTo protocols: [TypeSyntax], in context: some MacroExpansionContext) throws -> [ExtensionDeclSyntax] {
        return try [ExtensionDeclSyntax.init(.init(stringLiteral: "Locale.Region.Subdivision.Level1Protocol"))]
    }
}*/

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

// MARK: SubdivisionLevel2
struct SubdivisionLevel2 : MemberMacro {
    static func expansion(of node: AttributeSyntax, providingMembersOf declaration: some DeclGroupSyntax, in context: some MacroExpansionContext) throws -> [DeclSyntax] {
        guard declaration.is(StructDeclSyntax.self) else {
            context.diagnose(Diagnostic(node: node, message: ErrorDiagnostic.notAStruct))
            return []
        }
        guard let arguments = node.arguments else {
            context.diagnose(Diagnostic(node: node, message: ErrorDiagnostic(id: "noArguments", message: "no arguments")))
            return []
        }
        let token = arguments.firstToken(viewMode: .sourceAccurate)!.nextToken(viewMode: .sourceAccurate)!.nextToken(viewMode: .sourceAccurate)!
        guard let region_token = token.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate) else {
            context.diagnose(Diagnostic(node: node, message: ErrorDiagnostic(id: "missingRegion", message: "missing `region` parameter")))
            return []
        }
        guard let all_same_type_token = region_token.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate) else {
            context.diagnose(Diagnostic(node: node, message: ErrorDiagnostic(id: "missingAllSameType", message: "missing `allSameType` parameter")))
            return []
        }
        let all_same_type:Bool = all_same_type_token.text.elementsEqual("true")
        guard let type_token = all_same_type_token.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate)?.nextToken(viewMode: .sourceAccurate) else {
            context.diagnose(Diagnostic(node: node, message: ErrorDiagnostic(id: "missingType", message: "missing `type` parameter")))
            return []
        }
        var values:[DeclSyntax] = [
            "public var region : Locale.Region { Locale.Region.\(raw: region_token.text) }",
            "public let identifier:String",
            "public init(_ identifier: String) { self.identifier = identifier }",
        ]
        if all_same_type {
            values.append("public var type : Locale.Region.SubdivisionType { Locale.Region.SubdivisionType.\(raw: type_token.text) }")
        }
        return values
    }
}

// MARK: ErrorDiagnostic
struct ErrorDiagnostic : DiagnosticMessage {
    let message:String
    let diagnosticID:MessageID
    let severity:DiagnosticSeverity = DiagnosticSeverity.error

    init(id: String, message: String) {
        self.message = message
        self.diagnosticID = MessageID(domain: "Macros", id: id)
    }

    static let notAStruct:ErrorDiagnostic = ErrorDiagnostic(id: "notAStruct", message: "Can only be applied to a 'struct'")
    static let notAnExtension:ErrorDiagnostic = ErrorDiagnostic(id: "notAnExtension", message: "Can only be applied to an 'extension'")
}
