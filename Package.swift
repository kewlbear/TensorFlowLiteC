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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230106/TensorFlowLiteC.xcframework.zip", checksum: "4d2ccc80b9f9cfaad45f1f2d09d962f299e07dc2a759aad70b4a08221262af11"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230106/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e9eaa7ae4ceac33008ac266a2ba0766cbc918c805a305980bbaa82c421275389"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230106/TensorFlowLiteCMetal.xcframework.zip", checksum: "a2a0fb74ef38ff79ca8b390e5edeca1ee1baa41a117f326ba495bb32442c0f86"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
