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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210601/TensorFlowLiteC.xcframework.zip", checksum: "bd50ab0af50e6796c5ad6f959c77fa00e1bbad75bf3389fd89b6ed04e98a21ae"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210601/TensorFlowLiteCCoreML.xcframework.zip", checksum: "44d3840446d1e532e0845df5068c8b23eb5c9e3bdb4998f047fd05d950550fc1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210601/TensorFlowLiteCMetal.xcframework.zip", checksum: "12f7160e2feee27416aa1032f3bb72f682d23afe9abda26e441aa54a3e741d69"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
