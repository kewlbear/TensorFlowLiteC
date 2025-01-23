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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250122/TensorFlowLiteC.xcframework.zip", checksum: "21a3068bcf1bf84921419a6827cd5d9790e199033922823b6b90a312056e876b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250122/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f2e5f6b52752427da6d91d9e5f3e4aaa79ef0a42603524a932879269a98ff76b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250122/TensorFlowLiteCMetal.xcframework.zip", checksum: "23581b672caaf3f019dfb604601418d61174c427ad30ee0f90a9f9ac2187154f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
