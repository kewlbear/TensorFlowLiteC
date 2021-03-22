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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteC.zip", checksum: "02cd0bc9a0cb7c4a4c357f46c0930f7f53e7e419cfc2c15f5da6bce6593d0c95"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteCCoreML.zip", checksum: "7877f7168326f00b9d06fbcfee89020781a2d4e6bc76c5518c4e23df85e568bd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteCMetal.zip", checksum: "25011f430d9bf3cfd70d722f452bf0bbfcad6f578a29d636d4e0c444897c5c13"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
