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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240113/TensorFlowLiteC.xcframework.zip", checksum: "37f134d73cb12819763eb9529133bbab3409a593c925243da6f32222eacd24e9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240113/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0304f4b4147428003588b697ee085ee2f501faaf77ec0dfe80694bb2ae499c5f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240113/TensorFlowLiteCMetal.xcframework.zip", checksum: "acfdc6306419ee5cdf0ef9409c3de3b57453a42eae04a20a9ca78d10ee3f03c4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
