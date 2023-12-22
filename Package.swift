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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231221/TensorFlowLiteC.xcframework.zip", checksum: "ff5eec7885b97b7d9fac4dc03a69fa43b93c2ea03575a88888b790895923f7aa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231221/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4772e1d6cfbb8026751928549d7a68bc8424e2838ba6b44696645c5a28867d50"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231221/TensorFlowLiteCMetal.xcframework.zip", checksum: "cb139e0bd86d60cdacba736f90f9547fe833398f310d52adbbe7f14c4a8ed110"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
