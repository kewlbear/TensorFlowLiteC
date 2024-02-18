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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240217/TensorFlowLiteC.xcframework.zip", checksum: "d827012a3a8a892dfb24319b757d5f81cf29fe75eb3fad667d49415ac08c12e6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240217/TensorFlowLiteCCoreML.xcframework.zip", checksum: "67fceae885246821fe3f97609998dd7976259473033b32fc974a8ab075ffacf9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240217/TensorFlowLiteCMetal.xcframework.zip", checksum: "19e9e950dbaa38395d83c19d537b0010c3c58f710ea2dd927736d4e647b0ee60"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
