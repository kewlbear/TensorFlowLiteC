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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210919/TensorFlowLiteC.xcframework.zip", checksum: "3ce599df657090c15ec5e381be1d764a60c62dd6d677669e9053284b75bea9fc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210919/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4fcb60380cf972a1adcc57a915a4af6dfc704746af703af0599227d91bc7f9aa"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210919/TensorFlowLiteCMetal.xcframework.zip", checksum: "2cee90879be1600555023cd9316fef3fd5a4e0eb4088625b6c389da1b29436be"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
