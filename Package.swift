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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240716/TensorFlowLiteC.xcframework.zip", checksum: "798fe47f383dd7e0f3f024c2713f37b2a7b08d74b3c4d2dc6081514e741bc1d5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240716/TensorFlowLiteCCoreML.xcframework.zip", checksum: "62e6084197b999b21442d0c156cf0fa1c800b7b2bb0dc7ee2216c1a83a6921c5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240716/TensorFlowLiteCMetal.xcframework.zip", checksum: "500ef4141e39b7b89be620d638d9aa35303b0a44183e71abb4b60b509eec95a5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
