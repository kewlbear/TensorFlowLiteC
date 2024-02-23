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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240222/TensorFlowLiteC.xcframework.zip", checksum: "d48d1810573535f10f5a995441c1941607869b5ff152f2db07f87065ef2e1303"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240222/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2361c60e4b27db4abd8a1810a04b5dc688a0fb49bffcf40a788e02b066a1dda5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240222/TensorFlowLiteCMetal.xcframework.zip", checksum: "c2b15e6a8fd2935b97512c848fecf83a07569f49a7c79a0a7610c7778c9aa08a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
