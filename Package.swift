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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210726/TensorFlowLiteC.xcframework.zip", checksum: "9ecfcef5e5839b4c19532fc1ec30edf3a5fbd6e4a7830df95ee51324a73c9eb3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210726/TensorFlowLiteCCoreML.xcframework.zip", checksum: "88de098496421517da50de431e1b7c580f1714d080c894825431de220e720ba5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210726/TensorFlowLiteCMetal.xcframework.zip", checksum: "77b7063d407f752c9e02b69d12d07cbce866de19dc7a4043e31d3fcafae3816f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
