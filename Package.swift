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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240507/TensorFlowLiteC.xcframework.zip", checksum: "558973a3e8cb6f9624b1e29008e84c4c73e563375cb13c98e44b12353721cbe0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240507/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2e5333dff7d663ae6befd69a8ef16384615479981a80143e70d94f34f9c4779a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240507/TensorFlowLiteCMetal.xcframework.zip", checksum: "bc589f16ab620c44b085f1cd55697afd2d533958d4c6383f28c68f64d5d562ce"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
