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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210710/TensorFlowLiteC.xcframework.zip", checksum: "31e4d9a87aca477321f38ae53aa23c099712245ea87fddf72ff315ba10a0a1ad"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210710/TensorFlowLiteCCoreML.xcframework.zip", checksum: "043a69f0f00ff074e9fd2e1c00068a9748a03651e3d0f2105f16e83acc8338fe"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210710/TensorFlowLiteCMetal.xcframework.zip", checksum: "ba933332a1279f989196432f67faa6973c262452a99cfecb40bf32140077e19e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
