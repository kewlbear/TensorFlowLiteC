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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241115/TensorFlowLiteC.xcframework.zip", checksum: "1f28048193bcc627a21e54191c769d8ee1c6b27544644d7d0650a3c92258200f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241115/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0496de939bb3ea3fdbc8f9ee410f22a7c92be5c067ac01de62e08c3267730b83"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241115/TensorFlowLiteCMetal.xcframework.zip", checksum: "d51dd2d673f4a1fb43af9ce80378fbb16e72e0dbba064636b8facd52dfa66cb0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
