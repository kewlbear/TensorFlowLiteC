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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230507/TensorFlowLiteC.xcframework.zip", checksum: "90a519819c870e76feb36b79cee6acddbac4eb680ef04eae6cd67abd54792619"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230507/TensorFlowLiteCCoreML.xcframework.zip", checksum: "15a3b5031e00b3da60a8e8c3bcaff28fedaa5b2fc5f6ebcdbe7455cdc907f650"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230507/TensorFlowLiteCMetal.xcframework.zip", checksum: "10c7915d2cabebccf6ba5c6295a1319dab4be827a81e4caf304cdbd868511ab4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
