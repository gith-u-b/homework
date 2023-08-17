# Homework - by sai

## 介绍
计算二维数组中连通对象数量

## Highlights
- count_objects 方法：这个方法接收一个二维数组 image 作为参数，并计算其中连通对象的数量。它通过遍历数组中的每个元素，并调用 dfs 方法进行深度优先搜索来实现。
- dfs 方法：这个方法是一个递归函数，用于从图像的每个像素点开始进行深度优先搜索，以找到所有连通的像素点。它使用了一个 visited 数组来跟踪访问过的像素点，避免重复计数。

## 具体逻辑
- 在 count_objects 方法中，通过遍历整个二维数组 image，判断当前像素点是否为 "1"，且未被访问过。如果满足条件，就调用 dfs 方法进行深度优先搜索，并在搜索结束后将 count 增加 1。

## 使用示例
代码的最后给出了两个示例数组 image，并分别调用 count_objects 方法来计算连通对象的数量。

## 环境要求
本地需要安装ruby，可以执行`ruby -v`

## 系统使用

### 测试

再根目录下执行此命令进行

运行程序
```
ruby connected_components.rb
```

# Thanks for reviewing
