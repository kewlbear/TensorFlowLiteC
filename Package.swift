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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250106/TensorFlowLiteC.xcframework.zip", checksum: "0b3f172db008573da3284c51e828a7e1bead466f46823261dd93673f66b4f55f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250106/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bc2818a68591d03087aeb7979d4adc94d4223bf5e5397ff5ed131f671e9aef95"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250106/TensorFlowLiteCMetal.xcframework.zip", checksum: "0bb83d2bfe3ae99541b274a039f302dc3ed90be070909ccfeaf80010652d66b1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
