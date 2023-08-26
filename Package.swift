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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230825/TensorFlowLiteC.xcframework.zip", checksum: "e85aa9c4eed889eb451bdf164f8c7f31bc17dd2f8850296d41c2b5633d1d7459"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230825/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1128c5950841c55d57c37919c4e80c23ffe959dbbf14e4890ffcc136d7ef577a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230825/TensorFlowLiteCMetal.xcframework.zip", checksum: "f95c7dd6f9bb090879c00d95edba79f65aeb606ba305286a5c3a70648d9e4742"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
