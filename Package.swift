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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240703/TensorFlowLiteC.xcframework.zip", checksum: "0514161af168d8cdd0bb0014752919c9197bf0ad7bff537e4c5bba216fb6d399"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240703/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f2f34a608dcbb683ac22a96d6167df18719436dc94cbd5284b0844e7bb084e86"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240703/TensorFlowLiteCMetal.xcframework.zip", checksum: "f841bc9a02bd7514f2d2366a728b46a0a36c85aab20e0432d10d459584225a04"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
