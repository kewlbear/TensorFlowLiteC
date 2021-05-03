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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210502/TensorFlowLiteC.xcframework.zip", checksum: "82e6cbe58572fef601ee62ff72df1d1b492180f23d313560d2ca11b6ba885cfa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210502/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f9844b6dfa83b86fcf00f3f2804177ce18277761fd03c8a231efa1adaf3af14e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210502/TensorFlowLiteCMetal.xcframework.zip", checksum: "fae37328d9794aa81f667b2ccdf00c986dc9b185dd199622849d5a3dd091a74d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
