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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231207/TensorFlowLiteC.xcframework.zip", checksum: "6972c3bb902ba930957705c2a263c9357932a6f03942f4c8537965c41b63325c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231207/TensorFlowLiteCCoreML.xcframework.zip", checksum: "20be178a0ed2f64664c2c1f5bbe38312e4e7fe51be578bba1f6ba8e19e6dd2e2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231207/TensorFlowLiteCMetal.xcframework.zip", checksum: "b5eb0953f9cc16a52322b7de13de59a3f4db67d31f8a56b9284f9e354cfb7037"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
