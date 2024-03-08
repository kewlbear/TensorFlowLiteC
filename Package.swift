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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240307/TensorFlowLiteC.xcframework.zip", checksum: "fc0ea9ccc6171a5b94bf15ed651766208ddd4f1276acf07d3d8a8ca53852e6b2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240307/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fa034c427414881d1b94949e33cd47f0ca55f35a4f1cfe129bda42772361b0c4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240307/TensorFlowLiteCMetal.xcframework.zip", checksum: "b50bb549a9838d152ad80408ef13cb7f9520e0fcf11384ceea8dfe875eab9291"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
