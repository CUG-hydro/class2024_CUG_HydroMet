# npx @marp-team/marp-cli --server ./slides
# SumatraPDF $fout
$env:PUPPETEER_TIMEOUT = 3600

function build_marp{
  param (
    $fin,
    # $fout,
    # $options = "",
    $verbose = 1,
    $time = 0
  )
  $theme = "./themes/beamer.css"
  # $theme = "./themes/my-theme.css"
  # -o $fout 
  # $Env:PUPPETEER_TIMEOUT=0
  # $fout = ($fin).Replace(".md", ".pdf")
  # $fout = ($fin).Replace(".md", ".html")
  # $cmd = "marp $fin -o docs/$fout --html --allow-local-files --theme $theme $options"
  $cmd = "marp $fin --html --allow-local-files --theme $theme $options"

  if ($verbose) {
    Write-Output $cmd  
  }

  if ($time) {
    Measure-Command { Invoke-Expression $cmd }
  } else {
    Invoke-Expression $cmd 
  }
  # SumatraPDF $fout
}

# $ext = "pdf"
$options = "--pdf --pdf-outlines true --pdf-outlines.pages false" #
# $options = "--pptx"

# build_marp "./ch02_大气的基本特征.md"
# build_marp "./ch03_位势高度与气压场.md"
build_marp "./ch04_第1讲-水汽通量与暴雨分析.md"
build_marp "./ch04_第2讲-辐散与垂直运动.md"

build_marp "./ch05_辐射三定律.md"
build_marp "./ch05_热浪研究方法.md"
build_marp "./ch05_太阳辐射.md"

# build_marp "./ch06_大气环流.md"
# build_marp "./ch07_天气系统.md"
# build_marp "./地信研究生_现代气候学_part1.md"
# build_marp "./地信研究生_现代气候学_part2.1.md"
# build_marp "./地信研究生_现代气候学_part2.2.md"

# build_marp "./求职/2023期满考核_V2.md"

# build_marp "ch00_课程介绍.md"
# build_marp "ch01_绪论.md"
# build_marp "ch01_补充_全球气候变化.md"
# build_marp "ch01_补充_天气学网站.md"
# build_marp "ch02_大气的基本特征.md"

# build_marp "./examples/low_level.md" "pages/beamer_low.$ext"

# mv *.pdf 课件

# marp -h
# Usage:
# marp [options] <files...>
# marp [options] -I <dir>

# Basic Options:
#   -v, --version                      Show versions                     [boolean]
#   -h, --help                         Show help                         [boolean]
#   -o, --output                       Output file path (or directory when
#                                      input-dir is passed)               [string]
#   -I, --input-dir                    The base directory to find markdown and
#                                      theme CSS                          [string]
#   -c, --config-file, --config        Specify path to a configuration file
#                                                                         [string]
#       --no-config-file, --no-config  Prevent looking up for a configuration file
#                                                                        [boolean]
#   -w, --watch                        Watch input markdowns for changes [boolean]
#   -s, --server                       Enable server mode                [boolean]
#   -p, --preview                      Open preview window               [boolean]

# Converter Options:
#       --pdf                Convert slide deck into PDF                 [boolean]
#       --pptx               Convert slide deck into PowerPoint document [boolean]
#       --notes              Convert slide deck notes into a text file   [boolean]
#       --image              Convert the first slide page into an image file
#                                                [string] [choices: "png", "jpeg"]
#       --images             Convert slide deck into multiple image files
#                                                [string] [choices: "png", "jpeg"]
#       --image-scale        The scale factor for rendered images
#                                 [number] [default: 1 (or 2 for PPTX conversion)]
#       --jpeg-quality       Set JPEG image quality         [number] [default: 85]
#       --allow-local-files  Allow to access local files from Markdown while
#                            converting PDF, PPTX, or image (NOT SECURE) [boolean]
#       --pdf-outlines           Add outlines (bookmarks) to PDF         [boolean]
#       --pdf-outlines.pages     Make outlines from slide pages
#                                                        [boolean] [default: true]
#       --pdf-outlines.headings  Make outlines from Markdown headings
#                                                        [boolean] [default: true]

# Metadata Options:
#       --title        Define title of the slide deck                     [string]
#       --description  Define description of the slide deck               [string]
#       --author       Define author of the slide deck                    [string]
#       --keywords     Define comma-separated keywords for the slide deck [string]
#       --url          Define canonical URL                               [string]
#       --og-image     Define Open Graph image URL                        [string]

# Marp / Marpit Options:
#       --engine     Select Marpit based engine by module name or path    [string]
#       --html       Enable or disable HTML tags                         [boolean]
#       --theme      Override theme by name or CSS file                   [string]
#       --theme-set  Path to additional theme CSS files                    [array]
