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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240823/TensorFlowLiteC.xcframework.zip", checksum: "41857180bf62ef1b1dc48c5785f19822deae37bb664b10560209880b3313fcd6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240823/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3238fbbe879adca6a4996c3fdd011279aa5adc689f7fe1f45199584daeda3571"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240823/TensorFlowLiteCMetal.xcframework.zip", checksum: "1f8ace2cde514f1485a573b6c5c70ebeeba50a2e464aed8c8e0e67e4f73330ed"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
