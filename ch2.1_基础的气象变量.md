---
marp: true
paginate: true
# size: 4:3
# header: 'Header space'
# footer: 'Footer space'
title: 'ch02_大气的基本特征'
# theme: "my-theme"
theme: 'beamer'
---

<h1>水文气象学–02基础的水文气象变量</h1>

<br>

孔冬冬，__kongdongdong@cug.edu.cn__
办公室：科教六楼307
中国地质大学大气科学系 · 武汉

:::footnote
2024-11-29
:::

---

<h2>QA</h2>

<h5>1. 夏天干燥还是冬天干燥？</h5>

<h5>2. 沿海地区与内陆地区水汽含量差别多大？</h5>

---

<!-- Global style -->

# 1. 大气的成分与垂直结构

---

## 1.1. 大气的成分

### 1.1.1. 干空气

<img src="images/ch02_大气的基本特征/大气的成分.png" alt="image-20221110193438689" style="zoom:67%;" />

---

### 1.1.2. 水汽

水汽是唯一能够发生相变的大气成分，常见的云、雾、雨、雪等天气现象，都是水汽相变的表现。

<center>表1.4 各种温度和压强下的饱和比湿值</center>

<div align=center>
<img src="images/ch02_大气的基本特征/大气的水汽.png" width="55%" height = "97%" />
</div>
<!-- <img src="images/ch02_大气的基本特征/大气的水汽.png" alt="image-20221108100823175" style="zoom: 40%;" /> -->

---

## 1.2. 大气的垂直结构

![bg right:45% 100%](images/ch02_大气的基本特征/大气的垂直结构)

1. **对流层**

   对流层顶的气压约为200hPa。因此，<span style='background-color:yellow'>对流层的范围如果用气压表示，约为1000hPa~200hPa。</span>

   大气质量的3/4，水汽质量的9/10都在对流层。1.5～2km高度的水汽仅为地表的一半，5km高度的水汽是地表的1/10，再往上更少。

   （1）温度随高度的增加而降低。

   （2）对流运动明显。

   （3）气象要素分布不均匀。

   <!-- http://www.cctv.com/weather/right28.html -->

---

![bg right:60% 85%](images/ch02_大气的基本特征/大气的垂直结构-2.png)

<span style='color:red'>**重点**</span>

- **850hPa**: 地表风速、温度、水汽
  
- **500hPa**: 大气环流形式
  
- **200hPa**: 极涡、急流

---

2. **平流层**

   对流层顶向上到50公里左右为平流层，平流层顶的气压**约1hPa**；

   飞机飞行的位置；

   温度随高度升高而升高。主要是由于臭氧的作用。臭氧吸收太阳紫外辐射，使大气温度增加。臭氧的分布决定了平流层温度的垂直分布。

<!-- 3. __中间层__
4. __暖层__
5. __散逸层__ -->

---

# 2. 理想气体状态方程

---

## 2.1. 气压

**气压**：气体对某一点施加的流体静力压强，来源是大气层中空气的重力，即为单位面积上的大气压力。单位：帕斯卡，简称帕（Pa, 1 N/m2）。
<br>

在海平面的平均气压约为1013.25 hPa（76cm水银柱），这个值也被称为**标准大气压**（简称$1atm$）。

$$
p = \frac{F}{A} = \frac{mg}{A} = \frac{(m_d + m_v)g}{A}
$$

> $m_d$: 干空气的质量
> $m_v$: 水汽的质量

**通常所说的气压$p$，包含了干空气的气压和水汽的气压。**

- 水汽的气压一般用符号$e$表示
- 干空气的气压为：$p - e$

---

**应用：**

<br>

- 静力平衡，热空气上升，冷空气下降。
   > 联想物体在液体中的浮力，何时会上浮、何时会下沉？

---

### 2.1.1. 饱和水气压

**饱和水汽压**：指一定体积空气，在某一温度条件下所能容纳的<u>最大水汽量所具有的压力</u>，用$es$表示。

<u>**饱和水汽压随温度升高而升高，随温度降低而降低。**</u>

**应用：**

1. **大气的横向运动**
   
2. **大气的垂向运动**
   + 上升运动：$T$下降，$es$下降，$RH$升高，易降水，云雨；（<u>低压系统</u>）
   + 下沉运动：$T$升高，$es$上升，$RH$降低，不易降水，高温干旱；（<u>低压系统</u>）

3. **迎风坡、背风坡**
   > 迎风坡降水（同时水汽从气态转化为液态，释放热量，背风坡气体温度偏高）

4. **早晨露水**

5. **全球变暖背景下的极端事件**

---


<img src="images/ch02_大气的基本特征/image-20221108110836312.png" alt="image-20221108110836312" width="1700" style="zoom:50%;" />

$$
es(T_a) = 0.6108 \;exp (\frac{17.27 T_a}{T_a + 237.3})
$$

> $es(T_a)$：饱和水气压，kPa
> $T_a$：空气温度，℃
> $\Delta$：$es(T_a)$的斜率

**Reference**

1. Allen, R., Pereira, L., Raes, D., & Smith, M. (1998). *J. Hydrol.*, *285*, 19–40.

---

## 2.2. 大气状态方程

根据大量的科学实验总结出，一切气体在压强不太大，温度不太低（远离绝对零度）的条件下，**一定质量气体**的压强和体积的乘积除以其绝对温度等于常数，即:

$$
\frac{p_1 V_1}{T_1} = \frac{p_2 V_2}{T_2} = ... = \frac{p_n V_n}{T_n} \\
\frac{p V}{T} = 常量
$$

$$
p V = n R^* T
$$

> $p$：气压($Pa$)
$V$：体积($m^3$)
$n$：气体物质的量($mol$)
$T$：温度($K$)
$R^*$：<u>理想气体常数（也被称为普适气体常数）</u>(J mol-1K-1 ) 

---

**根据高中化学**，标准状态下(273K,1atm) ，1mol气体的体积为22.4L，带入上述公式，可得：

$$
\begin{align*}
R^* &= \frac{p V}{n T} \\
&= \frac{1.013 × 10^5 Pa × 22.4× 10^{-3} m^3 }{1mol × 273K} \\
&= 8.31 Pa·m^3 / (mol·K) = 8.31 J / (mol·K)
\end{align*}
$$

---

## 2.3. 理想气体状态方程的密度形式

$$
p V = \frac{m}{M} R^* T \\
% p \alpha =R T
$$

$$
p = \rho \frac{R^*}{M} T = \rho R T, (R = \frac{R^*}{M}) \\
$$

> $M$：相对分子质量（g / mol）；
> $m$：气体的质量 （g）；
> $R$: 为比气体常数（$J · g^{-1}K^{-1}$），$R=R^*/M$；
> $R^*$：$R^*$为摩尔气体常数，$R^*=8.314 J · mol ^{-1}K^{-1}$。

---

干空气与水汽的相对分子质量，分别用符号$R_d$和$R_v$来表示（下标$_d$表示dry，$_v$表示water）。

根据高中化学可知，$M_d = 28.97 g/mol, M_v = 18 g/mol$。带入上述公式，可得

- 对于干空气，$R_d = R^* / M_d = 8.314 / 28.97 = 0.287\;(J ·g^{-1}K^{-1})$
  
- 对于水汽，$R_v = R^* / M_v = 8.314 / 18 = 0.4615 \;(J ·g^{-1}K^{-1})$
  
  $$
  \epsilon = \frac{R_d}{R_v} = \frac{M_v}{M_d} ≈ 0.622,  \\
  \frac{R_v}{R_d} = \frac{1}{\epsilon} ≈ 1.608
  $$

---

## 2.4. 空气密度与虚温

$$
\rho_d = \frac{p - e}{R_d T} \\
\rho_v = \frac{e}{R_v T} \\
$$

$$
\begin{align*}
\rho &= \rho_d + \rho_v \\
     &= \frac{p - e}{R_d T} + \frac{e}{R_v T}
\end{align*}
$$

把$R_v$替换掉（$R_v = \frac{1}{\epsilon} R_d$）

---

$$
\begin{align*}
\rho &= \frac{p - e}{R_d T} + \frac{e}{R_v T} \\
     &= \frac{p - e}{R_d T} + \frac{\epsilon e}{R_d T} \\
     &= \frac{p - (1 - \epsilon)e }{R_d T} \\
     &= \frac{p}{R_d T} (1 - 0.378 \frac{ e }{p})
\end{align*}
$$

> $p$：湿空气的总压强；
$e$：水汽部分的压强（即前述的水汽压）；
$p-e$： 干空气的压强；

<!-- ---

### 2.4.1. 虚温

**虚温($T_v$)**：<u>与湿空气同气压、同密度情况下，干空气对应的温度。</u>
$$
\rho = \frac{p}{R_d T} (1 - 0.378 \frac{e }{p}) \\
   ≈ \frac{p}{R_d T (1 + 0.378 \frac{e}{p})}  \\
$$

$$
p = \rho R_d T (1 + 0.378 \frac{ e }{p})
$$

则$T_v$:
$$
T_v = T (1 + 0.378 \frac{e }{p})
$$

__虚温的意义__：将混合气体的$R$转变为$R_d$，将水汽<u>和干空气的混</u>合转变为<u>干空气</u>。

<span style='background-color:yellow'>后续在位势高度的含义中会有应用</span> -->

---

# 3. 基本气象要素

---

## 3.1. 水汽含量与湿度

- 混合比（mix ratio, $w$）

$$
w = \frac{m_v}{m_d}
$$

- 比湿（specific humidity, $q$）

$$
q = \frac{m_v}{m_d + m_v}
$$

- 绝对湿度（水汽密度, $X$）

$$
P = \rho R T, \\
X = \rho_v = \frac{e}{R_v T} = \frac{\epsilon e}{R_d T}
$$

- 相对湿度（relative humidity, $RH$）

$$
RH = \frac{e}{es}
$$

<!-- > Recall: 饱和水气压与温度的关系。 -->

---

### 3.1.1. 小试牛刀： 已知$e$, $P$求$q$

$$
\begin{align*}
\rho_v &= \frac{e}{R_v T} = \frac{\epsilon e}{R_d T}, (R_v = \frac{R_d}{\epsilon}) \\
\rho_d &= \frac{p - e}{R_d T} \\
\end{align*}
$$

<br>

答案：

$$
\begin{align*}
q &= \frac{\rho_v}{\rho_d + \rho_v} \\
  &= \frac{\epsilon e}{p - e + \epsilon e} = \frac{\epsilon e}{p - (1 - \epsilon)e}
\end{align*}
$$

- <https://cug-hydro.github.io/HydroTools.R/articles/vapour_press.html>

- <https://github.com/CUG-hydro/HydroTools.R/blob/master/vignettes/vapour_press.Rmd>

---

### 3.1.2. 水汽压与水汽密度

$$
\begin{align*}
\rho_v &= \frac{e}{R_v T} = \frac{\epsilon e}{R_d T} \\
\rho &= \frac{p}{R T} \\
\end{align*}
$$

$$
\begin{align*}
\frac{e}{p} &= \frac{\rho_v}{\rho} \frac{R_v}{R}
≈ \frac{\rho_v}{\epsilon \rho}
, (R_d ≈ R) \\
\end{align*}
$$

$$
\rho_v ≈ \epsilon \rho \frac{e}{P}
$$

a. 蒸发过程中，水汽压是贸易的货币。感热与潜热都先转化为水汽压，然后进行等价的交易。

b. 水汽密度不易求。因此，通常替换成空气密度。
<hr>

<span style='color:red'>**应用：**</span>
1. 干球温度与湿球温度的转换
2. 水面蒸发

---

### 3.1.3. 气化潜热

1. **气化潜热**：单位质量的液体，从液态变为气态所需吸收的热量。

   $$
   \lambda = 2.5 - 0.0024 T_a, (MJ/kg)
   $$

   <span style='color:red'>**单位的转化（重点）**</span>：MJ/kg -> mm

   > Q1: 地表单位面积上，$1mm$深的水，气化所需的能量？

   > Q2: 假设地表净辐射$R_n$为$100 W/m^2$，能量全部转化为蒸发，一天的蒸发量是多少？


   > Q3: 单位体积空气，已知空气密度$\rho$, $q_1$, $q_2$，写出LE的表达式

   > Q4: 与Q3相同，只是$q$换为$e$，已知$e_1$，$e_2$，写出LE的表达式

2. 升华潜热，单位质量的液体，从固态变为气态所需吸收的热量。
   冰面温度−40℃ ~ 0℃时，升华潜热近似为常数。

$$

\lambda_s = 2.5 + 0.334, (MJ/kg)
$$

---

### 3.1.4. 比热容$Cp$

:::block
比热容$Cp$：单位质量，温度升高1℃所需的能量。
:::
  > 空气的比热容为$1.103×10^{-3} MJ kg^{-1} ℃^{-1}$。

<br>

$$
H = Cp * m * \Delta T
$$

<br>

> Q1: 单位体积空气，已知空气密度$\rho$, $T_1$, $T_2$，写出$H$的表达式

---

## 3.2. 温度
<br><br><br><br><br><br><br><br><br>

![bg 88%](images/ch02_大气的基本特征/了解温度吗.png)  

---

<h3>武汉市2003-2020夏季平均地温</h3>

![](images/ch02_大气的基本特征/武汉LST温度.png)  

> MODIS卫星观测

---

<h4>Landsat</h4>

- 关于Landsat9卫星的九个小知识，<https://www.bilibili.com/video/BV1rL4y18731>

- 武汉市地表温度，<https://code.earthengine.google.com/420e613268424caa78a375bfddd0890c>

<h4>MODIS地表温度</h4>


---

![height:17cm](images/ch02_大气的基本特征/温度三剑客.png)

---

### 3.2.1. 湿度计常数$\gamma$

> 从大气温度$T$→湿球温度$T'$过程中，水汽压从$e →es(T')$。蒸发所需能量全部来源于空气降温。

- (a) 水汽浓度升高（$m_v' > m_v$）；
   潜热的变化：$\lambda E = \lambda (m_v' - m_v)$

- (b) 空气温度下降（$T' < T$）。
   感热的变化：$H = \rho V c_p (T'-T)$

$$
\begin{align*}
\lambda E + H &= 0 \\
\lambda (m_v' - m_v) + \rho V c_p (T'-T) &= 0 \\
\lambda (\rho_v' - \rho_v) + \rho c_p (T'-T) &= 0 \\
\lambda (\rho_v' - \rho_v) &= -\rho c_p (T'-T)
\end{align*}
$$

---

将干球温度($T$, $e$)和湿球温度($T'$, $es(T')$)的温度和水汽压带入：

> Recall: $\rho_v ≈ \epsilon \rho \frac{e}{P}$

$$
\lambda (\rho_v' - \rho_v) = -\rho c_p (T'-T)
$$

$$
\begin{align*}
\lambda (\epsilon \rho \frac{e_s(T')}{P} - \epsilon \rho\frac{e}{P}) &= - \rho c_p (T'-T) \\

\lambda \epsilon \rho ( \frac{e_s(T') - e}{P} ) &= - \rho c_p (T'-T) \\

e_s(T') - e &= - \frac{c_p P}{\lambda \epsilon } (T'-T) \\

e_s(T') - e &= - \gamma (T'-T), (\gamma = \frac{c_p P}{\lambda \epsilon }) \\
\end{align*}
$$

$\gamma$被称为<span style='color:red'>**湿度计常数**</span>，单位$℃/kPa$，表征的含义是：

> 在Rn=0的状态下，<u>升温</u>（降温）所需的能量全部来源于<u>水汽液化</u>（水的蒸发）。
> 这种条件下，在温度升高1℃，水汽压的变化量。

---

<h3>实战</h3>

干球温度（$T_a$）、湿球温度（$T_w$）、露点温度（$T_a$）
<br>

1. $T_a - T_{dew}$较大说明什么？
   > 直接体现饱和水汽压差(VPD)较大、RH较小

2. $T_a - T_w$较大说明什么？
   > 直接体现蒸发降温的幅度较大，间接体现RH小。

---

![h:15cm](images/ch02_大气的基本特征/ecmwf_2022111018_fh24_sounding_33.69N_114.43E.png)

<https://www.tropicaltidbits.com/analysis/models/sounding/?model=ecmwf&runtime=2022111018&fh=24&lat=33.69&lon=114.43&stationID=&tc=&mode=regular>

---

<style>
</style>

### 3.2.2. 水面蒸发

<style scoped>
section {
   padding: 35px;
}
.leftpane {
  width: 100%;
}
</style>

<div class="leftpane">

水汽充足：意味着最终都能达到饱和水汽压$e_s$

1. 无外界供能下($\lambda E + H = 0$)：
   X -> Y点

2. 有外界供能下：
   Y -> A点移动
   （A点左侧、右侧均有可能，看Rn的量级）。

<!-- > 小尺度意味着蒸发不会对周围的气象因素造成影响，$T$不变。 -->
</div>

![bg right:68% 90%](images/湿球温度计算.png)

---
<style scoped>
section {padding:15px; }
</style>

### 3.2.3. 体感温度

- 炎热指数(heat index)

- 湿球温度（wet bulb）

![bg right:70% 95%](images/ch02_大气的基本特征/炎热指数.png)  

---

![bg 85%](images/ch02_大气的基本特征/ng_wet_bulb.png)  

---
## 3.3. 风速与风羽

<style scoped>
section[data-marpit-advanced-background] {
  padding: 55px;
}
</style>
风向：风吹来的方向（风从哪里来）。

风羽：包含风向杆、<span style='background-color:yellow'>风矢（短：2m/s、长：4m/s）</span>、风三角（20m/s）
<br>

> a. <span style='color:red'>**两长一短（9~10m/s）需警惕**</span>
> 
> b. $U_2$ -> $U_{10}$。气象场观测的一般是2米风速$U_2$，再分析资料一般提供的是10m风速$U_{10}$，请注意转换。

![bg right:40% 90%](images/风羽-2.png)  

---

<h3>风速等级</h3>

<!-- <style scoped>
section[data-marpit-advanced-background] {
  padding: 55px;
}
</style> -->

![bg right:90% height:100% width:70%](images/风速等级.png)

---

<https://www.tropicaltidbits.com/analysis/models/?model=gfs&region=ea&pkg=T850&runtime=2022111100&fh=-18>

---

## 3.4. 降水

**降水**：包括降雨和降雪。

**日降水**：早8点~第二天的8点。

   > <span style='background-color:yellow'>空气接近饱和（RH≈100%）才会产生降水</span>

<br>

暴雨的分类：

![image-20221110204138893](images/ch02_大气的基本特征/暴雨的分类.png)
