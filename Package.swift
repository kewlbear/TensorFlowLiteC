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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230110/TensorFlowLiteC.xcframework.zip", checksum: "930d8a5245f530f5d282b64b7a46f571ec1cf84ea4e21b47cee5d3fedad2ed3f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230110/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5460072d0dd565a948b5550f9a0a738cfc92f79b8b890072baa732cc716d47a1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230110/TensorFlowLiteCMetal.xcframework.zip", checksum: "d3315967eae622b4e9eb8f9578b759f0661a4360b55a05f1709c0dd73a319753"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
