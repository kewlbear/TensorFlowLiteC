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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221213/TensorFlowLiteC.xcframework.zip", checksum: "1301749dc4fa515960d821fde47b1a82bb4be9e98a4506d78141f669cc246b0d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221213/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3a0ea4a316fc69b85653b8f316bba2a07ee4c2c4af71c65b9be1a7440ad9db79"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221213/TensorFlowLiteCMetal.xcframework.zip", checksum: "15162797a4e68ee90358ac2a801682b5e8bbb90614bf0ce79d4a46cc91765efc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
