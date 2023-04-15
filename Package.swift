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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230414/TensorFlowLiteC.xcframework.zip", checksum: "d27f2d8c01c1b8d165306ea0f0d886b53d149f79a6330482558707c29c342f09"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230414/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6c195d4a02dc3326990814525c9a117fb83cd3b3c6b398b6a42164f46e5d8421"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230414/TensorFlowLiteCMetal.xcframework.zip", checksum: "5cffa03638fce7cc6ba6704f0b1f43b846e732117486a1145f860df4fcd20b74"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
