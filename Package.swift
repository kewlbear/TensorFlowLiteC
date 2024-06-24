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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240623/TensorFlowLiteC.xcframework.zip", checksum: "c0a11a8d293a8eafc168f1bafd2ee1031cf72fe1ee9c9f9dbf469f43ce40dbe7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240623/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4cac2c8dafec32d1dd19ee7aceebb45ee817cda8b80e565518758c12f11a1170"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240623/TensorFlowLiteCMetal.xcframework.zip", checksum: "47085bbdcb0eee06e9b34fbd73996f492e224657f4c37298f7e39b3ec05e83e9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
