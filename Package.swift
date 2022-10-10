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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221009/TensorFlowLiteC.xcframework.zip", checksum: "03c8c6b63bf9f9bc480eca8fe56520e69b75d0ca9f40a1b2e20e2008ebcd2fc7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221009/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6bffbde6a90117ea4cd6a9eec68e1566ab8622c129b9b780d3c59371845d3884"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221009/TensorFlowLiteCMetal.xcframework.zip", checksum: "3a821c8962c6df3e3382719e9b0ed81b2755983e8340f6d4fe1ce8e348f6da4b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
