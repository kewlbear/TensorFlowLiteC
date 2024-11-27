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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241126/TensorFlowLiteC.xcframework.zip", checksum: "b1a0ad0ed53e6353f6b00a5fa6aa6b3156f99aa338ad531791088df3dff8d91b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241126/TensorFlowLiteCCoreML.xcframework.zip", checksum: "74ce5108a959abeefb3b3d31e1741a8a6ed8a55d6b2c336a530cb60c9278a5c8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241126/TensorFlowLiteCMetal.xcframework.zip", checksum: "f6284c72266b7d3e6f6ee29379a047449c95848e7591d4bc31f8198b70fa8ea7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
