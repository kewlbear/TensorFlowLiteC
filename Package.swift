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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240302/TensorFlowLiteC.xcframework.zip", checksum: "9a393b92d60a9ae20b16382f3f0afe5cddffc898543a30520d88b67f0d3ef7c5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240302/TensorFlowLiteCCoreML.xcframework.zip", checksum: "18689a745fe00349f4f2d5102813011906e34a531ff56faac18b41104f04a090"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240302/TensorFlowLiteCMetal.xcframework.zip", checksum: "03e908b9371f08cf85795a9b7f9bf1cee5d47b165973ba8ba3c14409fac4ca56"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
