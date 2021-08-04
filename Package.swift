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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210803/TensorFlowLiteC.xcframework.zip", checksum: "a40e9b93149e74946b430ecadd043bdd4eaa62562a337ee186104d170fc3bee5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210803/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cd56561a3864cf73eabe2767400fdc246d91ab85b38c337430eaacf62970dd2f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210803/TensorFlowLiteCMetal.xcframework.zip", checksum: "3c33064fd82b1f85064ece9da37fe9c7b435c923ee8aedb7bf79c1d774ec9b39"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
