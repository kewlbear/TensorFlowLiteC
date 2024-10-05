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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241004/TensorFlowLiteC.xcframework.zip", checksum: "d2ee7f80cb75c7883055c020b28141a587eb8ad4ab71153b4f2e5da1dd33a332"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241004/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4f87077832c06af425d10a538feb0331fecb6178c0e1b3e5718a8b002807b77a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241004/TensorFlowLiteCMetal.xcframework.zip", checksum: "33c371976ffa46b77862eaed99c9d63cf782ae8fe3ddf4feb83bc2dff366cea5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
