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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210330/TensorFlowLiteC.xcframework.zip", checksum: "a25139330641f0cda55c0dfb7a2abc5f83f0c5d9456f92ebc1c7a04827da7fcd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210330/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b3fc7c08de24841a7abefeb726dded4bc32ecf3e2ed069fdd34f9e09b0ecf094"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210330/TensorFlowLiteCMetal.xcframework.zip", checksum: "8c4449ca7a1640b0de64014ef39ccff389993c121977518f4a8be4ae88dc9271"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
