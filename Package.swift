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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241114/TensorFlowLiteC.xcframework.zip", checksum: "8355a769ddfa79766b8e48fac992f9dcc816b6249ac029e7ea11124034ecddef"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241114/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a4162199d389065ed534fd1f3e56281571608b295204efaa99243e18cc394b06"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241114/TensorFlowLiteCMetal.xcframework.zip", checksum: "0f2a9b68e34c66605a135e6a7e9a2bcad1c59a6b8980d281f7073ec94e59d032"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
