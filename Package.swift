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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240702/TensorFlowLiteC.xcframework.zip", checksum: "189189a2cd976773af0d4a5c80be074768c73739d021a885f2ea5f8503653b45"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240702/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6ce90ab10091070f8966fb22f56251de5e07627b68ad0d54f94725ea00c6f09e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240702/TensorFlowLiteCMetal.xcframework.zip", checksum: "c39a920bbe5c893425e1428609247de14ec30dfac4105d7401e02f50efce9659"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
