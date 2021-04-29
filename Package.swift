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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210428/TensorFlowLiteC.xcframework.zip", checksum: "5a329a7eaf4f72b2945d141c17d5b5bb5e9b91937d8e2c32383b00cafc513569"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210428/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f43415d14371e44f33c9dc3188303b04007fdd9270d866caf1e6f3ea9904d401"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210428/TensorFlowLiteCMetal.xcframework.zip", checksum: "5ce1e1962ea423978d5b307ea9f3ae9b7eabb87536209f0447782ef8ffed36b8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
