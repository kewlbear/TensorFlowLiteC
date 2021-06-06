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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210605/TensorFlowLiteC.xcframework.zip", checksum: "f5b35f7c0c63689db21695c2781f764a5fbef521a653a7d8d9ab4796e5dec9b3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210605/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d5bd56606aac6290c50716bc86577b703f3e270b8d77fca59d497ef4ef5dac82"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210605/TensorFlowLiteCMetal.xcframework.zip", checksum: "2ce0d012f47c5bdc76da7aa50ef6de29ef6c4bc9892216b1f3b03f15f2070894"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
