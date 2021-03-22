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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteC.zip", checksum: "6e114e9a72c2a4ff4b95fd1b2642e5f1cb49c26c036e12d6ba7c3d15d2bdd2b5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteCCoreML.zip", checksum: "0e48804d4942cb8d75c5936760ce944d20c1d8c926bb1af0d7f42e9f12b8bcc8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteCMetal.zip", checksum: "1c4e97559b2a81d4642bb47a6973ed57c82994cc46eb3b2d3714d1cb47058199"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
