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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240927/TensorFlowLiteC.xcframework.zip", checksum: "3766c667daee0a8bcfbff9bda0d86c5cfa3b6f989bbb4dbe396aca696d980a9e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240927/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4359d7d9e6cad81c2c809b63a003d673e4b7d6dc5e7d9115553f1ba82edb02e8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240927/TensorFlowLiteCMetal.xcframework.zip", checksum: "ed2148c8c9429e443aa57d21e71882aa32a8140083ec7f5bcb341a9e76c97fa2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
