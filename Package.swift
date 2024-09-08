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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240907/TensorFlowLiteC.xcframework.zip", checksum: "40d28b5224293158110ad339ea6b707fe8a69eab1942354ef6ee6ed39bbdcc43"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240907/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e2c0137585826edeb4839ad7458508b2721a87ce38c257cc2d72b134cf12c151"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240907/TensorFlowLiteCMetal.xcframework.zip", checksum: "95f90c8624a93de9619ae8a7a58ab30d9627494792162140c92933e38b1e6788"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
