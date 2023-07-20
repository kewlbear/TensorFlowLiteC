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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230719/TensorFlowLiteC.xcframework.zip", checksum: "1224d407426bd294beba3309c73ce42b202d128d27f445f7b8eb73fc7b220f9c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230719/TensorFlowLiteCCoreML.xcframework.zip", checksum: "50ef05450c95ab231db7ed3b1f51992f29fff30fb3d671530973374564ef5696"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230719/TensorFlowLiteCMetal.xcframework.zip", checksum: "60c111e2fd82911f5d2eefe3e7b9dc73a8e6a46ecf80230ffe04dd4340b7f485"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
