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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210615/TensorFlowLiteC.xcframework.zip", checksum: "881badefbf35cb2c3f5fd62779b76a02e42a22b9cf91b7aebc89c3ff2f33f6e7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210615/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ac56789f8278c9efefd736f88f0652d17dfe50454d0529270999bbce9e25d97e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210615/TensorFlowLiteCMetal.xcframework.zip", checksum: "87c061d18b5e6cc93c0edabafcc4753e8ee34d8739e102ddab1f3f1203b96eb3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
