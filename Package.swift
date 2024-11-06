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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241105/TensorFlowLiteC.xcframework.zip", checksum: "94571ad5ebee0ec8f9a25ebc97524cf7156351ce9b73702af9e57d56d86fbcfe"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241105/TensorFlowLiteCCoreML.xcframework.zip", checksum: "418ff4da67de691b8921025da2bf9c5ab38a526bc8316d1ff954ddaf25b18f72"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241105/TensorFlowLiteCMetal.xcframework.zip", checksum: "19180e039e8af3043cf3a9e7ab5cafaf5a8d612308b36987ec196bce3caf2ce1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
