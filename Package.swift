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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210706/TensorFlowLiteC.xcframework.zip", checksum: "99fd2760b8ed9c1912727810b3f907c6a8905ab47a972df75cd54f31247e5047"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210706/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ac22d3b4b1a0d08feb7fbe11dfb97f9d0d5c914529cccad16205d26dfab111ca"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210706/TensorFlowLiteCMetal.xcframework.zip", checksum: "320dae3dac7481c82a9d6d1116490c877a6035f0a0bbe9f891b59e549f2b3e5c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
