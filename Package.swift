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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240614/TensorFlowLiteC.xcframework.zip", checksum: "cd3a7a0295ca049d66368108dea360ee220244936b970f8c1baf8da3082c2bb1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240614/TensorFlowLiteCCoreML.xcframework.zip", checksum: "85c7884789e5fb7291b7dc8cca062a303bc0b10ca50a503ea943dc605847d006"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240614/TensorFlowLiteCMetal.xcframework.zip", checksum: "7aa1296aa55fdcf6335fc4f41d8e68acc5396a180a5c122ba4c2612f8efef5e3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
