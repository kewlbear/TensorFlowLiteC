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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241120/TensorFlowLiteC.xcframework.zip", checksum: "a30d22420a97d9acd4d09b6d220dd9a0adf2a379ccb110bccacbae18561baca8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241120/TensorFlowLiteCCoreML.xcframework.zip", checksum: "69053635e0a3a5cf177450d226543ed2e56808b126d7fc3b6c663be035915d17"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241120/TensorFlowLiteCMetal.xcframework.zip", checksum: "d964f280d8547d8b01838d8b706c8ee136ea0c401aadc3b8b4e3a74d387565fe"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
