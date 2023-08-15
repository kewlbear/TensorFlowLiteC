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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230814/TensorFlowLiteC.xcframework.zip", checksum: "82be6683ac122f29d660806d4adb5396885bbbe1f140dcc73a652a2b1d0cd20d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230814/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ab97f7cf2560a1dc4be4952345762b6e88e7c4a4ca7bde0275f8f075f16f7bf4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230814/TensorFlowLiteCMetal.xcframework.zip", checksum: "c335c31b4615848e816d6aa1885b61e102131f42621c7749fedce60152c3227c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
