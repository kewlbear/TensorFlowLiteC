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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250615/TensorFlowLiteC.xcframework.zip", checksum: "3edbd1dce5d73f72106d19ee8bf26a1fb9b9c09ef6b1840e0f683a1cc386a611"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250615/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bc56cd20df891600ca20a20e4687b75f3c3b7b83af3cc03e0590d194fa5e5525"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250615/TensorFlowLiteCMetal.xcframework.zip", checksum: "6943a56b8c489c3d2319921f48657ebc6c61553a93f1842a5713512b75217447"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
