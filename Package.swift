// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GDataXMLDocumentDepPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GDataXMLDocumentDepPackage",
            targets: ["GDataXMLDocumentDepPackage"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "GDataXMLDocumentDepPackage",
            dependencies: ["GDataXMLNode"],
            path: "Sources",
            sources: ["GDataXMLDocumentDepPackage.swift"]
        ),
        .target(
            name: "GDataXMLNode",
            dependencies: [],
            path: "Sources",
            sources: ["GDataXMLNode.m"],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include"),
                .unsafeFlags(["-fno-objc-arc"]) // Use this flag to compile without ARC
            ]
        ),
        .testTarget(
            name: "GDataXMLDocumentDepPackageTests",
            dependencies: ["GDataXMLDocumentDepPackage"]),
    ]
)
