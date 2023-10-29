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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231028/TensorFlowLiteC.xcframework.zip", checksum: "a8788faa16ce62fac671eacb1f43613b1cd684a27ca2d1ef671a7a0034c789e2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231028/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9be53953d445ee611dab4c702bbb7fd0ab205ad5f2ee753b296b2bae74adace9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231028/TensorFlowLiteCMetal.xcframework.zip", checksum: "3306d274baa94b37070202a1fce360948751ecad92dff03eb3a7c2dabe9a4a63"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
