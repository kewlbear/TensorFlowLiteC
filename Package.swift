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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220925/TensorFlowLiteC.xcframework.zip", checksum: "452d0cf1e1ca87580ba2cfabb04fdf7f9da160ee14436d503f1e548d17b56107"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220925/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d5934e7467dfa1de81160ce82e2df3ae29e2c2e278c266e3b30af1b395d2054b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220925/TensorFlowLiteCMetal.xcframework.zip", checksum: "3ff7a8af17e75172836a192a634eac68fc91f105978d01d26a3a748149ae511d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
