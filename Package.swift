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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211005/TensorFlowLiteC.xcframework.zip", checksum: "0586b05d9e8cbd1a19f7b237d25632b431ee1d2cbb0cdc876dd8d9cc238b1f31"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211005/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f87744bda13850dacb88a9c2318d935ab16124f6f59d77028b396513e7949829"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211005/TensorFlowLiteCMetal.xcframework.zip", checksum: "76c5022219aebf7f304106819ec470a26811e00ee955d8ca42a6258fc5407b2b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
