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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230421/TensorFlowLiteC.xcframework.zip", checksum: "297cd68a522118ba4caf47ebe5d5596906dbdd71cc35b1d03897584f8da8d4bd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230421/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f531a05a8fbf41e720843a760f77a75ad2b95325d8d5577ceca048b7a8060d86"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230421/TensorFlowLiteCMetal.xcframework.zip", checksum: "a9aa95c0222298e34a2052bedd582703f10c295d5ff5c73e4d0c714a302e87ea"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
