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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230811/TensorFlowLiteC.xcframework.zip", checksum: "66368896d8021fb0d4eff3994c09f4320287f3d5e1c742a3983ba2031c6a46c7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230811/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f0b20344d5532b94f5e93709593742723b79b5ae08d9908aaadfb204597409a8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230811/TensorFlowLiteCMetal.xcframework.zip", checksum: "dfb0fae750b58a5321fc8b7c4673a0305a29a5248934a3c3f51d5839a50b6f33"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
