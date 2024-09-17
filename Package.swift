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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240916/TensorFlowLiteC.xcframework.zip", checksum: "3761636d9000ff5deeadc8cf277b3e5a4e9e8a386c16fd3b6ec5064b0cefcb53"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240916/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0cf9a2a86f4c3ae6988893e325dcfb3f785314025bc7d0be323a4ea0b8f592b3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240916/TensorFlowLiteCMetal.xcframework.zip", checksum: "0a33d6178c4c45509ed7842af0aa230edc1b0b52da6d6b2df9c70d7354150bb7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
