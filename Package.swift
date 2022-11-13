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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221112/TensorFlowLiteC.xcframework.zip", checksum: "496f5ed6c0cf7b2b3c200de5ebab605052be4ed5da8874f8c1f52ce340ca5ad0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221112/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1fa81b9f2622c5e0a8ed53acf4938640b772b9ee26566ac332246cb74b28de8f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221112/TensorFlowLiteCMetal.xcframework.zip", checksum: "7b0573926214130387e9689046519747954e57d07474e47a63abf010eb8fb5e8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
