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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220821/TensorFlowLiteC.xcframework.zip", checksum: "8cae4c9cc5819928f52e3e08dafcbe45f07801401ddb0a2ea20763c566ea6602"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220821/TensorFlowLiteCCoreML.xcframework.zip", checksum: "89d48e39938f6a105416a299fe5734d3761d72ac1ef8ddb2848a19c985f22392"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220821/TensorFlowLiteCMetal.xcframework.zip", checksum: "b23616265f1a47abf7cb2660f0024dc6c59f624fd2f01e4d9400e158869f6ccc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
