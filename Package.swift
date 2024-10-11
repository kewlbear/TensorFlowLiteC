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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241010/TensorFlowLiteC.xcframework.zip", checksum: "eb0039eb182f1fd4808a49f6847c4c6eb16d828a678d6313a5c7de4d630baebb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241010/TensorFlowLiteCCoreML.xcframework.zip", checksum: "48a0d49eb0c171c1c6d2861b71e8a96482f77a13bd2a3cb6b1b04ce653c284b9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241010/TensorFlowLiteCMetal.xcframework.zip", checksum: "26f10b0c5b1c4fc5150cf541fa500a5e6f03e346d56d54e05e843561e87db715"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
