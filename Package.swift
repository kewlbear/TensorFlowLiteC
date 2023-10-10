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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231009/TensorFlowLiteC.xcframework.zip", checksum: "8bd8decb7fab9303754188047aaa139e2651b9d9344111a039f5419cd9550b3c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231009/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0214ad016c4ace293614f7e030c829a1cc8719f9fb3a51c5579e88c2bd92b769"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231009/TensorFlowLiteCMetal.xcframework.zip", checksum: "2679c7c1ded372853ac087caf11a30f14ee7250e09ccd3081ac3735693bb80bf"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
