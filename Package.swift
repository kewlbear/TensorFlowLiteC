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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210807/TensorFlowLiteC.xcframework.zip", checksum: "d38118aee0137083a8889bf3deb256d6d7c7fc16c842e0951700a7f3f960d383"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210807/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e9e740ee7efd343b2841d4d265b94ba7df755147c2d8aa143aa38fc7890faded"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210807/TensorFlowLiteCMetal.xcframework.zip", checksum: "27e0e70caf325fa295461a5df14e77d7db14925bee8d0a9dbd12d687bc3c0ed9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
