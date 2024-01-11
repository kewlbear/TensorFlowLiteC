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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240110/TensorFlowLiteC.xcframework.zip", checksum: "43c5214e8ce08e50334754363819511da399c4ff0c1c618daae325e4cac8f56c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240110/TensorFlowLiteCCoreML.xcframework.zip", checksum: "97750ffc751ae136beddb675d25c44fbee826f8417d80be82500cc67331777d5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240110/TensorFlowLiteCMetal.xcframework.zip", checksum: "aca3126597acf20f7358a71990a671b9c1a11f27a6739af81f2429b91a88b758"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
