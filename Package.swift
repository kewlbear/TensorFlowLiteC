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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211027/TensorFlowLiteC.xcframework.zip", checksum: "45712aa405c325de6841f5989fcb3b8d4b2444bbbc97360f4d0d5932d6a954e7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211027/TensorFlowLiteCCoreML.xcframework.zip", checksum: "af618135193c3179650bf885d7eccc6a747139eb4fc82f568bc44f86aee6c44b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211027/TensorFlowLiteCMetal.xcframework.zip", checksum: "7b9f699548e97429db1e6ee075c1ff4513fb21f9bd92d694f237fd295db3f4ad"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
