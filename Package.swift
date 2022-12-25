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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221224/TensorFlowLiteC.xcframework.zip", checksum: "0ce44813ccaac553a277a474392d7e2d0ea3927c54e934a5780582ce9ebf8d8f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221224/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5b795c2cfd8c02813e61860de60212073d3f238d5ff481f82af728ff7e39cc70"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221224/TensorFlowLiteCMetal.xcframework.zip", checksum: "8ebb66bf1fab8613ab67bd18b1e6b13e8452d887e142ca50f4c329b1326b122b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
