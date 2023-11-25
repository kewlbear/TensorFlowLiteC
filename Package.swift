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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231124/TensorFlowLiteC.xcframework.zip", checksum: "2acd9be1caed7d8a1258ba0a81a9795886a9fe4ed771c446b3ce9baf02f40065"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231124/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5744a38220c5d7d949a52af48986a795318676a243ea7ce1c0377b8da931d172"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231124/TensorFlowLiteCMetal.xcframework.zip", checksum: "6ca75ce1dca5c909f0b896391b23cf98422635872f81b4b1e423c06263f15976"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
