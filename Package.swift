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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241023/TensorFlowLiteC.xcframework.zip", checksum: "7eb8395160a175b303fd1289697bab6cf26a79cf6de7830a0a1a8d566c1eba1b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241023/TensorFlowLiteCCoreML.xcframework.zip", checksum: "20fd905839fce6945f3b504833142173b0f4a1c9b7ab5b1d613371f498ee6e2e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241023/TensorFlowLiteCMetal.xcframework.zip", checksum: "792c211d2c4ae8cbde26b98322c6e705dbfea4527a622572e7a905398b9cf58c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
