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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210616/TensorFlowLiteC.xcframework.zip", checksum: "6522865376af242395d324a24bd279ffce752346e0c1882b52670c8bba333e63"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210616/TensorFlowLiteCCoreML.xcframework.zip", checksum: "997a8ea010e63f4bdf068fd1ab3aabf94ca312ce9672271dcf3470dea71c7bad"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210616/TensorFlowLiteCMetal.xcframework.zip", checksum: "153a4d3e73080c2beb9bd3f4c07e9bc55dc8252191f04a03fe7257438c855d0b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
