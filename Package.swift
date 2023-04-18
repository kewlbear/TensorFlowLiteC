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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230417/TensorFlowLiteC.xcframework.zip", checksum: "22b7ca6ce88a5007ecc448f796b5cb74ad935332a553e634619610f54a7d1223"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230417/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6ab2cc3dda8014ad255ae2c43cf2760c059c2478375b5d52ba9a1ebdf416a6e9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230417/TensorFlowLiteCMetal.xcframework.zip", checksum: "160fdcff163876b7e426c4b6502718cf92ea282248c2c9999003edcd86796ca7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
