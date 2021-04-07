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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210406/TensorFlowLiteC.xcframework.zip", checksum: "765fb1d502c82ad2cae3cedd424f4536a1971a45a451471b47fcc9a1993a8b4b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210406/TensorFlowLiteCCoreML.xcframework.zip", checksum: "79428a9e65b9d9b16e46438d8d75c0850ee4a36ef0c1d99833fe391aff2dc54f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210406/TensorFlowLiteCMetal.xcframework.zip", checksum: "c5a795c6a45601194c18af74fb29d1cb1d2f6e72bb40ed2b00e12c5d8ba650cf"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
