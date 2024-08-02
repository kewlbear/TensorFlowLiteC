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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240801/TensorFlowLiteC.xcframework.zip", checksum: "a21229067e82c8b2c187fd721bb10f5be223c1ab30c2eb3c481e4ce1092e7953"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240801/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e1e4292f1c5a66620d05ce9b346f77c9b75340e69427fa77ad8bf5ac2fd8ef35"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240801/TensorFlowLiteCMetal.xcframework.zip", checksum: "7b4ffdf7b328c4c72354db09265c99d7b27dedfd8f04536eb67a81d945b0363b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
