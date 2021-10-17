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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211016/TensorFlowLiteC.xcframework.zip", checksum: "4ce4bc4889ef546b8d34d9868aed841d93c850b8cbb416b7172c4e7e6fdf6e23"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211016/TensorFlowLiteCCoreML.xcframework.zip", checksum: "86c3c65d5c566214a49a874dc30390eed376ddaa8196783d2728226c22876416"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211016/TensorFlowLiteCMetal.xcframework.zip", checksum: "e2b2ac76720ff51bb0dabbf306893d3ff0aca1c830ce2588ceedb95534199f04"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
