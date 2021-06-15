// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.5.0/TensorFlowLiteC.xcframework.zip", checksum: "deaffb5d3c437d6642d3780defc377cf6536479f0e408f3e8c337bfe83675798"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.5.0/TensorFlowLiteCCoreML.xcframework.zip", checksum: "124d1e63acbc7e709304864fa9dc8b4a62e7e03d07e2e5351ef4325984425ade"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.5.0/TensorFlowLiteCMetal.xcframework.zip", checksum: "10ccb519f9b1b8eaa340d9d485e3a06e08ff32e1efecb38509e0996695f14dc1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
