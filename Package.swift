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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240701/TensorFlowLiteC.xcframework.zip", checksum: "63084b1cf4849ca4bf2329dac4d86ad0c85d864ae35c06d6f6e9114abc7ada98"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240701/TensorFlowLiteCCoreML.xcframework.zip", checksum: "32d374f171436e003c12b24f6c90843e9134f7ab96aa0ab4df7d35117898ed60"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240701/TensorFlowLiteCMetal.xcframework.zip", checksum: "2b0a009e7326296c7d824b839e7b0705ea4ae207072aaab8cbb8a8fa2329b896"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
