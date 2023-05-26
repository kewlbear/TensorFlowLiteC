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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230525/TensorFlowLiteC.xcframework.zip", checksum: "5e665fd3f64a3c22d670a27450ef9c9c285a7381bce60b42ccacef851b2c2a4a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230525/TensorFlowLiteCCoreML.xcframework.zip", checksum: "44b3d4bd97aed803c2480fe16a264635583ab53cf121078ba2f8cade9391a0de"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230525/TensorFlowLiteCMetal.xcframework.zip", checksum: "745480a2946df18ec312ddbe653180d13d4267fc40c13c0b8b781747e763b88d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
