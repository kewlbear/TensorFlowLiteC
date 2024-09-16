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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240915/TensorFlowLiteC.xcframework.zip", checksum: "9bcdd19fc401b7cec280ce3e5f4a546859b83b6cda6300e093b0fe359444f82f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240915/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f9f9a53ddef72f38724c437d1787557b1c116a535a5b31205c8f9e5c745fd551"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240915/TensorFlowLiteCMetal.xcframework.zip", checksum: "0b4d922a3fca4dd364396721b8fc698c467e54a7af9ac66bc4acf5206969f80e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
