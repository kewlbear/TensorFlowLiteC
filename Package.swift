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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230606/TensorFlowLiteC.xcframework.zip", checksum: "fc25749729a7c74a73a3067e10f9d2ede937a86b914c4005582519c8809ba91f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230606/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fc7894367e28631689c4fd36d943598541193e0d7e7705a4f0520f12e5f66556"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230606/TensorFlowLiteCMetal.xcframework.zip", checksum: "6f7e3d04a3d087f5d13727fa024fbeedb71fe493c14db7295221830e97cd7bc7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
