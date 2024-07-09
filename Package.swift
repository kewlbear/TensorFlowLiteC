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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240708/TensorFlowLiteC.xcframework.zip", checksum: "16ef8d6c07ea32c53e229108dcc4cee51f67cde31d96d0e365bd626aa2782e64"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240708/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bf9d39bc109bd9c2298e8786cee5d2a917cef093b5df7336046da2b13bde8d24"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240708/TensorFlowLiteCMetal.xcframework.zip", checksum: "8449bd9ba48c3b700b00e1b412291ac440a7b1addcf15238e722383f1468f68f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
