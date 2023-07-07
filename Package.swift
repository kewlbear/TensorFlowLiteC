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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230706/TensorFlowLiteC.xcframework.zip", checksum: "92e504b0fc2c0dc6cb3a716de38659d5e6fb2d28466fd0dbc591303d1789bb76"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230706/TensorFlowLiteCCoreML.xcframework.zip", checksum: "364ad860b6f58e3aed51fe3126c84a5b2ca03dd474d46f8640a95e78bb427cb4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230706/TensorFlowLiteCMetal.xcframework.zip", checksum: "5db41f31f39ee49cfd3d119220e3f16c4af385f12cb4e4ee9418e0a87fd2e90d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
