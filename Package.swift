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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211031/TensorFlowLiteC.xcframework.zip", checksum: "c4a331a1d05bbe7f11588c572e7dbb9e8d4a477f62ca5f9e3e24eb7d641ddbc2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211031/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dc0897b7361cdae8a2613fc4bb948a846493baae503e1290c93e6e2a316b6ee4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211031/TensorFlowLiteCMetal.xcframework.zip", checksum: "5820005f96daaaadb307b099aabea86205026edb6b527011d45c3cfae8ec5e39"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
