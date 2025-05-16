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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250515/TensorFlowLiteC.xcframework.zip", checksum: "7e472f91e972e906939093fd540d55031be442b660c6f4e45051525dcbc9cf68"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250515/TensorFlowLiteCCoreML.xcframework.zip", checksum: "45a295ccb78978d94d36ecba0d02c167fd7f2958330765d05bfce23d806cc5c1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250515/TensorFlowLiteCMetal.xcframework.zip", checksum: "bab506b87d490393e592bd64fd1712d1519062432119683a0bbed4a14ee0fb91"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
