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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210501/TensorFlowLiteC.xcframework.zip", checksum: "f57e6e2d21c179837ff389b7e4c91bd03893d7ea645ee0713802232f2daf1ae1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210501/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c049d2a5e62bbb90d10c475c19a510432114fbd3edcf4388a6274a14549e33ab"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210501/TensorFlowLiteCMetal.xcframework.zip", checksum: "b1f5d359dccce4934d2f7817b252132780cee1d27bb8bbc7b9a3e829460a3122"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
