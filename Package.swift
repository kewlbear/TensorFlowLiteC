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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210329/TensorFlowLiteC.xcframework.zip", checksum: "724a35c37e9288fc4cd375e4df5ca3243d4305c6f788dfcff1f61b76cafd2f12"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210329/TensorFlowLiteCCoreML.xcframework.zip", checksum: "91179efb4e6d1734f3faa085b4de1c543ae9aafe08ca4e50e1c33c3ca5e561c9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210329/TensorFlowLiteCMetal.xcframework.zip", checksum: "b9ea2909c01278adbeb86b4493fc4af35dd53d64d03f44a70a36d0204c02de93"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
