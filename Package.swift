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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211101/TensorFlowLiteC.xcframework.zip", checksum: "8febcacecafeba07310e84182f95358f03ddd174c3bf747c33f15f9de1f62eda"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211101/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e2c1383ffd27561a7579bac0e62a2ab32fdb98abe95e25bee1506859e29b2b38"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211101/TensorFlowLiteCMetal.xcframework.zip", checksum: "1318d5e431879e7af9a17348b65e0d2e1269fb695fa43561fac4bb1044cdcbd3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
