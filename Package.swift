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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230531/TensorFlowLiteC.xcframework.zip", checksum: "0721581509359e0ec51c8708d4fab3f7d2d669595af394b598787b90340dc0d0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230531/TensorFlowLiteCCoreML.xcframework.zip", checksum: "88c0b5fd67b419c0f17312fe285e462b58c1daf977ecbd25f9cc6a9754c88c0e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230531/TensorFlowLiteCMetal.xcframework.zip", checksum: "892d57325dc803eac84fc17ac97fc3eb023a43b53c0b8303d1187b6d79346c2d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
