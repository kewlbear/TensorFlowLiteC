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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210515/TensorFlowLiteC.xcframework.zip", checksum: "9ebd9dea12475e796fa6c5665a51864a2ca0218356fafdb0e4de9cd513926174"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210515/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4f9ed5e7798f2dd97ee52944d100cd4ef65ee9b9123aed9a8849031d5f8cdc4f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210515/TensorFlowLiteCMetal.xcframework.zip", checksum: "fdbfbd7d1264d43c63c9dc64006e98ed854089c3a11881c707ce3b6f029939af"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
