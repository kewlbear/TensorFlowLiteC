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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210827/TensorFlowLiteC.xcframework.zip", checksum: "5c0cd190244af3b194c650e40db4b0774088246df1eedaf55e3879cb8d604447"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210827/TensorFlowLiteCCoreML.xcframework.zip", checksum: "37e4e06e257cf34b2fecf354e8d1674d6845ef3e516edacd962fb507aac700ee"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210827/TensorFlowLiteCMetal.xcframework.zip", checksum: "9c9715b58576b93c0a78635fa979d230b67b74a604af1c957f6897094ba3c43f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
