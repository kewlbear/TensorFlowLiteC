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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231128/TensorFlowLiteC.xcframework.zip", checksum: "671b769dc21e74b7719da11ad9a07e5711653cc9e709e23105ece8a8799f507a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231128/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9d457ca0242f9b25a68438e9bb89b066991fe2b0a7faf57b194c7182c280eb76"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231128/TensorFlowLiteCMetal.xcframework.zip", checksum: "7c3f9bcf02a91022d8ec7a6747be3b9c900f3f5edad7f63b16e0714ad267e6dc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
