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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250108/TensorFlowLiteC.xcframework.zip", checksum: "633f9f17928ccbfe3361aa830846169d35e56b491045628b5d8398e87a644e0c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250108/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5cc1e688475cf95fa2d16e9f7843a6f4b1977c5f4f8bd74313d270b434808b0a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250108/TensorFlowLiteCMetal.xcframework.zip", checksum: "8e11fca12ccef640882303c01836e79dd6d92a3246d2b1f8116e48a2abfbd8f7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
