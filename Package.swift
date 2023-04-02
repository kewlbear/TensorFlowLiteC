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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230401/TensorFlowLiteC.xcframework.zip", checksum: "27e85d7b5019a035d732cde759a6afb140853306f2fb4fd27cfb9763bffefe40"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230401/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ecc634e36a7fc73c768178b8f5e3982f9ed1a5cd78faceb58b7d0230493d5405"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230401/TensorFlowLiteCMetal.xcframework.zip", checksum: "1bfe337b48409985d60cf0e57129fb05b0b243f494df882404fa764a0402d675"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
