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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211115/TensorFlowLiteC.xcframework.zip", checksum: "71947493cf07a4d8dba7a5c5e8e854c2128dfe3c8d9e83b6bd3eec132236d5c4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211115/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dc5e86a1b35ff953307052c9a8d064879024d9b3c01308d837cb3d8fd34d9327"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211115/TensorFlowLiteCMetal.xcframework.zip", checksum: "fc69223328ae2ecac0e4ae1fcf984abf87e657ff125b88cc7287b9b1556182bd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
