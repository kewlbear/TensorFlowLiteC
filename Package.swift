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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230902/TensorFlowLiteC.xcframework.zip", checksum: "67c8044cd0ecb46b072e52e2394dd6f985340d71091d331fafe4a994771da1bc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230902/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ed8ec0b1f953bbacffb1742abcd4e257177e8900aad5942fb35dce0e87984389"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230902/TensorFlowLiteCMetal.xcframework.zip", checksum: "32bae0c38fe22cc0acc1e0633185787b40456cdaba5b9f9bd77d63a672dedcc1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
