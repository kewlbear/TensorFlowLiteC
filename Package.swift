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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241128/TensorFlowLiteC.xcframework.zip", checksum: "3340f57a00dc885e2d00b157404120b8634a188e0134ec171adfa4097690a284"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241128/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d40f38c47e9fa41a45fdcb4fb8871242fef2c6625412954a4787311619379c23"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241128/TensorFlowLiteCMetal.xcframework.zip", checksum: "c6d9a578dc39e92f16f6bae688a00dc3188d1a17dd344caa09a1cd90566d0dcc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
