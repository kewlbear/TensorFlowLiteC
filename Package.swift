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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241209/TensorFlowLiteC.xcframework.zip", checksum: "f327af89eaacd5c27cae3863be9686094d73b13d60e430f7307e818a93a4bf8e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241209/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0cb3c318f34dd153ed538a9707d8725db20e07b3209a277401ff887dd9de644c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241209/TensorFlowLiteCMetal.xcframework.zip", checksum: "3f78be745bb8ea34d7e17cc8d934ea8db038cd50872de511aee9e55babe7246a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
