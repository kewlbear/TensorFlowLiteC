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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240630/TensorFlowLiteC.xcframework.zip", checksum: "f235127e529355e3abac78391b975b5af57f799f34f6ab5940fdeed2d12d11c3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240630/TensorFlowLiteCCoreML.xcframework.zip", checksum: "09e875fb6f720b48b823ba7d250036b5af55dd62acdc41895f8fab82e0163e0a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240630/TensorFlowLiteCMetal.xcframework.zip", checksum: "5df2e4c26334f837fb7a57bb8abb437e1a85a424a55deeef52a4e3425132d9af"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
