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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250320/TensorFlowLiteC.xcframework.zip", checksum: "3619394fee51c64d9c1310454155cfdc5df61d0982c17b328b3a7b5effe681ff"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250320/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ba6bcb855e3b940b722db7da670ad386f42a8dc8f61b070496eaff5ca88a5b12"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250320/TensorFlowLiteCMetal.xcframework.zip", checksum: "e66145798055d94c76cd33c92d060d0b7c6fb24cb3561025189ef46f2fc5f40e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
