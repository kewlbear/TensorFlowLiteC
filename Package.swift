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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231003/TensorFlowLiteC.xcframework.zip", checksum: "c1f0f831485c87a24053950a55aad4b651a4eb2dacbd2f77658bd5805d7da31f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231003/TensorFlowLiteCCoreML.xcframework.zip", checksum: "becd6c1888fe55f810e39a299f2463b928e1e88f4ad1bf5e3fa515136302ae8c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231003/TensorFlowLiteCMetal.xcframework.zip", checksum: "794c73b6971eaeafe4013af48dfb2061d727dc7545809643d16ad336e2496541"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
