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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241219/TensorFlowLiteC.xcframework.zip", checksum: "f186d961c313e1ad0e7d9e316a4ba7fb9bb23398e08036fc3d3f69a0e193ac5d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241219/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ee6438f59142c8a2655d567d587b24189a2f0b62c7212855a170c6080f2f248c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241219/TensorFlowLiteCMetal.xcframework.zip", checksum: "cb961bb708a8b532bce67a504b17ea9cc5085b6b36c69ca7e3c75dcd5333d181"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
