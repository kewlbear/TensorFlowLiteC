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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230331/TensorFlowLiteC.xcframework.zip", checksum: "7658ffe1dd9c6f7392cec532a812ebf24e2226566611b0e215ad6fe9a5dff928"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230331/TensorFlowLiteCCoreML.xcframework.zip", checksum: "89ec18f779aa767eaddd5ec84fdd8c97a312dacfe12dd66ea67e9d8d1132ae19"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230331/TensorFlowLiteCMetal.xcframework.zip", checksum: "4bdbd204c077af9a28be6805113bdff28caf0715d9ebd48b9dc72617f0ec79a4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
