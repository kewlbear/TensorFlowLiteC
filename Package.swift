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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240818/TensorFlowLiteC.xcframework.zip", checksum: "87d54a51bce8b07eaae28ebd76a4d15d8e0d4dd5eb2f00d1376a71fdfbc4a96f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240818/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d6cbf8bf5530cec0bfdf7f5ad001b0dcffc8a7e481aa7bcb2afafe116743dad5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240818/TensorFlowLiteCMetal.xcframework.zip", checksum: "8b0e868b74714f222c201c2152ae5fa97ae340ae9376b36c385fe1ada3eafae4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
