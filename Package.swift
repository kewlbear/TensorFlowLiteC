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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220923/TensorFlowLiteC.xcframework.zip", checksum: "2c49fde28235215bde9e70396a6005620e40556acdb1d7e23cc38b5a824317df"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220923/TensorFlowLiteCCoreML.xcframework.zip", checksum: "93c4bd474f83948cb77ba7ba627bf3a51b2db2fcb138cda0d7200361205265d4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220923/TensorFlowLiteCMetal.xcframework.zip", checksum: "9aa0a3ee58f4b67e1d1a957d67e9a3aabf01560e184dc4618ede9ffe2ef5f03d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
