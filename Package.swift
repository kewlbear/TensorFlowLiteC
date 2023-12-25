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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231224/TensorFlowLiteC.xcframework.zip", checksum: "1eb539d87c10a85e6cf38aaa16b6a372370e412296bd72d19b09a040111b3525"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231224/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bcedec62441f97a53cb6e467297063cd32eb644b8ab5318266736461e80607ef"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231224/TensorFlowLiteCMetal.xcframework.zip", checksum: "15e95e752f99a9d9b54bfa6ba451aa3220d058d559e66413d9d0003ac2a76335"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
