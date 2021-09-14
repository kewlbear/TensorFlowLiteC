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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210913/TensorFlowLiteC.xcframework.zip", checksum: "e1327ca6cc76cf1e82bbb0c9bd3c97d2a05bf36715ee4cc847f1f521f897f2ae"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210913/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e8f279954f5e3e0935d8b9585552cae7f9eb83c412b0ffe58d1137cb766c8de5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210913/TensorFlowLiteCMetal.xcframework.zip", checksum: "a02871776936e17eaff40c4cb124a50857f93291c678df12735591e2ce4347d9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
