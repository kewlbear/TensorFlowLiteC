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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240411/TensorFlowLiteC.xcframework.zip", checksum: "91b817f4580d2fbd6f364b25794777143a8266e906c2757629c44daa71d015ef"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240411/TensorFlowLiteCCoreML.xcframework.zip", checksum: "74cd9f733b799019419b99b7d11ec779b1afd030ecd6d4cd6793558d156aade4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240411/TensorFlowLiteCMetal.xcframework.zip", checksum: "9b48f97ca647dc2b15ad6682f72f109138873c65cc60a0a7f0585ffb7c52f135"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
