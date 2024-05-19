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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240518/TensorFlowLiteC.xcframework.zip", checksum: "d6af3ed90cf70034c9eb0d098f222f5f6ac40a7aefb7f6868de81144dad88dfd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240518/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4ffbceb84f7c4fd2ba737255dd29982684a3f295877b0d6429019c9c025671dd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240518/TensorFlowLiteCMetal.xcframework.zip", checksum: "24c4b07be13ed9a15c8c01f6a0c5085aabfc585a5b2af85f54ef4af585602ca4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
