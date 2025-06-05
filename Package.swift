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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250604/TensorFlowLiteC.xcframework.zip", checksum: "94d12ccad0e8b05152e788ac33c826b0a90dd02d2b9db306d60a2052a73a0130"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250604/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2139a6a102bd8fd1577355217194e05434ac4ec10cc93766e3e21b68efd2f638"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250604/TensorFlowLiteCMetal.xcframework.zip", checksum: "9bd835ca181dcc056ada417698e58dc63e151e8fa26ca80473adb935ae84b6be"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
