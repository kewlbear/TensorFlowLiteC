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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240410/TensorFlowLiteC.xcframework.zip", checksum: "36707ca36fcd367e4c1ecbbba253d5f151cdc26827a282f4c0aea1cbbfd1d005"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240410/TensorFlowLiteCCoreML.xcframework.zip", checksum: "937d0a9dcf20351854da4285815d56c759dde5562c2bf8f12208e0b2af9dc341"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240410/TensorFlowLiteCMetal.xcframework.zip", checksum: "4c203bdc7bad93d539313f096de1792995db875746ecf1437b06dc72075f9187"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
