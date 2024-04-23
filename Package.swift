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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240422/TensorFlowLiteC.xcframework.zip", checksum: "e661a4ca9c209faecc90cdea38ac23efa8c02bbd3e1de17319fe36384f85cbb5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240422/TensorFlowLiteCCoreML.xcframework.zip", checksum: "52a95907bb89b22fbe962315b93504f82cb3e8c13ff647bebdc21b7e5d290d26"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240422/TensorFlowLiteCMetal.xcframework.zip", checksum: "0dd914746f189b6e52e7b96fe226967896be20357d69c52589c6f292bed43cf3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
