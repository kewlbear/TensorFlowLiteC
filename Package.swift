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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240721/TensorFlowLiteC.xcframework.zip", checksum: "432a13649a057df439ea74137a349b373d815a0c93235d856d34bb6c81b270e9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240721/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fc8c8e17c11a07fbee02b759ad8b395f1bd971ac6d53e97749f5716529d3dba3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240721/TensorFlowLiteCMetal.xcframework.zip", checksum: "f6da3d3c89cff5aeaceaf641a357803a01323a927db47d47a06d9ee17db2ccdc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
