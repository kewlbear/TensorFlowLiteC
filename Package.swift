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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230713/TensorFlowLiteC.xcframework.zip", checksum: "10c5c35094c12d9f69addc96c9553b4fa6e5493f20aa08266de0c2421dd91731"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230713/TensorFlowLiteCCoreML.xcframework.zip", checksum: "442b7553874596c732a81cdb10ab4c9405ff5dcd2d4a0de88d534538cdb2237a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230713/TensorFlowLiteCMetal.xcframework.zip", checksum: "f8d3023c30189cfc477f8d1cadd324c6e1d6189cd8e2e104c4ca65751bef8b07"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
