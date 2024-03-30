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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240329/TensorFlowLiteC.xcframework.zip", checksum: "1e971cf019da6971c58f6cd4b36e0c4267195a1130d7ad860b02ee2734fb41b0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240329/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7fac1122e1414a33b04a04980d8eec2eb1d2dc42ec7882fe6ba244c84c0e552c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240329/TensorFlowLiteCMetal.xcframework.zip", checksum: "bc5bffe0541c72a9fa4fee0fc540c0bce3b83b6590b424d614b0965166f2d21f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
