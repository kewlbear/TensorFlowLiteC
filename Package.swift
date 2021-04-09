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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210408/TensorFlowLiteC.xcframework.zip", checksum: "ac35042b3b6c8a82f3d361af42649ff59141965aec4b23e134006767b6bb5bc5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210408/TensorFlowLiteCCoreML.xcframework.zip", checksum: "12257cbce49ebab43e51d99ab9c1a0d9c440e0cceb3db5bec39f363ce4f70048"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210408/TensorFlowLiteCMetal.xcframework.zip", checksum: "6a1e2349f32611d5901bc10e29b8b01ca144cac12dcf9ac7087d1ea4140fe47f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
