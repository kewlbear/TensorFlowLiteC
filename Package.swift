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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240925/TensorFlowLiteC.xcframework.zip", checksum: "a544e1867da52cc301aa95d9ba33b1449db71ef5aec17ecd51ed51c5cd057d2f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240925/TensorFlowLiteCCoreML.xcframework.zip", checksum: "77180a299cdd78d067e74967959ab7a3a8cc1211f49d21dfdbfbb0c25253d2a4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240925/TensorFlowLiteCMetal.xcframework.zip", checksum: "ba35d97b4b5c5f45f996861d438fb7e0e7b61ea9bf18760725e275cd25a30972"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
