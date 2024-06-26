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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240625/TensorFlowLiteC.xcframework.zip", checksum: "5c3b9582d46b71787c34ddcdc46d513bc904981d7027ec801f141133dbe72964"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240625/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3c00512e306fec6127d05cf9b8b4d2d823c6b1b26272ffa2ee1aa3f4a689c8d9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240625/TensorFlowLiteCMetal.xcframework.zip", checksum: "2dfe66adf42b9a782bb85e8c482422a73c5690b2e93adf0df08dbdd84a4f8d31"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
