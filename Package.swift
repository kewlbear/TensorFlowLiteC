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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230826/TensorFlowLiteC.xcframework.zip", checksum: "36be1f643c1e55a6ec969427910ad2810b8b91b5158eddca8d0550e67fd7827d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230826/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0cb706226d7a383bbfcb4b0d79e732e6115b9eeb5fa01d985bb08822e9c1a64c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230826/TensorFlowLiteCMetal.xcframework.zip", checksum: "d02386f253ee60c3e1064e4c8513419e346b27d2a663d85f409ca734596e9efb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
