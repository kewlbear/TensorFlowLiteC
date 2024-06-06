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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240605/TensorFlowLiteC.xcframework.zip", checksum: "ab65d32a3ffb34be1beaa2437c0c4697410927d02e180b954ec111d77b4d4473"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240605/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fc369a5c35ed892f3208296d5c5dfc00f83e363b147fc1e04d3e3c5030c24d26"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240605/TensorFlowLiteCMetal.xcframework.zip", checksum: "a247d500cb029fc69068f9fcc1f8325c443150a7fd12adce6ec8c011bdf9f532"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
