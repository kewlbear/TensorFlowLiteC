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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250218/TensorFlowLiteC.xcframework.zip", checksum: "b281cf1a2d69d3d69b1d581a7d7a33612586afe99cbd058c5ad125a85a2d8e94"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250218/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ba93beeef650a1cb222c44725931a917f3ae2e14c0621469fb0b42d172f1021f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250218/TensorFlowLiteCMetal.xcframework.zip", checksum: "566e8811321c090430a31ee244754d2749b3fc7a1edc56397c4136514f5cf67a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
