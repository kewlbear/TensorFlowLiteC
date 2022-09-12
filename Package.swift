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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220911/TensorFlowLiteC.xcframework.zip", checksum: "e0710577050721db99d83c5c5b450856744766915d91d4665331b838e096be5e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220911/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6d49945e97c19e66fda40104486ddb00e307939b3fc1f36470bb860b2c184c58"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220911/TensorFlowLiteCMetal.xcframework.zip", checksum: "e37a44c7dd6590c3c3fd35b21c43254beda0cb648dfb1a587da4d4562a108996"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
