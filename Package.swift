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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250213/TensorFlowLiteC.xcframework.zip", checksum: "dc495856a8358d8f86d0b90591c8a6107e095d78c60dcc3d86f38718c3d9dce1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250213/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8d7160149cfcb84b9dc04d2c71bae9ab4d0bc5905d4b209b5859a33e17003da1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250213/TensorFlowLiteCMetal.xcframework.zip", checksum: "f6e77c4d2b967a3785768926043d92592822ec31b27977e406bcf71ccf165658"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
