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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241102/TensorFlowLiteC.xcframework.zip", checksum: "b9b3eb727d8882f87a694b643efac6dec373cb4d0358a12a32c15013bd5013a1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241102/TensorFlowLiteCCoreML.xcframework.zip", checksum: "300cd21d16922109af91511f3a9249cb2bf22221e925af166e150114465239e8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241102/TensorFlowLiteCMetal.xcframework.zip", checksum: "62ec63d2f37c224c8712c06ca31b84622dc4d1a945882728ae66efdf839a9f45"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
