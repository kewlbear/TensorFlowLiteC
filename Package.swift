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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240318/TensorFlowLiteC.xcframework.zip", checksum: "625dd3a962916397f69e606e286e4098df0a56382abd38c50180cc937cf349a8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240318/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a66e3a7a718391d9e739a2ea5a7d33f60cb824f35b45fc441e7a0b16792a085c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240318/TensorFlowLiteCMetal.xcframework.zip", checksum: "dbc3fa5e175aaf3e8ebb84b186116eb20bcfab24758b9b64df8f9c1ae44a54bc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
