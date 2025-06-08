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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250607/TensorFlowLiteC.xcframework.zip", checksum: "acbc072d8b859375e6509dd094560f4707356d7a53cbe9d3861dd84f7f58a5ce"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250607/TensorFlowLiteCCoreML.xcframework.zip", checksum: "99f398a72bc9999a3a82af4bf448ca1a6e5f1a41fd05ebcc725149c6bc17f532"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250607/TensorFlowLiteCMetal.xcframework.zip", checksum: "56d2e7427b2e2a951890a1ea9cf093c72c4338c4a34ca68d2e8c6d0abeb933fa"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
