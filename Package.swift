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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250429/TensorFlowLiteC.xcframework.zip", checksum: "ccb9ffb53a786bc071fb6f301578bfd8148980e4df78607edd491d70165c70cc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250429/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0fd41af834338a14f3777b27d8738f4a2456590a5c00deb5e0297c92efc23a60"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250429/TensorFlowLiteCMetal.xcframework.zip", checksum: "84a707be60fa73637925ab26d761ab56043e001e24d7d30211bd996480dfc24c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
