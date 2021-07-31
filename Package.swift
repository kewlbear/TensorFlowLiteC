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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210730/TensorFlowLiteC.xcframework.zip", checksum: "0a00d23845926c8380b9920f6ea6ec4274c237de9f21ae9131151c0c5ce0c3c4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210730/TensorFlowLiteCCoreML.xcframework.zip", checksum: "73156118acb3651162ba1397c4215f6ab322b352747273d180d7339e69576435"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210730/TensorFlowLiteCMetal.xcframework.zip", checksum: "5c3dd0cad65d71fd52017b6c3716b3e08cfcd9919f55693677195f0fdf857166"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
