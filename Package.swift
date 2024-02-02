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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240201/TensorFlowLiteC.xcframework.zip", checksum: "e0921927dc586b61c58e0bff7736380c4aa0be344df89ff8f9d22e091ad3479d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240201/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b1b5e8d589abe01f468a98caaf4979a1b6699ae44e17a2550736b7180c04d2e2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240201/TensorFlowLiteCMetal.xcframework.zip", checksum: "4173aedcf2c43343b7e25f589df0f0a35a366d8e5caa1bee3a23817270496738"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
