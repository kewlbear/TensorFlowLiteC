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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240224/TensorFlowLiteC.xcframework.zip", checksum: "213e0b3f0fd0d06717141f2de5e7d72b121e2358c9909dc039d0b0e3e88cdb00"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240224/TensorFlowLiteCCoreML.xcframework.zip", checksum: "261b5fa2d71cb3eee42fd103ae5acd65c2ad288ab57fa137823f463cd34d69d5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240224/TensorFlowLiteCMetal.xcframework.zip", checksum: "50f234294a6f3113e3a3b1e66bd7ef6cd70ae1ecb8e0574075d4a06d7e391158"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
