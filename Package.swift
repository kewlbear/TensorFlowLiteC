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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231217/TensorFlowLiteC.xcframework.zip", checksum: "f7e5fa505c0fe3d6700a99371bf0946e79110ac8120b8643f137e3d704c93038"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231217/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e7d15873f808ed9e344b8811acf1016fd9ba294b8bbaa20396d469068d163b9b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231217/TensorFlowLiteCMetal.xcframework.zip", checksum: "0eea16fe3df06b7510bc0bbd5990df3095a8c401784d4ceae877712520b471e1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
