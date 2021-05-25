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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210524/TensorFlowLiteC.xcframework.zip", checksum: "8aa981d69e052895f5b1e277e969a36eea4164ed09e9c33464fca34870117e3f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210524/TensorFlowLiteCCoreML.xcframework.zip", checksum: "85ff774c3e6c50bb77182e120c452451057c424e041dae93a75a7559384f7efb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210524/TensorFlowLiteCMetal.xcframework.zip", checksum: "a522f1c13788d03a1404859fcf5c52474011f67c5366fbffaa4546f897941d9c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
