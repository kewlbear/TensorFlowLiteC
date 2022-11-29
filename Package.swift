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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221128/TensorFlowLiteC.xcframework.zip", checksum: "7967ad259bec1d77e64fea985576ef3a055507c07858edb73784e350e5ccc29a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221128/TensorFlowLiteCCoreML.xcframework.zip", checksum: "392391094893f9e6aec76d68d51dd281538223ad3e4ddf4901f505e798d82423"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221128/TensorFlowLiteCMetal.xcframework.zip", checksum: "2845906547a30a5ef8b4356defc699b8f2cbd0bc6d60cf02003e4eb273a706d0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
