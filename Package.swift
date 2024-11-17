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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241116/TensorFlowLiteC.xcframework.zip", checksum: "180250b73a54600cb858027c011237e4cecbe34c885b338569f1c4b1bc065de1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241116/TensorFlowLiteCCoreML.xcframework.zip", checksum: "63a5cd12a6a01a63715bd7087ea9744d03cc450419c2904f3a06549ec020e1e9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241116/TensorFlowLiteCMetal.xcframework.zip", checksum: "9c312f2bc5e86a74fb00e47ef613dd2f0f64abfda2f6cf8b79266c2c70c6be2b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
