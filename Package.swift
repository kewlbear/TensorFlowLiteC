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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240821/TensorFlowLiteC.xcframework.zip", checksum: "73efd826d23fca885ab91e578fc8f8b353729c6d3bf0890e31d8443047ce2697"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240821/TensorFlowLiteCCoreML.xcframework.zip", checksum: "addb70b28ba7522d1f62f1ef805cfe70febd033f7ff9316778964dbbdc41ca65"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240821/TensorFlowLiteCMetal.xcframework.zip", checksum: "f298a393e0e505bb8b736697f22854221996d70d3969fcb91896533f9c629a49"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
