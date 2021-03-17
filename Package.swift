// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
//                "TensorFlowLiteCCoreML",
//                "TensorFlowLiteCMetal",
            ]
        ),
    ],
    targets: [
//        .binaryTarget(name: "TensorFlowLiteC", path: "Frameworks/TensorFlowLiteC.xcframework"),
//        .binaryTarget(name: "TensorFlowLiteCCoreML", path: "Frameworks/TensorFlowLiteCCoreML.xcframework"),
//        .binaryTarget(name: "TensorFlowLiteCMetal", path: "Frameworks/TensorFlowLiteCMetal.xcframework"),
        .target(name: "TensorFlowLiteC"),
    ]
)
