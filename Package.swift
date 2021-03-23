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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210322/TensorFlowLiteC.xcframework.zip", checksum: "870ae33dee56b5251ffb05ad75a96d345b9c862f4470e5c00b23706261c0444f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210322/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c7114ec1838d9318c03130cc0ed81fe4b59990e6e5695797c0cd0ff28f5e2d0a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210322/TensorFlowLiteCMetal.xcframework.zip", checksum: "9c48ac1daf3382e657cf6cf5775bd90ff256215fdd58ceb31ae19ecff0936290"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
