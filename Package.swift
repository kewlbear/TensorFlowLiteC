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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240827/TensorFlowLiteC.xcframework.zip", checksum: "3289c2bad2e47bf6a3b31fed7a90b9bcd8efbc0756336534d08755ee162ae6da"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240827/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c16a958eaa09127541b98762e36d5f4c8df34d032a0b4eb8f0c7f9ee990720e0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240827/TensorFlowLiteCMetal.xcframework.zip", checksum: "96c6c6e30f8f5c5814ec187d103e5e0345354fbbab6b6b266f2fb88494c442a5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
