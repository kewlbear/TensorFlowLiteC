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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230316/TensorFlowLiteC.xcframework.zip", checksum: "0a6c46311cad4309e6f43c748e8b3cc2cfa2a924a94e9f3ddccbd0038abbbd6a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230316/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f6037ddd43c51c6a0d122f6928c43b06383790c59c7279b66caddcf2b0e2bdd2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230316/TensorFlowLiteCMetal.xcframework.zip", checksum: "8365149c7e19498c1ed3e925946599201818aca6f66eb653fe6681c1686176d3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
