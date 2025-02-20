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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250219/TensorFlowLiteC.xcframework.zip", checksum: "ce60128f162847a172fb736ab58d2c15089b31e3b59ae451c73f0ec405ffb7d7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250219/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f3c25f85bd5ec292cc78de2791ab69b362eaca1ed58c254b05737e24a00a86a0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250219/TensorFlowLiteCMetal.xcframework.zip", checksum: "87a537cba356854114a6eca602be627fd5ba75d586b004d1fef1cc859b1703f1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
