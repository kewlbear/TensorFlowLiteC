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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230416/TensorFlowLiteC.xcframework.zip", checksum: "1ff99497d0a7a8e188c3ac9f6c2ebbfab2a806d55bcd88ad793af950fbfda0c5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230416/TensorFlowLiteCCoreML.xcframework.zip", checksum: "420ad9166d886a079379d2da384bac1174a7caeac4809b236498eb68126ddf73"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230416/TensorFlowLiteCMetal.xcframework.zip", checksum: "fba01ef7fcc92f7f1aab62f3d8b47a54ece63078a52048db40e24679a8a574bf"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
