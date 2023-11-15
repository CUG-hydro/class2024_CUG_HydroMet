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

<h1>地表能量平衡与地表水量平衡中的若干水文气象学问题</h1>

<br>

孔冬冬，__kongdongdong@cug.edu.cn__

办公室：环境学院416

中国地质大学大气科学系 · 武汉

<br>

__Github__: <https://github.com/kongdd>
__Profile__: <http://grzy.cug.edu.cn/kongdd>
__Researchgate__: <https://www.researchgate.net/profile/Dongdong_Kong>

---

<h4>课程背景调查</h4>


![h:13cm](images/地信研究生_现代气候学_part1/问卷内容.png)

<https://www.wjx.cn/newwjx/design/sendqstart.aspx?activityid=225539002>

![bg right:50% 80%](images/地信研究生_现代气候学_part1/背景调查.png)

---

<h2>个人简介</h2>

孔冬冬，河南周口人；

个人主页：<http://grzy.cug.edu.cn/kongdd>

| 时间 | 地点 | 角色 |
| ---------------- | -------------------- | ------------------------- |
| 2020.07~至今     | 中国地质大学（武汉） | 副教授、硕导              |
| 2018.12~2019.01 | 南方科学大学         | 访学                      |
| 2018.09~2018.11 | 澳洲CSIRO            | 科研助理                  |
| 2017.12~2018.11 | 澳洲CSIRO            | 联合培养博士生            |
| 2015.09~2015.10 | 香港中文大学         | 访学                      |
| 2015.09~2020.06 | 中山大学             | 自然地理学 博士（直博生） |
| 2011.09~2015.06 | 中山大学             | 水文学与水资源工程  学士  |

---
<style scoped>
blockquote {
  font-size: 28px,
  margin: 0.5em 0em 2.5em 0em
}
h2,h3,h4 {
  margin: 0em 0em 0.0em 0em
}
</style>

<h3>开发工具专业相关工具包30余项</h3>

蒸散发的基本原理

- `hydroTools`：水文气象专业R包，<https://github.com/CUG-hydro/hydroTools>

- `PML-V2`：PML-V2碳水耦合蒸散发模型

- `BEPS.jl`: 碳水耦合蒸散发模型, <https://github.com/CUG-hydro/BEPS.jl>

三维时空热浪

- `SpatioTemporalCluster.jl`: 干旱、热浪，三维时空聚类

径流模拟

- `VIC5`：R语言版本 分布式水文模型VIC5与集总式水文模型XAJ

- `MarrMot.jl`: 47个集总式水文模型


> a. 公众号：生态水文Tools（eco-hydro）
> b. 研究组`CUG-hydro`：<https://github.com/CUG-hydro>

---

<h1>目录</h1>


1. <span style='color:blue'>**潜热**</span>：实际蒸散发模拟与不确定性分析；
   
2. <span style='color:red'>**感热**</span>：热浪变化特征与成因分析；
   
3. <span style='background-color:#CCCCCC'>__径流__：短历时暴雨洪水模拟。</span>

---

<h2>课程目标</h2>

通过这节课的学习，你将学会：

- 蒸散发的基本原理，三个大名鼎鼎的潜在蒸散发公式
  >（最低的引用次数8500，最高的引用次数超过爱因斯坦）

- 掌握位势高度的概念，学会看简单的天气图，分析热浪的成因
  > 如何通过位势高度，看高低压中心、辐合辐散、风向、槽脊

---

<h4>地表能量平衡与水量平衡</h4>

:::warn:地表能量平衡
在能量循环中，蒸散发消耗了地表净辐射总能量的 51%~58%；
:::

$$
Rn - G = \lambda E + H
$$

<br>

:::info:地表水量平衡
在水循环中，全球约有 58%~65%的降水通过蒸散发重返大气；
:::

$$
P - E - R = \Delta S
$$

<br>

> 1.Brutsaert, 2005
> 2.王忠静等, 2017

---

# 1. 潜热：实际蒸散发模拟与不确定性分析

:::info:潜热
物体温度不变，由液态变为气态时所需要吸收的热量称为潜热。

<u>在能量平衡中称作潜热，而在水量平衡中称作蒸散发。</u>
:::

<br>

:::warn:感热
物体温度变化，所需要吸收的热量。
:::


![bg right:50%](images/讲座-地信学院20230615/bg_H&LE.png)

---

<h4>潜热可以解决哪些问题？</h4>

- 地表温度与空气温度的转换

  > 202206河南高温，空气温度40°，地表温度却可以到74°。通过Penman公式，你将能掌握背后的机理。

- 水体的降温效应
  > 千湖之城的武汉，湖泊的降温效应对气温有何影响？

- 夏季撑伞与否对人体感知温度的影响

  > 散射理论 + 蒸发理论(湿表面与空气的温差)

- 区域水资源评估
  > 农田蒸散发、湖泊蒸发、城市蒸发、河流蒸发

- 气候变化下的极端水文气象事件
  > 热浪、干旱、洪水

---

## 1.1. 理论方法

![bg right:50% 95%](images/地信研究生_现代气候学_part1/地表能量平衡.png)

$$
\begin{align*}
Rn - G = \lambda E + H
\end{align*}
$$

- $G$：土壤热通量，仅占Rn的5%~10%，可忽略
- $\lambda E$ ($LE$)：潜热，相态的变化，
- $H$：感热，温度的变化

<span style='background-color:yellow'>$\lambda E$和$H$，一般指的是湿表面到2m处的地表，传递的感热与潜热。</span>

<h4>变量定义</h4>

湿表面和地表的<u>空气温度</u>和<u>水汽密度</u>：

- 湿表面：($T_w, \rho_{vw}$)

- 2m地表：($T_a, \rho_{va}$)；

- 空气密度：$\rho_a$

---

### 1.1.1. 基础概念

#### 1.1.1.1. 气化潜热$\lambda$

__气化潜热__：单位质量的液体，从液态变为气态所需吸收的热量。

$$
\begin{align*}
\lambda &= 2.5 - 0.0024 T_a, (MJ/kg) \\
LE &= \lambda \Delta \rho_v
\end{align*}
$$

<span style='color:red'>__单位的转化（重点）__</span>：MJ/kg -> mm

> Q1: 地表单位面积上，$1mm$深的水，气化所需的能量？

> Q2: 假设地表净辐射$R_n$为$100 W/m^2$，能量全部转化为蒸发，一天的蒸发量是多少？

#### 1.1.1.2. 比热容$c_p$

比热容$c_p$：单位质量的物质，温度升高1℃所需的能量。

空气的比热容为$1.103×10^{-3} MJ kg^{-1} ℃^{-1}$。

$$
H = c_p \rho_a \Delta T
$$

---

### 1.1.2. 感热($H$)

![h:16cm](images/ch05_辐射与能量平衡/感热公式-01.png)  

---

### 1.1.3. 潜热($\lambda E$)

$$
\begin{align*}
  & \lambda E=\lambda ({{\rho }_{vw}}-\rho_{va} ){g_v} \\
 & =\lambda (\frac{{e_s}({{T}_{w}})}{{{P}_{a}}}\varepsilon \rho -\frac{e}{{{P}_{a}}}\varepsilon \rho ){g_v} \\
 & =\lambda \varepsilon \rho {g_v}\frac{{e_s}({{T}_{w}})-e}{{{P}_{a}}} \\
 & =\lambda \varepsilon \rho {g_v}\frac{{e_s}({{T}_{w}})-{e_s}({{T}_{a}})+{e_s}({{T}_{a}})-e}{{{P}_{a}}} \\
 & \simeq \lambda \varepsilon \rho {g_v}\frac{\Delta ({{T}_{w}}-{{T}_{a}})+VPD}{{{P}_{a}}}  
\end{align*}
$$

详细解释见：
> 1.水气压与水汽密度的转换
> 2.《补充--蒸散发的基本原理》

---

### 1.1.4. 蒸散发模型
<!-- 感热与潜热的关系 -->

![height:17cm](images/ch02_大气的基本特征/温度三剑客.png)

---
<!-- p14 -->

<h4>(a) 当Rn = 0时（即干球温度与湿度温度的关系）</h4>

- 为简化问题，先不考虑水汽$g_v$和热量$g_H$的传递阻力；

$$
\lambda E + H = 0
$$

$$
\begin{align}
  \lambda (\frac{e_s(T_w)}{P}\varepsilon \rho -\frac{e}{P}\varepsilon \rho )&=-\rho {c_p}(T_w - T_a) \\
  \lambda \varepsilon \rho \frac{e_s(T_w) - e}{P}&=-\rho {c_p}(T_w - T_a) \\
 e_s(T_w)-e &= -\frac{c_p P}{\lambda \varepsilon }(T_w - T_a) \\

\end{align}

$$

定义: $\gamma = \frac{c_p P}{\lambda \varepsilon }$，$\gamma$为湿度计常数。

$$
e_s(T_w)-e = -\gamma(T_w - T_a)
$$

若$T_a$用$x$表示，$e$用$y$表示，则

$$
y = - \gamma (x - T_w) + e_s(T_w)
$$

因此，在湿度计与温度关系的图，干球温度到湿球温度是一条直线。

---

- 考虑水汽$g_v$和热量$g_H$的传递阻力；

  $$
  e_s(T_w)-e = -\gamma \frac{g_H}{g_v}(T_w - T_a)
  $$

  定义：$\gamma^*= \gamma \frac{g_H}{g_v} = \gamma \frac{r_v}{r_H}$，$\gamma^*$为修正湿度计常数，$\frac{g_H}{g_v} = \frac{r_v}{r_H}$。

  $$
  e_s(T_w)-e = -\gamma^*(T_w - T_a)
  $$

![bg right:40% 100%](images/讲座-地信学院20230615/三温度_es(T).png)

---

> <span style='background-color:yellow'>**水汽压是LE和H
> 交换的货币。**</span>

<!-- <h4>能量的分配</h4> -->
![bg left:70% 100%](images/ch05_辐射与能量平衡/能量分配-01.png)  

---

<h4>感热潜热比例随温度的变化</h4>

> RCP4.5 (SSP245)，辐射增加4.5W/m2，蒸散发理论上最高能增加多少？

![h:15cm](images/ch05_辐射与能量平衡/感热潜热-变化.png)  

---

#### 1.1.4.1. 水面蒸发Penman 1948

:::block
当Rn不为0、充分供水
:::

<br>

联立 $Rn = \lambda E + H$：

<br>

$$
\begin{aligned}
\lambda \mathbf{E} &
= \frac{\Delta R_{\mathrm{n}}+\rho c_{\mathrm{p}} VPD / r_H}{\Delta+\gamma^*}
= \frac{\Delta R_{\mathrm{n}}+\rho c_{\mathrm{p}} VPD / r_H}{\Delta+\gamma \frac{r_v}{r_H}} \\ \\

H &= R_n-\lambda E = \left(T_w-T_a\right) \rho c_{\mathrm{p}} g_H \\
& =\frac{\gamma^* R_{\mathrm{n}}-\rho c_{\mathrm{p}} VPD g_H}{\Delta+\gamma^*}
\end{aligned}
$$


> $VPD = e_s(T_a) - e$
> $\gamma^*= \gamma \frac{g_H}{g_v} = \gamma \frac{r_v}{r_H}$
> $r_v$: 水汽的传导阻力
> $r_H$: 热量的传导阻力

![bg right:50% 100%](images/讲座-地信学院20230615/Penman_paper.png)

---

![h:16cm](images/地信研究生_现代气候学_part1/Penman_图解.png)

> Monteith, 1965, (截止20230615引用次数<span style='color:red'>**8530**</span>)

---

<h4>推论：</h4>

:::block
空气温度与地表温度时间的关系
:::

$$
\begin{aligned}
H &= R_n-\lambda E = \left(T_w-T_a\right) \rho c_{\mathrm{p}} g_H \\
& =\frac{\gamma^* R_{\mathrm{n}}-\rho c_{\mathrm{p}} D g_H}{\Delta+\gamma^*}
\end{aligned}
$$

$$
\begin{align*}
T_w = \frac{\gamma^*}{\Delta+\gamma^*}\left(\frac{R_{\mathrm{n}}}{\rho c_{\mathrm{p}} g_H}-\frac{VPD}{\gamma^*}\right) + T_a
\end{align*}
$$

:::block
可解决的问题
:::

- 地表温度与空气温度的转换

  > 202206河南高温，空气温度40°，地表温度却可以到74°。

- 水体的降温效应
  > 千湖之城的武汉，湖泊的降温效应对气温有何影响？

- 夏季撑伞与否对人体感知温度的影响

  > 散射理论 + 蒸发理论(湿表面与空气的温差)

---

```r
ET0_Penman48 <- function(Rn, Tair, Pa = atm, D,
    wind, z.wind = 2)
{
    dat = ET0_eq(Rn, Tair, Pa)
    U2 = cal_U2(wind, z.wind)
    # rho_a * Cp * dT / rH (MJ m-2 s-1)
    # rho_a ≈ 1.225 kg/m3
    # rho_a * Cp / rH = f(U2)
    # `f(U2) = 2.6 * (1 + 0.54U2)` is equivalent to Shuttleworth1993
    mutate(dat,
        Evp = gamma / (slope + gamma) * 6.43 * (1 + 0.536 * U2) * D / lambda,
        ET0 = Evp + Eeq)
}
```

<https://github.com/CUG-hydro/hydroTools/blob/master/R/ET0_models.R#LL65C1-L78C1>

---

#### 1.1.4.2. 叶片蒸发Monteith 1965

:::block
Rn不为零、充分供水、且考虑叶片气孔导度阻力$r_s$
:::

  > 应用的是电阻并联、串联公式：

  - $r_v$与$r_s$串联

  - 双侧的阻力并联

$$
\begin{align*}
r_v' &= ({r_v + r_s})/2 \\
r_H' &= r_H / 2
\end{align*}
$$

将$r_v'$和$r_H'$代入Penman公式中，得到Monteith公式：

$$
\lambda \mathbf{E}
= \frac{\Delta R_{\mathrm{n}}+\rho c_{\mathrm{p}} VPD / r_H}{\Delta+\gamma^*}
= \frac{\Delta R_{\mathrm{n}}+\rho c_{\mathrm{p}} VPD / r_H}{\Delta+\gamma (\frac{r_v + r_s}{r_H})}
$$

![bg right:50% 100%](images/讲座-地信学院20230615/Monteith1965.png)

---

#### 1.1.4.3. 参考作物蒸发FAO 1998

- 参考作物蒸发：

  > FAO1998是Monteith的个例，其中设定蒸发面是一个充分供水的草地

  - 草地的株高0.12m，气孔阻力70s/m，反照率0.23

- 作物蒸发：

  $$
  ET_c = k_c ET_o  
  $$

  - $ET_o$：参考作物蒸发
  - $ET_c$: 作物蒸发
  - $k_c$: 作物修正系数

> Allen, 1998 (引用次数29026)

---

![h:18cm](images/地信研究生_现代气候学_part1/爱因斯坦.png)

---

#### 1.1.4.4. 实际蒸发

ET (Evapotranspiration)：`Evaporation` + `Transpiration` + `Canopy Interception`

- 冠层截留蒸发（10%）

- 土壤蒸发（35%）

- 植被蒸腾（55%）


:::warn:注意
注意实际蒸散法与潜在蒸散发的区别
:::

![bg right:50% 75%](images/讲座-地信学院20230615/蒸发3parts.png)

---

## 1.2. ET研究结果

---

### 1.2.1. PMLV2-三层蒸散发与植被总初级生产力模型

![h:11cm](images/讲座-地信学院20230615/PMLV2-原理.png)


:::info:References
1. Leuning 2008, WRR
2. Zhang YQ, 2016, scientific reports
3. Zhang YQ*, Kong DD*, et al., 2019, RSE
:::

---

<h4>植被蒸腾与植被光合碳水耦合</h4>

![](images/讲座-地信学院20230615/碳水耦合.png)

---

![](images/讲座-地信学院20230615/PMLV2-原理2.png)

---

![](images/讲座-地信学院20230615/模型率定.png)


---

![](images/讲座-地信学院20230615/ET三组分的量级.png)

---

![h:18cm](images/讲座-地信学院20230615/模型表现.png)

---

![bg left:50% 90%](images/讲座-地信学院20230615/模型表现对比.png)

**验证期，模型表现对比：**

- 除了EBF，碳水耦合的PML-V2模型的表现明显优于PML-V1；

- PML-V2模型几乎全面优于MODIS ET。

---

<h4>ET的趋势是否可信？</h4>

![](images/讲座-地信学院20230615/PMLV2-ET趋势.png)

---

### 1.2.2. 植被变化对全球陆面蒸散发的影响

![bg right:50% h:18cm](images/讲座-地信学院20230615/LULC变化.png)




:::info:相对于2003—2007年，2008—2017年
:::

- 自然植被 （如森林、灌木、草地）明显增加，裸土面积减少，耕地增加，城市化进程加剧。

- 近赤道20°S~20°N地区森林覆盖下降较为显著，在2008—2017年间下降幅度为0.5%。

- 对于耕地，比如在中国华北平原和四川盆地等地区，耕地微弱减少、森林明显增加，可能是生态工程导致。


<!-- 对于森林、灌木和草地，分别有54.8%、53.3%和56.2%的区域呈现增加趋势。与之前研究发现类似[29]，对于裸土，其覆盖度明显减少，减少的比例占60.4%，尤其是在中国的西部、澳洲中部、北美高纬度地区、以及南美西部。

与此相反的是南美洲南部地区，耕地覆盖度增加的同时，森林和草地覆盖度却明显减少。对于城市，几乎所有的城市在过去十几年间都发生了扩张，尤其是中国胡焕庸线以东地区、印度大部分地区、欧洲西部、以及北美东南部地区。对于水体，除北半球高纬度地区以外，其他地区水体比例呈现一致增加趋势。 -->

---

![](images/讲座-地信学院20230615/植被变化引起的增量.png)

---

![](images/讲座-地信学院20230615/植被贡献年际变化.png)

---

![bg right:65% 100%](images/讲座-地信学院20230615/影响因素.png)


- 干旱区，$d_{Ec}/d_{LAI}$敏感性强（水平衡、干燥度指数）；

- 在年均温为25 ℃左右时，植被蒸腾对LAI的敏感性最低。

<br>

> 1.张永强，孔冬冬, 等. 2021. 地理学报

<!-- ① 干旱区和湿润区，蒸散发各分量对叶面积指数 （LAI） 的敏感性存在显著的差异； -->

<!-- 植被蒸腾对 LAI 的敏感性，在干旱区明显强于湿润区。在湿润区（干燥度指数< 2.5或水平衡> 0） 植被蒸腾对LAI的敏感性差异较小。在干旱区 （干燥度指数> 2.5或水平衡< -500 mm），植被蒸腾对LAI的敏感性随干燥度增加 （或水平衡下 -->
<!-- 降）而增加，而土壤蒸发和冠层截留蒸发则随之增加而下降。 -->

<!-- ② 年降水对各蒸散发各分量的影响弱于干燥度指数和水平衡的影响；当年降水> 400 m时，降水对各分量对LAI的敏感性的影响较弱。③ 在年均温为25 ℃左右时，植被蒸腾对LAI的敏感性最低。与此同时，土壤蒸发和冠层截留蒸发对LAI的敏感性达到最高。 -->
 
---

### 1.2.3. CO2浓度对蒸散发的影响


- CO2施肥效应：LAI上升，<span style='color:blue'>**蒸散发增加**</span>；


- CO2气孔导度减小：$g_s$下降，植被水份利用效率提高，<span style='color:red'>**蒸散发减小**</span>；

![bg right:50% 90% h:18cm](images/讲座-地信学院20230615/CO2影响.png)

<br>


:::footnote
Zhang XuanZe, et al., 2021, ERL
:::

---

<h4>实验设计</h4>

$$
\begin{align*}
&\Delta ET_{Ald, Ems} = ET_{S1} - ET_{S2} \\
&\Delta ET_{CO_2} = ET_{S2} - ET_{S3} \\
&\Delta ET_{LAI}  = ET_{S3} - ET_{S4} \\
&\Delta ET_{CLM}  = ET_{S4} - ET_{S5} \\
\end{align*}
$$

<br>

![](images/讲座-地信学院20230615/CO2分离-情景实验.png)

:::footnote
Zhang XuanZe, et al., 2021, ERL
:::

---

<h4>结果</h4>

- CO2的施肥效应被CO2气孔导度效应所抵消

- ET的增加，主要受气象变量的影响

![bg left:55% h:18cm](images/讲座-地信学院20230615/CO2效应分离.png)

---

### 1.2.4. 不同人为强迫对蒸散发的影响


- `OBS`: GLEAM ET
- `ALL`: 全强迫
- `GHG`: 温室气体强迫
- `AER`: 气溶胶强迫
- `NAT`: 自然强迫（火山喷发、辐射周期性变化）

![bg right:65% 100%](images/讲座-地信学院20230615/CMIP6_ET趋势.png)

:::footnote
Liu JY, Kong DD*, et al., JGR-A, 2021
:::

---

![h:17cm](images/讲座-地信学院20230615/GHG&AER_机理解释.png)

> Liu JY, Kong DD*, et al., JGR-A, 2021

---

## 1.3. ET的不确定性

:::info:现象:
30多个ET产品的全球年ET趋势各不相同。趋势的全球平均、纬向平均，空间分布存在显著差异。
:::

> 模型模拟的ET量级比较容易矫正，但ET年际波动、变化趋势模拟较差，直接宣布了这个模型死亡。



---

<h4>不确定性</h4>

1. 模型结构不确定性；

2. 驱动数据不确定性：1. 气象驱动；2. 植被驱动。
  
3. 验证数据不确定性：不像降水和径流，ET难以测量，缺乏足够的验证数据。如何验证ET模拟结果？

**问题：**

- 到底该相信哪个模型？

- 如何验证？

---

![](images/讲座-地信学院20230615/ET_trend.png)

> 诊断模型 2001-2020年ET趋势

---

![h:10cm](images/讲座-地信学院20230615/ET_trend_analysis.png)

> 再分析资料 2001-2020年ET趋势

---

:::footnote
Xie YX, Kong DD*, 2023, 待投
:::

![bg right:55% h:16cm](images/讲座-地信学院20230615/PET_bias.png)

**Fig. 4.** Spatial patterns of Bias of potential evapotranspiration (PET) estimated by various meteorological forcing and statistical indices of PET results for 1978 sites during 2003–2018.

---

![](images/讲座-地信学院20230615/再分析资料的误差.png)

> 再分析资料，年尺度上的误差

---

![h:16cm](images/讲座-地信学院20230615/最优变量.png)

> 控制变量法得到的每个变量的对PET的误差贡献

---

![h:10cm w:18cm](images/讲座-地信学院20230615/选择的流域.png)

> 最优变量组合对ET模拟的改进

![bg right:60% 95%](images/讲座-地信学院20230615/最优变量-实际ET改进.png)

---

<h4>Any questions?</h4>
