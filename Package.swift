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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221104/TensorFlowLiteC.xcframework.zip", checksum: "97927395940404fcdd53d7781e0f96f09a6fec48c3abe83ff5447c037e5e8b6f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221104/TensorFlowLiteCCoreML.xcframework.zip", checksum: "53a29e12e46483743a2e1885a78261e9314e6f3e3f21b2323ad41ef78fe5d290"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221104/TensorFlowLiteCMetal.xcframework.zip", checksum: "236445dc83c3c2b2ba61de04cce1230fa97d0268e3911a13aa1a927a2d869bf2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
