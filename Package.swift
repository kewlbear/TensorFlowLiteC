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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240719/TensorFlowLiteC.xcframework.zip", checksum: "52ea8154e0e8ca83bc57550a067fb9c6a72dff862db27b02fc8c59d8a17dcc2b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240719/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3f70849109b6bac43d374d3747526a189d816098741c5994d5ef23f54399aa96"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240719/TensorFlowLiteCMetal.xcframework.zip", checksum: "ba738a151ea985a24fbeb675c3be901eddb74bb577b77d168cc7e20da718f3a3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
