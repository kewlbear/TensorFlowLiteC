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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210609/TensorFlowLiteC.xcframework.zip", checksum: "48e30cfb28de4a55e62d219cb23836e0b5b7aef83316db57efb14383455ed167"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210609/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2e7d8036916445c3bd2e22baa0da49b13461407f9e66424b29ae26058481d7e5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210609/TensorFlowLiteCMetal.xcframework.zip", checksum: "b986b9252b688db4516f8afa0a7476c51d88375ed78b4802897d4c9b8dea2d96"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
