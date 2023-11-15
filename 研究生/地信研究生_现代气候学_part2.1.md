---
marp: true
paginate: true
# size: 4:3
# header: 'Header space'
# footer: 'Footer space'
title: 'marp-theme-nordic-beamer demo slide'
theme: "beamer"
# theme: nordic-beamer
---

<!-- Global style -->
<style>
</style>

# 1. 潜热：实际蒸散发模拟与不确定性分析

---

# 2. 感热: 热浪变化特征与成因分析

---

<br><br><br><br>
<br><br><br><br><br><br><br><br><br>

![bg 88%](images/ch02_大气的基本特征/了解温度吗.png)  

---

<h3>武汉市2003-2020夏季平均地温</h3>

![](images/ch02_大气的基本特征/武汉LST温度.png)  

> MODIS卫星观测

---

![height:17cm](images/ch02_大气的基本特征/温度三剑客.png)

---
<style scoped>
section {padding:15px; }
</style>

## 2.1. 理论基础

### 2.1.1. 体感温度

- 炎热指数(heat index)

- 湿球温度（wet bulb）

> 体感温度主要受两个因素影响：空气温度$T_a$和相对湿度$RH$

![bg right:60% 95%](images/ch02_大气的基本特征/炎热指数.png)  

<!-- ![bg 85%](images/ch02_大气的基本特征/ng_wet_bulb.png)   -->

---

## 2.2. 了解温度变化的途径

---

<h4>一维视角：站点 + 时间</h4>

![h:15cm](images/讲座-地信学院20230615-part2/武汉天气预报-01.png)

<https://www.easterlywave.com/weather/>

<!-- <https://www.zhihu.com/question/63785418/answer/2687416982> -->

---

![h:16cm](images/讲座-地信学院20230615-part2/中央气象台--天气.png)

<http://www.nmc.cn/publish/forecast/AHB/wuhan.html>

---

![h:16cm](images/讲座-地信学院20230615-part2/历史气候态.png)

<http://www.nmc.cn/publish/forecast/AHB/wuhan.html>

---

<h4>三维视角：空间+时间</h4>

![h:15cm](images/讲座-地信学院20230615-part2/T2m_ea_31.png)

<https://www.tropicaltidbits.com/analysis/models/?model=ecmwf&region=ea&pkg=T2m&runtime=2023061412&fh=-72>

---

<h4>位势高度</h4>

![h:15cm](images/讲座-地信学院20230615-part2/z500-01.png)

<https://www.tropicaltidbits.com/analysis/models/?model=ecmwf&region=ea&pkg=z500a>

---

## 2.3. 量化温度极端的方法

---

<h4>传统方法：</h4>

> 站点或网格尺度，不考虑空间上的连续；

![](images/讲座-地信学院20230615-part2/HW_传统方法.png)

Kong et al., 2020, JGR-A

---

<h4>现代方法：三维时空热浪追踪</h4>

> 考虑时间和空间上的连续性

![h:13cm](images/讲座-地信学院20230615-part2/HW_现代方法.png)

<https://www.esa.int/Applications/Observing_the_Earth/Using_a_data_cube_to_assess_changes_in_the_Earth_system>

<!-- Song, Kong*, et al., 2022, RS -->

---

## 2.4. 案例

---

<h4>案例1：2021-11 寒潮</h4>

11月5号 寒潮

11月20-22号 寒潮

<!-- ![bg right:75% 100%](images/讲座-地信学院20230615-part2/2021寒潮.png) -->

![h:12cm](images/讲座-地信学院20230615-part2/2021寒潮.png)

黑线为日温度；蓝线为滑动平均；红线为1981-2010气候态均值，及其置信区间；蓝色方框表示10月份至11月20日。

---

<h4>案例2：2022 富阳体感温度分析</h4>

![h:14cm](images/讲座-地信学院20230615-part2/富阳温度.png)

<https://github.com/rpkgs/rcli/blob/master/n02_%E5%AF%8C%E9%98%B3_%E4%BD%93%E6%84%9F%E6%B8%A9%E5%BA%A6%E5%88%86%E6%9E%90.ipynb>

---

<h4>案例3：2022 三维时空热浪检测</h4>

![bg right:60% 100%](images/讲座-地信学院20230615-part2/STHW-方法.png)

图 2.2 三维时空热浪检测方法。

- （a）STHW检测分为三个步骤：1.识别HW格点；2.空间上连接HW格点为HW事件；3.时间上连接HW事件为STHW事件。

- （b）2017年6月28日至7月1日，中国区域检测到的STHW事件。

:::footnote
宋和洋, 2023, 本科毕业论文
:::

---

![bg right:50% h:18cm](images/讲座-地信学院20230615-part2/2022最大一场.png)

2022所有三维时空热浪

![](images/讲座-地信学院20230615-part2/2022所有热浪.png)

---

<h4>2022年热浪多极端？</h4>

:::block
95%阈值下检测到的所有STHW
:::

![](images/讲座-地信学院20230615-part2/STHW_all.png)

---

<h4>2022年热浪多极端？</h4>

![bg right:65% 100%](images/讲座-地信学院20230615-part2/HWsum_99p-rank.png)

:::block
99%阈值下检测到的STHW排名
:::

2022 STHW的严重程度，一骑绝尘，达到一个新的历史高度。

---

<h4>2023年是否会出现超越历史水平的STHW？</h4>

---

<h4>不同人为强迫对STHW的影响</h4>

![](images/讲座-地信学院20230615-part2/all_scenario.png)

Kong et al., 2023, 待投稿

---

<h4>不同碳排放情景下STHW的变化规律</h4>

![](images/讲座-地信学院20230615-part2/温度对STHW的解释.png)


Kong et al., 2023, 待投稿

---

## 2.5. 热浪的气象学成因

### 2.5.1. 热流量方程

![h:14cm](images/补充-ch05_热浪研究方法/热流量方程详解.png)

---

<h4>温度的分析：</h4>

- 温度平流：风场

- 下沉增温：垂直运动

- 辐射加温：短波辐射、长波辐射

<hr>

<h4>相对湿度的分析：</h4>

    相对湿度RH是影响体感温度的另一重要变量

- 水汽输送

:::block
这些分析多少都牵扯到<span style='background-color:yellow;color:red'>**位势高度**</span>。
:::

---

<h4>华南地区夏季热浪期间位势高度</h4>

<span style='background-color:yellow; color:red'>为何大家都喜欢用位势高度分析热浪成因？</span>

<br>

![h:12cm](images/地信研究生_现代气候学_part2.1/罗明2017JC.png)

> Luo Ming, 2017, J. Climate
---

### 2.5.2. 位势高度

1. 气压高低
    > <u>*位势高度*</u>高（低）意味着同一平面上该点的气压也偏高（低）

2. 大气层平均虚温；
    > 根据压高公式，<u>*位势高度厚度*</u>与虚温$T_v$正相关

3. 风向（平行于等高线）；
    > 气压梯度力和科氏力的影响下，风向平行于<u>*等位势高度线*</u>；摩擦力影响下，逆时针偏转15°~30°

4. 环流形式与天气系统
    > 环流形式，如高低压系统（气旋、反气旋）、槽脊（槽前脊后阴雨）；
    > 天气系统，如副高、南亚高压、阻塞高压、切断低压、冷涡

5. 辐合辐散
