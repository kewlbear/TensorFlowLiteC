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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240310/TensorFlowLiteC.xcframework.zip", checksum: "932ea07ccaaa2809566dc948325deef5508ed3d3ee36564b70aa76695c4e7a5e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240310/TensorFlowLiteCCoreML.xcframework.zip", checksum: "efa2db4e93192991b8b7315c102082c537c77417d5a9785c47d35b6c54564025"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240310/TensorFlowLiteCMetal.xcframework.zip", checksum: "51bf8842ff65cca52a358836059fae18cfc5c45cde7daf4683dd47e085c861d5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
