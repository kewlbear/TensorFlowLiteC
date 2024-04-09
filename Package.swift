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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240408/TensorFlowLiteC.xcframework.zip", checksum: "1d4ce0d5fa243b1326183ae74fff58cdf8d0c3381ecfd4ae26ac28648095e8ac"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240408/TensorFlowLiteCCoreML.xcframework.zip", checksum: "977ec95d684047d407289f520b8600c5c7aceb141278cb77c733951f18a87821"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240408/TensorFlowLiteCMetal.xcframework.zip", checksum: "3621657d7a9047f0d6a30cc7e39c05d7c81ed05ff4a9e3a58017299d2b50ecf8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
