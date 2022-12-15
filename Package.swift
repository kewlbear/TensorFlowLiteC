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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221214/TensorFlowLiteC.xcframework.zip", checksum: "c92a9133eaf4ed768fbaf4486560f6c7739fdb1261e6cda78ad61dd19581af80"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221214/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a46dac752ef5bd94b64670f763a9a6718721e46080c24b311762241d3b7ecf63"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221214/TensorFlowLiteCMetal.xcframework.zip", checksum: "cae9f95616ca1494b0ba33a23c41d804e6564b1938c23acc6c4bc8850327e17b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
