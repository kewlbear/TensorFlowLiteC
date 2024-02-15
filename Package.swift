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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240214/TensorFlowLiteC.xcframework.zip", checksum: "21f5dcaee3ac76a7ed06de911ca406519addf5030213d9a838559291c6ef3dc2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240214/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1ebea7197cfeb08a0f3e7d9bd0ed3c36bb77ff2fd7f46d275821b82e8efd424a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240214/TensorFlowLiteCMetal.xcframework.zip", checksum: "dcba3eed4e685c65c8d50009480ff7a769bed06fc13c614220af0cec2c7570a2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
