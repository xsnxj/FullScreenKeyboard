FullScreenKeyboard
===========================

软件中文名称：完全屏幕键盘

软件英文名称：FullScreenKeyboard(简称FSK)

当前版本号：v1.1

发布时间：2007-12-8

首先讲一下这个软件的开发初衷，由于雷骑士1985(我们的阿雷)是残疾人，从小就得了先天性肌肉病，简单来讲就是全身肌肉萎缩。除了眼睛能动，嘴巴能动，手指能动，连手腕都动不了，你能够承受这么大的压力吗？之前阿雷上网完全只能借助轨迹球(一个类似鼠标的操作设备)，球体的滚动来控制光标的位置，左键和右键还是和鼠标一样的。而平时正常的点击和文字输入完全 都只能借助系统自带的屏幕键盘来实现，但是系统屏幕键盘有一个非常大的缺陷，由于不是从底层对键盘进行模拟，因此对于所有用Directx开发的游戏就无 法将键盘模拟信号发送到指定游戏中。因此，才非常有必要开发一款从底层进行键盘模拟的屏幕键盘软件，这样阿雷才能完全的玩到所有的游戏，当然那些全屏的游 戏，目前还是没有办法仅通过一个鼠标进行控制。

使用帮助
===========================

1. 键盘设置设置普通按键和扩展按键的延迟，单位是毫秒。一般情况下不需要修改，比如你在玩格斗游戏，需要定义一键必杀，就必需要将扩展按键延迟调为40毫秒，其它软件基本上扩展按键不需要延迟。(扩展按键即方向键,Shift,Ctrl,ALt此类有控制功能的按键，类似于字母数字等的，就是普通按键)

2. 鼠标按键设置主要用来调整左右手习惯的(适用于左撇子)，或者用来打开连击保持功能，因为默认情况下中键定义为连击保持。这里要说明一下4种状态的区别：
按住：就类似于键盘上按住一个键不放
连击：产生的效果和按住的区别就是产生连续一按一放的按键指令，主要应用在游戏中的一些连击。
按住保持：就类似于键盘上用一只手按住了某个键，以便用另外一个手再按一个键。(支持多个键进行按住保持操作，用于一些组合键)
连击保持：和连击的区别是，这个功能释放了鼠标，还是会自动产生连击指令，比如玩飞行射击游戏，只要把射击连击保持，剩下只要控制方向就行了，偶然丢个炸弹

3. 迷你键盘相对于完整键盘，仅仅是布局进行了精简，主要应用在文字输入量比较大的时候，比如聊天的时候。

注：由于本软件开发于VB，某些机器上可能会出现运行错误，请执行Dll目录中的install程序

下面重点针对游戏键盘进行指导操作：

1. 一键必杀功能：在游戏键盘顶部有一排按键，分别标为：Q1-Q10，利用这些组合键，您可以在类似《拳皇》这类格斗游戏中，一键发出所有的必杀，下面是详细的使用说明：
开始初始化：在游戏键盘左下角有个选择框，打勾了就表示目前已经进入初始化状态，接下来就可以按任意组合键之外的普通键，整个按的过程都会记录在临时变量中，任意时间都可以点击组合键，即表示将刚才记录的键盘记录保存到指定的组合键中。

    结束初始化：使左下角选择框取消打勾，就结束初始化状态，这个时候若之前的键盘记录没被赋值到某个组合键上，会自动进行清空

    组合键的使用：经过初始化的组合键，只要点击，就会重现原先记录的整个按键过程，比如在《拳皇》中，你可以只要点击一个组合键就放出超级大必杀

    注：具体的其它应用还要看你自己发挥了^_^


2. 游戏魔方功能：在游戏键盘右下角有一块被分成9格的区域，这个就是游戏魔方功能，通过游戏魔方，你可以完全流畅的单手应付大部分简单动作游戏，类似于恶魔城之类的。下面详细介绍游戏魔方的使用：
游戏魔方功能的打开：双击这个9格区域，就是打开游戏魔方功能

    游戏魔方的初始化：初始化过程和一键必杀很类似，只不过这里不像组合键仅仅是按左键，在游戏魔方上按左中右3个键，分别表示将记录数据赋值到相应的按键上。

    游戏魔方的使用：打开游戏魔方后，在游戏中，你只需将鼠标停留在9格区相应领域上，就会自动朝某个方向行走，9个格分别代表：
    左上　上　右上
    左　　中　右
    左下　下　右下
    在任意格上点击左中右3个键，都是执行您初始化时赋值的操作队列。
    注：若希望游戏人物不动，只要将鼠标停留在中间块就行了

    游戏魔方功能的关闭：切换一下切换模式，游戏魔方会重新进入关闭状态

License
================

hostsPlus is released under the MIT license:

> The MIT License
> 
> Copyright (c) 2012 Yanis Wang \<yanis.wang@gmail.com\>
> 
> Permission is hereby granted, free of charge, to any person obtaining a copy
> of this software and associated documentation files (the "Software"), to deal
> in the Software without restriction, including without limitation the rights
> to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> copies of the Software, and to permit persons to whom the Software is
> furnished to do so, subject to the following conditions:
> 
> The above copyright notice and this permission notice shall be included in
> all copies or substantial portions of the Software.
> 
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> THE SOFTWARE.