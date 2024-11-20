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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241119/TensorFlowLiteC.xcframework.zip", checksum: "019ee286335845f4bc5fbe82d8a0b86bf697845ba993562c8e4369fe62e4d09c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241119/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d6aa92106534b9f58fdf6f0c9e5497a0d6436a6222f8e04eaae42d0c375b6149"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241119/TensorFlowLiteCMetal.xcframework.zip", checksum: "7e63d652ba12ed9873c52014cd92da39be1eda8998f3b997dbdfe01a98e67eb5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
