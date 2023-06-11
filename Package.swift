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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230610/TensorFlowLiteC.xcframework.zip", checksum: "f862b9e7b17a90bc7f1c0b8b0ebb6a44130a807096beab2cd9ce78157ad4daef"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230610/TensorFlowLiteCCoreML.xcframework.zip", checksum: "52e925f1e3699b372c507a662823a2c05032912a2f6cb6c52496d97e19a83d89"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230610/TensorFlowLiteCMetal.xcframework.zip", checksum: "fb14f771c55a78d0103d6a02efd87353f5c340335e155b19047fa5c3c627813d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
