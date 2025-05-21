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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250520/TensorFlowLiteC.xcframework.zip", checksum: "e6e8952f8dbd44ee6f538e0384b8de5787a4b2167f2a6a8c7c0e9d57c7e178e7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250520/TensorFlowLiteCCoreML.xcframework.zip", checksum: "43e6a08fed878c8ada94723f7d6b0c5d5b06da366b15458451539ace57e88dd6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250520/TensorFlowLiteCMetal.xcframework.zip", checksum: "9d6c9096fbbe9270e349e264f900432a507dc026ff455b3071cb44119d9ea058"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
