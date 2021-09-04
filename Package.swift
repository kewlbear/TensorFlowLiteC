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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210903/TensorFlowLiteC.xcframework.zip", checksum: "df44baeccd2abbaaca93da61954e1be4eeb9f7d4def6de88aa79ad712cd4495a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210903/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f3613613835dd07e0241fa9f5cb446540a15596662bfc8146512560fb166d8f1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210903/TensorFlowLiteCMetal.xcframework.zip", checksum: "62b566ecbb422b0a9763be0d415a71209445171200d0c27cdffd2f220a467759"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
