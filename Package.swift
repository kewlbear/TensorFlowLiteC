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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230910/TensorFlowLiteC.xcframework.zip", checksum: "89d5edfc0237877fc6a9f7565b9c7d6c6358c5d249f495defaa852f22222027a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230910/TensorFlowLiteCCoreML.xcframework.zip", checksum: "aa2c7a7306323c6cccb9fac8da6404f6b0e9a178ba2ef265f5fd411b69cfd41a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230910/TensorFlowLiteCMetal.xcframework.zip", checksum: "b414432733aa529df9d61075154ad32b7d8d016bed28247b11351a8b55bc6c48"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
