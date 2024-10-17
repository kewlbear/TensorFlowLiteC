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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241016/TensorFlowLiteC.xcframework.zip", checksum: "6ae0e22bdc4d23ea8c85440b7237de538cd3ff39609813e9c28dd477c7b123c1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241016/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2eb742efbd24d9e5254bad4dfd913ba9a7f51d6b1b6e20a05c2fbd1d9b56478e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241016/TensorFlowLiteCMetal.xcframework.zip", checksum: "d92d8e2fe60725093b59b708831ecc5e0794dd3b020a66f5f007aab6dabbf979"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
