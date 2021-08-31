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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210830/TensorFlowLiteC.xcframework.zip", checksum: "c5fd1e74201357dcf9ebaa386baf4f9c160f4a458fa7991ecc9890b0b1bbf8ac"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210830/TensorFlowLiteCCoreML.xcframework.zip", checksum: "06f7e757f4e4c1eef087571e7aa357753930ef1c8db75e878d4c6ebdcc6bc13d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210830/TensorFlowLiteCMetal.xcframework.zip", checksum: "79836e838b32662119692fcf08f9a46b000ded0c83d49938057db11435268aa4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
