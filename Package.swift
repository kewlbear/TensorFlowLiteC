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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230612/TensorFlowLiteC.xcframework.zip", checksum: "275b21507ee935be29dd055db75e8f5a7a21b9fdef6daf4fc67693d64a499027"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230612/TensorFlowLiteCCoreML.xcframework.zip", checksum: "18a89cb74075c66741d6e845c4e6154dca3735e0abd80c89f31ef84cb5d12357"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230612/TensorFlowLiteCMetal.xcframework.zip", checksum: "8509889041567eaa3dba8d78270dd0ce858ec438eb893e94894e933c63de5ab8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
