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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210805/TensorFlowLiteC.xcframework.zip", checksum: "9e25f6653729da295b3c6e70a194c978bb96fd2b94f33bb5a7ceb6dfe6678ed1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210805/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9a6d132c1b57f81f58b779627ba06ec1e6b73ca237348a3042c7b5eaeba86637"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210805/TensorFlowLiteCMetal.xcframework.zip", checksum: "bbcf7d5292b7842ecd2ee9a88dda38920ab8fb355702cd6fc94a96fa83cb0f62"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
