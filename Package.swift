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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240402/TensorFlowLiteC.xcframework.zip", checksum: "76bbc6b2677c45354ad8bf43144b8ef59ba2aa58a1293122d4f94abbbae660c1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240402/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3c680d443d41f63fd92ecd6cc8a735d2a81b9953cffbf18403f8edf5dedd47a3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240402/TensorFlowLiteCMetal.xcframework.zip", checksum: "466c5dbdee8330a7e858e69e569d4c17c40e493703033fb2542749ecb876d15e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
