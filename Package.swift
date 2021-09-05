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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210904/TensorFlowLiteC.xcframework.zip", checksum: "b17bba56b9a784a35f5e1bd37264c64b0b6ff110ed1131f4921435a33ac6c472"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210904/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2f1759d42a1fd9a4750990f1e8209ab5caefa50751635d3d93666c91d545fb44"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210904/TensorFlowLiteCMetal.xcframework.zip", checksum: "cdb5dfb90a516124ab335cb7bf1d5d5281b82116627fabab28c5323e8392e465"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
