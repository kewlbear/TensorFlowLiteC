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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240112/TensorFlowLiteC.xcframework.zip", checksum: "1f3cb6ecf9dc8610865d141cad84a6bbc2348b3fcd68c1f09751e9b9d1290bf5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240112/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c60d3f6b88874540163c49474bb0bbd31cadf275c19b81d00ce0974a7f2d782e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240112/TensorFlowLiteCMetal.xcframework.zip", checksum: "670aca850e592e6fc0ee5a984777c06e99b6a6e83c4fd4463b7cd539a2f095f6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
