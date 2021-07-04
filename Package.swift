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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210703/TensorFlowLiteC.xcframework.zip", checksum: "de904e873be2f1b3979c2d025c1a84dc7f4ac7a8120816914d05d655e007920c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210703/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4bcc896dcd4051e1f3d9819e18af5beb01dd2b5b63a3c937ccc4bff68afcc984"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210703/TensorFlowLiteCMetal.xcframework.zip", checksum: "5d97d99d4fc2962a0cb4df67487ff702b554cd43de66b6058133ddf361d5b81d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
