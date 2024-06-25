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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240624/TensorFlowLiteC.xcframework.zip", checksum: "c7e1efafcab64321c2334544577639470cbf8d7713fe90a4952903b04624b3e6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240624/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9ca7966814f6ae88d6fe3a596dded4f63542484929db95db00d75ba4060affc3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240624/TensorFlowLiteCMetal.xcframework.zip", checksum: "3a5660ad652518c16089e0ab2c7089288fa3bfbb5d76581f20013dff45c072b8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
