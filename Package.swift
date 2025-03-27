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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250326/TensorFlowLiteC.xcframework.zip", checksum: "0607505d9010b31696084e07095eea88cb7b8bc0f2e293910a3bd0b3871f86ad"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250326/TensorFlowLiteCCoreML.xcframework.zip", checksum: "93df37dc6bd128f87cae1c57e001d7fc0b8c3e42052d111af677a765f003ae64"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250326/TensorFlowLiteCMetal.xcframework.zip", checksum: "20d63173ade2b5ea980bfedea555524cc3237d5119ba07f83c2de729b3bbfe5c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
