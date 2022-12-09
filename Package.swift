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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221208/TensorFlowLiteC.xcframework.zip", checksum: "79a75afa5f7e7983655a624f425bb4c6f0c151d8910a0f482795ba4bd20ef08f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221208/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6dbfb223c386bcfaeb32828f7d7d2d5300c8f056186080a9feea547b945a789a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221208/TensorFlowLiteCMetal.xcframework.zip", checksum: "3a2ef6dcb3b0b3c5c639bdf5fe04512ad6976b897a4a1fa17284283985e873e4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
