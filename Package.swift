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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211116/TensorFlowLiteC.xcframework.zip", checksum: "aa8973ef1b621b3cee351f6501ade4917ec01f7742388711ad8c4ef45148fd06"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211116/TensorFlowLiteCCoreML.xcframework.zip", checksum: "936d7943a7291a9d9d32f1376b92176e45f57d4abccc1a9ebc0477509cad0895"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211116/TensorFlowLiteCMetal.xcframework.zip", checksum: "80d42d5210ee41899d70495c68a5e8797f03402d264c91fbb9706643cf8189a1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
