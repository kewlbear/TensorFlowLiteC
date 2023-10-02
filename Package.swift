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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231001/TensorFlowLiteC.xcframework.zip", checksum: "a1de9aff46d6a72e92f70b30dfa518aeaacbed4c2a41dc46a98826d1b09586dd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231001/TensorFlowLiteCCoreML.xcframework.zip", checksum: "da3166a3bb5bf930716b0dd4f50f2cae5131636b6b92348bb2f7831ef9a69b33"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231001/TensorFlowLiteCMetal.xcframework.zip", checksum: "cf39f4eea89b7890cc63ca3d8c20d08096604ab87b765d541db034e93a9c8288"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
