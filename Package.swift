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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241012/TensorFlowLiteC.xcframework.zip", checksum: "b06576c9ec69ef926ed54d6803a2383ec5465058546b0552bb327b5bc8f1a921"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241012/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d5cf7b3a4265e38092f746c7a60c5cd97750a56609bb2714a5655de5b18cfd66"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241012/TensorFlowLiteCMetal.xcframework.zip", checksum: "b41807f5eb988cf585b7a2be1a38e766f2655e001873f9c38da0d4a6338059f6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
