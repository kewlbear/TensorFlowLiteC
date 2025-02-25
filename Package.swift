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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250224/TensorFlowLiteC.xcframework.zip", checksum: "bda72a8623f6fcabc52febb11e7a7f0183871c6427b29a20a30b36abeca9e172"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250224/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2afaf2782ad3c7e4f7705853ddc3d3388b400c9103643eb53f3ee9d01f250f29"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250224/TensorFlowLiteCMetal.xcframework.zip", checksum: "e27ad40fd0c4770c12f8f85297fbb8cc0336aab89a900242d2a365d2938789ca"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
