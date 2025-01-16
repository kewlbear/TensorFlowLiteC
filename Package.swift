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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250115/TensorFlowLiteC.xcframework.zip", checksum: "2056de7008f7a550b5ba3166c8af10b1543bcf76aa4fca08a7864eec156a51d2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250115/TensorFlowLiteCCoreML.xcframework.zip", checksum: "14d82f720ff0c615c519749e953b931268b4a44e2a48433538a0ff80ae13c408"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250115/TensorFlowLiteCMetal.xcframework.zip", checksum: "9cd40b6ecb03256550ef03afedd101cb67b5690d4859355a6914248c5e988836"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
