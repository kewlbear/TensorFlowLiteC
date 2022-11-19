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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221118/TensorFlowLiteC.xcframework.zip", checksum: "f8ea2956f356a0ddd4b23038a52fd0dd56869a2118be148995cced7e99372c6f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221118/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9f72df5decc5bfddec8702f58577cbd614ed7d5f1edec58b79b76e6b9eeb9b98"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221118/TensorFlowLiteCMetal.xcframework.zip", checksum: "5147a54d577b007ecade850f4fa5ec672bb975f7f97f8cfcf741b259c786ba69"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
