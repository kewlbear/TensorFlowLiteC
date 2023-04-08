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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230407/TensorFlowLiteC.xcframework.zip", checksum: "ce31184ac5e65a61f4ca7fa41c028f296be26c33183ad0438de625bb0c389348"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230407/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6d44275339e366395a65f99197e705f9a48abd33eb6b19bbb1d0aba67fc6f8a3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230407/TensorFlowLiteCMetal.xcframework.zip", checksum: "35f34f2066494163e8bb5561729a50d45ada4c14b77b9f86243b22c086cfcc80"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
