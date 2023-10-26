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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231025/TensorFlowLiteC.xcframework.zip", checksum: "b4e1ad331be41be732db9ee22a4f977e439fbe89775d6eb97a265d926365d682"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231025/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e629c82feca848fbea6bdc6d7274f47529b67c9abbcae38d077c4643e8b0e682"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231025/TensorFlowLiteCMetal.xcframework.zip", checksum: "531232f0dbd46157bdf5db96ec883356f68183fcc5d62cb746c3013236b8455a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
