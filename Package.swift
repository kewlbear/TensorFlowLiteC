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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240126/TensorFlowLiteC.xcframework.zip", checksum: "19985d5af4f624b02808a4affdde8c1fc21259fad1ffd5530d669e068b1ff7b4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240126/TensorFlowLiteCCoreML.xcframework.zip", checksum: "52f848e10f6619386ba325a6c64cc4305e2defb9697e4ae64d22975d7d01087c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240126/TensorFlowLiteCMetal.xcframework.zip", checksum: "ad5d74d5ace68d97531465716b4d7c89ea0f247adb68c25a9c3f5a390ccb0d27"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
