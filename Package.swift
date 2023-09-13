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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230912/TensorFlowLiteC.xcframework.zip", checksum: "e33967cb2b01bd5c4a327d1d45fafb6976740ea1f6423a9954de428b43cdc732"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230912/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b5736ab0c63fb0533a38f5f46c4ed1d5a2eae638d41012cdf4b6e3936982a02a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230912/TensorFlowLiteCMetal.xcframework.zip", checksum: "3e5cc5b6e7a90ec9204431c26087a330932cac8a190d8556c4d2337250a10544"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
