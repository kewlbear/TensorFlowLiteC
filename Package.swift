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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240416/TensorFlowLiteC.xcframework.zip", checksum: "28ec8661f3511bf1e527ac5140ea7815549170139c1be088adba5dd391f43665"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240416/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a99c10c889a5171d14f11a2270bc7206e1d3139cd1c4106aaa9eb8cb1931059b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240416/TensorFlowLiteCMetal.xcframework.zip", checksum: "6ba2502bbf5ee108410c61a622b80d62afe11ee0224dae7ca93bfc8259448906"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
