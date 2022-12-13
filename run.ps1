# npx @marp-team/marp-cli --server ./slides
# SumatraPDF $fout

function build_marp{
  param (
    $fin,
    # $fout,
    $options = "", 
    $verbose = 1, 
    $time = 1
  )
  # ./themes/beamer.css 
  # -o $fout 
  # $Env:PUPPETEER_TIMEOUT=0
  $cmd = "marp $fin --html --pdf --allow-local-files --theme ./themes/my-theme.css $options"

  if ($verbose) {
    Write-Output $cmd  
  }
  
  if ($time) {
    Measure-Command { Invoke-Expression $cmd }
  } else {
    Invoke-Expression $cmd 
  }
  
  $fout = ($fin).Replace(".md", ".pdf")
  SumatraPDF $fout
}

# $ext = "html"
# $ext = "pdf"
$options = ""
$options = "--pdf-outlines true --pdf-outlines.pages false" #  --pdf-outlines.headings
# build_marp "./examples/high_level.md" "beamer_high" $options
# build_marp "./examples/low_level.md" "beamer_low" $options

# build_marp "./ch05_第1讲-辐射与能量平衡.md" $options
# build_marp "./ch05_第2讲-热浪研究方法.md" $options
# build_marp "./ch06_大气环流.md" $options
build_marp "./ch07_天气系统.md" $options
# build_marp "./examples/low_level.md" "pages/beamer_low.$ext" $options


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