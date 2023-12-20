$env:PUPPETEER_TIMEOUT = 3600
$baseUrl = "https://github.com/CUG-hydro/class2023_CUG_HydroMet/blob/master/images/"
$baseUrl = "https://raw.githubusercontent.com/CUG-hydro/class2023_CUG_HydroMet/master/images/"

function ReplaceStringInFile {
  param (
    [string]$fin,
    [string]$searchString,
    [string]$replacementString
  )
  $fileContent = Get-Content -Path $fin -Raw
  $newContent = $fileContent -replace $searchString, $replacementString
  # $tempFin = [System.IO.Path]::GetTempFileName()
  $tempFin="__temp__.md"
  Set-Content -Path $tempFin -Value $newContent
  
  $tempFin
}

function build_marp{
  param (
    $fin,
    $verbose = 1,
    $time = 0
  )
  $theme = "./themes/beamer.css"
  $fout = ($fin).Replace(".md", ".html")

  $fin = ReplaceStringInFile $fin "images/" $baseUrl
  # -c .marprc.yml # lead to theme failed
  $cmd = "marp $fin -o docs/$fout --html --allow-local-files --theme $theme $options"

  if ($verbose) {
    Write-Output $cmd  
  }
  
  if ($time) {
    Measure-Command { Invoke-Expression $cmd }
  } else {
    Invoke-Expression $cmd 
  }
}

$options = ""

# build_marp "README.md"
# build_marp "2023期满考核.md"

# build_marp "ch03_位势高度与气压场.md"
# build_marp "ch02_大气的基本特征.md"
# build_marp "ch01_补充_天气学网站.md"
# build_marp "ch01_补充_全球气候变化.md"
# build_marp "ch01_绪论.md"
# build_marp "ch00_课程介绍.md"
build_marp "index.md"
# pandoc README.md -o docs/README.html

# build_marp "./examples/high_level.md" "beamer_high"
# build_marp "./examples/low_level.md" "beamer_low"
# build_marp "./ch02_大气的基本特征.md"
# build_marp "./ch03_位势高度与气压场.md"
build_marp "./ch04_第1讲-水汽通量与暴雨分析.md"

build_marp "./ch04_第2讲-辐散与垂直运动.md"

# build_marp "./ch05_第1讲-辐射与能量平衡.md"
# build_marp "./ch05_第2讲-热浪研究方法.md"
# build_marp "./ch06_大气环流.md"
# build_marp "./ch07_天气系统.md"
# build_marp "./地信研究生_现代气候学_part1.md"
# build_marp "./地信研究生_现代气候学_part2.1.md"
# build_marp "./地信研究生_现代气候学_part2.2.md"
# build_marp "index.md"
# build_marp "./examples/low_level.md" "pages/beamer_low.$ext"
# mv *.pdf 课件
