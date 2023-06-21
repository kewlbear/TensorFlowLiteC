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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230620/TensorFlowLiteC.xcframework.zip", checksum: "ec5e34d312f08f9dbee96e4d979d319f724b17540f9665bd15ec781dfe5bd1ef"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230620/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6bddc1b47088b0f8902bf9576d65adf63d56618781f0a930e54fb53b85acc91b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230620/TensorFlowLiteCMetal.xcframework.zip", checksum: "05edbc570d3485bbd78c06f7e7f1ea2814a0c7ae271b6b092dbcb606e757ebdc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
