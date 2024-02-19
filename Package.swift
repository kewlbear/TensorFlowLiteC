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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240218/TensorFlowLiteC.xcframework.zip", checksum: "d56bd65eefdc7b57e1172bcc6da35a4ca448c53ade47a04f78fe794c2dd3b734"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240218/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7df50fd48b0e1f71ace15bb7d121f0236a72118397d1543290451efb9a7ab53f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240218/TensorFlowLiteCMetal.xcframework.zip", checksum: "6d98dc818ea418dfca2a07de7ac75e9613cf517eb0e61363ac6df3b9f8414654"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
