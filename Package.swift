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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240105/TensorFlowLiteC.xcframework.zip", checksum: "17f472743689ad5d585c760745ea7b60d28b3917882544b204752a499c99b286"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240105/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c52a966e3c4439acf490d77d45c1a58ab8711c4e0e687469888a85b3520aafd5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240105/TensorFlowLiteCMetal.xcframework.zip", checksum: "b197eee717efba82eb6c1b696bb43f433305cfe0faaef73b6f4dcbc5f1475561"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
