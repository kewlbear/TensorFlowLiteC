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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240807/TensorFlowLiteC.xcframework.zip", checksum: "75f4219a3db492b0680480f9b517b5d47ce5f7b3d18f9b94db78997e07c8be8a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240807/TensorFlowLiteCCoreML.xcframework.zip", checksum: "be17010811ec1e6dd940159513f8586671241d3b6bc0129792fddbdf632a5e5f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240807/TensorFlowLiteCMetal.xcframework.zip", checksum: "1efc743dc07ecc5b81db844ef90112f227047ce86991874bb40d7345327a5dc5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
