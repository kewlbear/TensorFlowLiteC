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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250510/TensorFlowLiteC.xcframework.zip", checksum: "7beda8855cea4c306dbf90ef44c00a58c35b63436da02dbbbda1dc3fbb055a4f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250510/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dd76f72b72389752e2b9247b3f4c06f722e335f0e8bf349bafc9dc79579bf207"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250510/TensorFlowLiteCMetal.xcframework.zip", checksum: "400bd04bd97e3cf071c4e2af4d1f6c3ca998faeee32168fde663b70af52aa545"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
