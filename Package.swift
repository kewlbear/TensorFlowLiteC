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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250221/TensorFlowLiteC.xcframework.zip", checksum: "c3c5071882992c51da697d8305fcbd358f5e8bd418a4b875f6be9eadf3eb9bec"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250221/TensorFlowLiteCCoreML.xcframework.zip", checksum: "344747795e1146bbbb934c64cc2a37ecccdad428a81ad5c97e23e88f616abd19"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250221/TensorFlowLiteCMetal.xcframework.zip", checksum: "0b4d4fb911106ad0e69d6339efe2843cc416ecf6bed065cc5ac0a7061368b0bd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
