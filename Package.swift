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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250114/TensorFlowLiteC.xcframework.zip", checksum: "22edccad415af440cea434a7e99c3e1019c7359e6694d61e5b8a9be9f7fdf716"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250114/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2936368cd8e42c687f4ad7ca6e11ef067b02ba775e73b172c1570617ac487fe0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250114/TensorFlowLiteCMetal.xcframework.zip", checksum: "73a82fc7ccbdc8b7d06180b7f1e350824a4bbd33240a4cb6469c5f2cebe1a99c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
