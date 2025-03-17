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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250316/TensorFlowLiteC.xcframework.zip", checksum: "154ac469511b4668e6376c63ad74e7f3ac98d22652862a09cccafc0921d928d0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250316/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c52ec91e6cc238eb752f35880a07c40a75225354d792dbd13f92079da1452d5e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250316/TensorFlowLiteCMetal.xcframework.zip", checksum: "c52091849f487ffd98565cc656f9b7cc1aca411e134cb9a717a1b646de0248b4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
