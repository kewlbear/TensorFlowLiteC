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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250606/TensorFlowLiteC.xcframework.zip", checksum: "c2992b486c9b9dc8647a2e07edc0299ae78e37c9b074414a20af36d14e02babf"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250606/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0b4e6543d6c3291b3babbddf6decd3f58f7a31f4a05de6d372b9f903ecc9b85f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250606/TensorFlowLiteCMetal.xcframework.zip", checksum: "5bdb168752b5c8c088d99ed6e027660463e78d0c6c46789f606612de256f5b89"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
