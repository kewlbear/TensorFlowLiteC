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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231216/TensorFlowLiteC.xcframework.zip", checksum: "b650d0b0a1c796eca25fe2b8fb462ede18fbcd862c79af69d720e23d33c94a10"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231216/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3f705c9a0a624ea85fedd3d27467fbea1853984f32a47da4157695dbf329dfb7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231216/TensorFlowLiteCMetal.xcframework.zip", checksum: "2bcd1f708154c06a05933b8750ecaecae0b651eceb790801ba390b8831598b75"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
