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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210727/TensorFlowLiteC.xcframework.zip", checksum: "60a9f7c90be1b98fa7e6f428b048444111b20faaee8ccd197a3149e00669dba9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210727/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5435c3b42e6c02dd11d878e12ab0cd3a213555889b67e45e74869f3362d041e2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210727/TensorFlowLiteCMetal.xcframework.zip", checksum: "2d2b62c652593d8078fd7e4cbbab4c5e3c765bbce281d00fe5ed8e3d9630751f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
