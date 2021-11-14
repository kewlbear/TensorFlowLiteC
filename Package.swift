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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211113/TensorFlowLiteC.xcframework.zip", checksum: "66bd0af9133e481d460abdad35e2605097bde5bfaae0c609e1fc461ae38899e6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211113/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7ee81bf470d1bcafe4912003ce250d3b5b0ae40ebe70fd25c8d4a199e408cdcb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211113/TensorFlowLiteCMetal.xcframework.zip", checksum: "f693250e4e687fa8b7f346359d3377c7e95fff0334aa8bee54f528ea4fc6192b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
