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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231024/TensorFlowLiteC.xcframework.zip", checksum: "9afac90b43d35a381265edd6287920f33f2a6e6d1083432486aa2bccded43078"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231024/TensorFlowLiteCCoreML.xcframework.zip", checksum: "640c0a49d0f7d4daeb57ca48bd2365b1c3f025cfe75b33705ff501376c979242"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231024/TensorFlowLiteCMetal.xcframework.zip", checksum: "04f50b35efb897f9cc9640923a125296d3f558b82fb7c33ceb0129c6068a626e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
