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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241113/TensorFlowLiteC.xcframework.zip", checksum: "54c9525f849bebd78b94d26fc54ef4295c025d76b43c0ebd58d267830decfe69"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241113/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4bca0514de022ee334c1df719eec8f401be0a3f170315b6835df59bd6f636577"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241113/TensorFlowLiteCMetal.xcframework.zip", checksum: "f5d53a9556211da0555d8bb749071c26f6f60b5ae9f0a76da42cc271498e47a7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
