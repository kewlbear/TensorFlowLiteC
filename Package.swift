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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210812/TensorFlowLiteC.xcframework.zip", checksum: "dc61178094818a5f4ced0ee20a48cd87537e218dc8de6cac7d13edc35423dd7a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210812/TensorFlowLiteCCoreML.xcframework.zip", checksum: "23847317bd2efaa1a81079a54a4a57a52f0dfc242ca619ecf240910bc14b3af9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210812/TensorFlowLiteCMetal.xcframework.zip", checksum: "06e8c9921209f0d73b8321dce3e350f4e8a8461d48e146ff05a4fab41331c376"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
