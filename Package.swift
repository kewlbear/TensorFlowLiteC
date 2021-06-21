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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210620/TensorFlowLiteC.xcframework.zip", checksum: "b17cb5e13e001e87e61c8abc00544ac0076799bdb058b40eae1d7f8eaa9a3f2f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210620/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8047002825252f8a5ab2fc6a851d6c6ada4084d39d688a6f3aa6ad4441633e63"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210620/TensorFlowLiteCMetal.xcframework.zip", checksum: "bd99a049577d773d2df84686dc7297a17aac31628a84596a3544603db2b24098"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
