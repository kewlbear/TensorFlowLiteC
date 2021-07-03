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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210702/TensorFlowLiteC.xcframework.zip", checksum: "bd186f773d3adfeb04038260382e0fb0cae1de680e8800930764981cc5e0cf7d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210702/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bacdee62953afce09fb2206d2d8bc050f1bca35f15ff74fd6663e98a9ea93dea"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210702/TensorFlowLiteCMetal.xcframework.zip", checksum: "ef96c2dbaf876e6b318d8d35ba1369a27ad7d54e68b5a56e70e9d666a1fff0fd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
