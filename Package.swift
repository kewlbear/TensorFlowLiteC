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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210923/TensorFlowLiteC.xcframework.zip", checksum: "9a8443574145c7c5a1675cdbd3e664230a7651d73d8014dd4a21e26df0d57f44"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210923/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dfb3c20803f9e86ac7e96c2f0a2315a155024c26cee5f987139a5e59141bfe9d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210923/TensorFlowLiteCMetal.xcframework.zip", checksum: "358971d84d8af78213b871d6a9acdeeefe46ce888ff3ac36e3c37c87a49b2f56"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
