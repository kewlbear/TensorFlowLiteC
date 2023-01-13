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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230112/TensorFlowLiteC.xcframework.zip", checksum: "97a1b74bcc94ac0226da327ce8fa1989b25a1b2dd6329bfd3b0c29aa896a39d8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230112/TensorFlowLiteCCoreML.xcframework.zip", checksum: "979bc7e29adbcec75d793b9858ac20ec20572ef9b5e68f93f0659b021241c415"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230112/TensorFlowLiteCMetal.xcframework.zip", checksum: "71fbc8757e8d8abb33ef17afa30051fda95bf90cf30fdb828bf665952b4be487"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
