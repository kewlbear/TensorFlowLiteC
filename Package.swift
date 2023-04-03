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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230402/TensorFlowLiteC.xcframework.zip", checksum: "3fc2a43c9f252f2016b6b65b3fb642b06c4e89cc73fbeade0305af5a2ce40993"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230402/TensorFlowLiteCCoreML.xcframework.zip", checksum: "14bf969ffaac099091183f8c17447ba43ff23b1b1d8f0a0dece0ba171452e55d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230402/TensorFlowLiteCMetal.xcframework.zip", checksum: "50a7e297668182b139ee232ec6d64ac41279525ef36d5279ccf0fa53873784a3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
