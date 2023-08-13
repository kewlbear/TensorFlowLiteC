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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230812/TensorFlowLiteC.xcframework.zip", checksum: "f0d5aa8f3e88aaeed1db3ed4789999a91c586e0cac5fd594e9ba140ab95f4dff"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230812/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c3d785ace6257196bb5b47bc8c2d73a425cde8828a1dded9ed70738758e269ce"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230812/TensorFlowLiteCMetal.xcframework.zip", checksum: "21f80e6896464d3fd4cc3946345d115a0050cee65abe0edda515d32b3ffdfcfb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
