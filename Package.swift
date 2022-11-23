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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221122/TensorFlowLiteC.xcframework.zip", checksum: "93fb963b0da371b32d506c1c228ad0ded378699490048caf93904b1a696b2148"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221122/TensorFlowLiteCCoreML.xcframework.zip", checksum: "aa464827eec1edda4ca51eae8e037cdba11821b22b6c68f00456f482874136fb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221122/TensorFlowLiteCMetal.xcframework.zip", checksum: "a25b2edf65cc5cda400049b29c0e307570da3840249df710a96c9459641b3380"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
