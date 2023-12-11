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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231210/TensorFlowLiteC.xcframework.zip", checksum: "fce55a906335a3fa62d1976fde02e51f5e3f7417ce609b83f6d9296ef4290d10"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231210/TensorFlowLiteCCoreML.xcframework.zip", checksum: "db6e66cf1cee1ec2269ee807f979b290960cc50344d45aafc45c296c66999730"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231210/TensorFlowLiteCMetal.xcframework.zip", checksum: "6f66764ca42a1c3393c75d1fff6c41192269f8464a698a0320ba9331d58908e6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
