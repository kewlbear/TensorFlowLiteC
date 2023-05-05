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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230504/TensorFlowLiteC.xcframework.zip", checksum: "01d58ca163e3af28e0f895af987cc9f7bc4c6044c51fda74cc3caf3d8886cbbd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230504/TensorFlowLiteCCoreML.xcframework.zip", checksum: "41d345116af9cb6c22488134f482c4e1acab95bc0548c94c35c8d5b016bce719"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230504/TensorFlowLiteCMetal.xcframework.zip", checksum: "e858b4e33c68cff0b58cc5ba26ff56e32f23989dfb51792a020acd7c845466e7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
