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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240202/TensorFlowLiteC.xcframework.zip", checksum: "1ad25d231746959e74150f421757e474802f7475905a66e8990b067391d76bee"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240202/TensorFlowLiteCCoreML.xcframework.zip", checksum: "152f6c5bd09f9391d7cada58a75eb6e78d5716bb267b55362b7e5c514065101a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240202/TensorFlowLiteCMetal.xcframework.zip", checksum: "50c75081452cbffa4c41f75a5c759b13c916c92d0d5d1c8818f6d97f704b8430"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
