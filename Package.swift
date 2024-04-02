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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240401/TensorFlowLiteC.xcframework.zip", checksum: "f63bca9f0952a0de2c7f126c81bbc05e59d6e9103e859edc95380ae8f6d2ce32"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240401/TensorFlowLiteCCoreML.xcframework.zip", checksum: "baef9bb8e150a497b2678454a1e88fb0dba58aab005dcf71ae97a02f47dbd35e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240401/TensorFlowLiteCMetal.xcframework.zip", checksum: "bb05788eab2eca56f4e5f61d29797ff0c7d73ab1b9242ff3dff94a7cf760ae07"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
