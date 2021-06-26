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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210625/TensorFlowLiteC.xcframework.zip", checksum: "f2abe4c04c218ba61b8ca450df459d916c9bd698bb88cad1fb4c6dc20d3ed049"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210625/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3e211f846a31115e2db4a3f4b8f9d86600a7e8ee0477b247341898f2bd28f4d1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210625/TensorFlowLiteCMetal.xcframework.zip", checksum: "34f5f70b6d6993dab74c8b0f6afa20e5f120fd74d11c94d6e4296ac4b5b68dfd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
