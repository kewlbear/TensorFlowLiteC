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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240215/TensorFlowLiteC.xcframework.zip", checksum: "e7a2be9e8551a1335b25e7a66d51ff987725e6d7b037bbe58c8dd39e0bad15cc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240215/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4a1dc2e1395a025e9654562ea87bdc9d253834916d195d164a63a6530cee0090"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240215/TensorFlowLiteCMetal.xcframework.zip", checksum: "3dc25b7f6b0715d471a412203664c7523e9d0fb06dc9191561287c0eb0dd9b45"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
