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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteC.zip", checksum: "6b481e0882f2377bde14804e980f40de5a2f062203cc66a24a63eb0778be0f8c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteCCoreML.zip", checksum: "9d604d259d9bb629b7924374c9c561ab1cacd05eba743eb267833bef35cc27f0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteCMetal.zip", checksum: "0db010dbb9e2d5c9597a989e030098987b3c5d166971368ac9ac1b613e25fb32"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
