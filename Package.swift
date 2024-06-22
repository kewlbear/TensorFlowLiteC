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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240621/TensorFlowLiteC.xcframework.zip", checksum: "aa88e4742d670ea89dac4fd55b4e94af78382a77698b0a5452f126c4c6354f9a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240621/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bc21acf3bfd9775b10033742c0879cde52c8638ababe9ba85e88cf445df44e05"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240621/TensorFlowLiteCMetal.xcframework.zip", checksum: "b14dbdd5ba3a54035af1266b6f498ea5bd6375d6b55bc44fcdd2713220735f93"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
