# Example

![](./example.png)

# Progress

![](./progress0.png)
![](./progress1.png)


# Output

![](./output.png)

# Problem

* 左を向きながら目を閉じるとまぶたを目玉が貫通する・・・
* 目を閉じながら（顔側Meshをいじりながら）目玉Meshも動かすことはできない
* 同一メッシュにする？
* 一般的に言うと別MeshのBlendshapeが重なる部分で問題がおこる			

![](./problem.png)

# How to make next time

* 顔に目の形でMeshはってEでくぼませる
* 目玉も同一Mesh管理するために、くぼませた後で目玉の形でMeshはる

# Hair bone

* Automatic Weight : Select mesh, bone, Ctrl+P

![](./hair-weight.png)

# Body

![](./body.png)
![](./rough-texture-mapping.png)

# Ear

![](./ear-basis.png)

* Basisの耳を丸くして丸みをもたせたらBlendshape後の方に反映されず、各Blendshapeにも同様の変形をする必要があった

# Hand

![](./hand.png)

* for bone