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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231205/TensorFlowLiteC.xcframework.zip", checksum: "d4fd6634912989d8a993c42acc6493dd8011115335e1d41cfddb00bd05ee7b76"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231205/TensorFlowLiteCCoreML.xcframework.zip", checksum: "00af8ef930a66795ba1a05f3fb322ac2daf23a133b6ead13d6b2a4ae5d16d109"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231205/TensorFlowLiteCMetal.xcframework.zip", checksum: "0c2526c3ddbe641ab3db3426ae98a968f3750d2b4f8984af282bd1e38109cffb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
