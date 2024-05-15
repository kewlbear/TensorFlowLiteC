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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240514/TensorFlowLiteC.xcframework.zip", checksum: "04c3001c6ef875df2c6ba7caf004dda7a512a8847974fb36442efd6e28b90dee"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240514/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0fbcd35071ead8c5dc386ceb5c370ee2ee750ea70620f34d0ce8959e0720454a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240514/TensorFlowLiteCMetal.xcframework.zip", checksum: "cb6c015029a66509c0143a7c17efa96924157e81718d14089ba9c13796611932"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
