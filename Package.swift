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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230502/TensorFlowLiteC.xcframework.zip", checksum: "8e3d1c02f674f43b0ca1b2c4d9cb86117dfe367caccc089933de5c5054d5b6fe"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230502/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3f90d49ba98986c984aa79fee730fd2ad1ac593b59f7b73e206e3cffecd52001"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230502/TensorFlowLiteCMetal.xcframework.zip", checksum: "85c0537ac49c02c9cd1e0ab7c78e9086251bd6cbf56a1bd7785a2c9bddd1d6fa"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
