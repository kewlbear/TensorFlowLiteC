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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240513/TensorFlowLiteC.xcframework.zip", checksum: "d12de0585889716ebc032d0136160d1cccaf4599af5c8e1df334a662421cb1ea"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240513/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7c7124b6694c3dcd5f40e43a86da94cb72b3d91634860ea9cabbbdaf888780a4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240513/TensorFlowLiteCMetal.xcframework.zip", checksum: "8ccda776ed2fd11cfe7a624407a45d066eaf09896df18641489cb0b61636fb0e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
