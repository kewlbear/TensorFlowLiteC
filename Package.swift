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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240609/TensorFlowLiteC.xcframework.zip", checksum: "d715c76daeff6b7969fea2ac53a41edf1892d660ecc24b1df854cd2725f39104"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240609/TensorFlowLiteCCoreML.xcframework.zip", checksum: "838c872d162093912c8cf1ea25577b729843f9fd82bfe3bc6e09ca6bdcdda52b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240609/TensorFlowLiteCMetal.xcframework.zip", checksum: "579df2d7493452f191423f22015cf51151e0cdd1710cf887f21a432c230e1cb8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
