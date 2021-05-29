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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210528/TensorFlowLiteC.xcframework.zip", checksum: "b8415d68552da0285b03c3e9bc4b1b6d7b5c209ed4a62a46af461df7d65e9872"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210528/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f0e2c1a1ed4ef59cfd3a6c7126756995fe7cabb34517b3d133c8bc0b280fb3e6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210528/TensorFlowLiteCMetal.xcframework.zip", checksum: "4ceb99145e98f6839eeaac38e419e8a76492572808816b7c6112d80d0e452428"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
