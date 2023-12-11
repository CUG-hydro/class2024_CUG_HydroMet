---
marp: true
paginate: true
# size: 4:3
# header: 'Header space'
# footer: 'Footer space'
title: 'ch02_大气的基本特征'
theme: "my-theme"
# theme: nordic-beamer
---

<h4>Bonan2019：一些辐射参数</h4>

- $\tau$: 透过率
  
- $\epsilon$: 发射率

入射$L_{in}$: 

- 透过的能量为$L_{in} \tau$

- 未透过: $L_{in} (1 - \tau)$
  - 一部分吸收($\epsilon$): $L_{in} (1 - \tau) \epsilon$
  - 一部分反射($\rho$):  $L_{in} (1 - \tau) \rho$
  - <span style='color:red;background-color:yellow'>只考虑向后的反射、不考虑向前的散射（$\tau_l = 0, \rho = 1 - \epsilon$）</span>

![bg right:50% 100%](images/ch04_radiation_beps/bonan_2019_Figure14.21.png)

---

```julia
## 另外一种算法
# L_a * τₒ: 到达i+2->i的长波辐射
# L_o * (1.0 - τₒ): 到达i+1->i的长波辐射
Rl_down_o = L_a * τₒ + L_o * (1.0 - τₒ)       # o向下的部分
Rl_down_u = Rl_down_o * τᵤ + L_u * (1.0 - τᵤ) # u向下的部分
Rl_up_u   = L_u * (1.0 - τᵤ) + L_g * τᵤ         # u向上的部分

# 反射率
ρ_o = 1 - ϵ_o
ρ_u = 1 - ϵ_u
ρ_g = 1 - ϵ_g

# (1.0 - τₒ)：未透过的部分，可理解为能量的吸收率
# (1.0 - ϵ_o): （发射率=吸收率），未吸收的部分认为是反射（吸收能量反射的部分）
# (1.0 - τₒ) * (1.0 - ϵ_o): 吸收的能量一部分反射出去，只考虑向后的反射
Rnl_o = (ϵ_o * (L_a + Rl_up_u) - 2 * L_o) * (1.0 - τₒ) +
        ϵ_o * Rl_down_o * (1.0 - τᵤ) * ρ_u  # understory反射的部分

# ϵ_o * ρ_u * (1 - τᵤ) [Rl_down_o] # 少了一个吸收率 (1 - τo)
Rnl_u = (ϵ_u * (Rl_down_o + L_g) - 2 * L_u) * (1.0 - τᵤ) +
        ρ_g * Rl_down_u +                 # 地表反射的部分, miss ϵ_u
        ϵ_u * Rl_up_u * (1.0 - τₒ) * ρ_o  # o反射的部分


Rnl_g = ϵ_g * (Rl_down_u - L_g) +
        L_g * (1.0 - τᵤ) * ρ_u # u反射的部分, miss a ϵ_g
```
