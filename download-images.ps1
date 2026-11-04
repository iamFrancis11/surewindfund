# Run from inside the surewinefund folder: right-click > Run with PowerShell
$ErrorActionPreference='Continue'
New-Item -ItemType Directory -Force -Path images | Out-Null
Invoke-WebRequest -Uri "https://surewinefund.com/wp-content/uploads/2021/03/crw-1240h-620.jpg" -OutFile "images/hero.jpg"
Invoke-WebRequest -Uri "https://surewinefund.com/wp-content/uploads/2021/03/crw-1240h-620.jpg" -OutFile "images/about-1.jpg"
Invoke-WebRequest -Uri "https://surewinefund.com/wp-content/uploads/2021/03/crw-600h-300.jpg" -OutFile "images/about-2.jpg"
Invoke-WebRequest -Uri "https://surewinefund.com/wp-content/uploads/2021/03/crw-600h-300s.jpg" -OutFile "images/about-3.jpg"
Invoke-WebRequest -Uri "https://surewinefund.com/wp-content/uploads/2021/03/crw-680h-400a-cc.jpg" -OutFile "images/share-price.jpg"
Invoke-WebRequest -Uri "https://surewinefund.com/wp-content/uploads/2021/03/rsh-650cg-truem.jpg" -OutFile "images/reports.jpg"
Invoke-WebRequest -Uri "https://surewinefund.com/wp-content/uploads/2021/03/rsw-600h-300cg-true.png" -OutFile "images/lafite.png"
Invoke-WebRequest -Uri "https://surewinefund.com/wp-content/uploads/2021/03/rsw-600h-300cg-true1.png" -OutFile "images/margaux.png"
Invoke-WebRequest -Uri "https://surewinefund.com/wp-content/uploads/2021/03/rsw-600h-300cg-true2.png" -OutFile "images/petrus.png"
Invoke-WebRequest -Uri "https://surewinefund.com/wp-content/uploads/2021/03/rsw-600h-300cg-4.png" -OutFile "images/latour.png"
Invoke-WebRequest -Uri "https://surewinefund.com/wp-content/uploads/2021/03/rsw-600h-300cg-true5.png" -OutFile "images/mouton.png"
Invoke-WebRequest -Uri "https://surewinefund.com/wp-content/uploads/2021/03/rsw-600h-300cg-true51.png" -OutFile "images/haut-brion.png"
Invoke-WebRequest -Uri "https://surewinefund.com/wp-content/uploads/2021/03/rsw-600h-300cg-truem.jpg" -OutFile "images/james-pala.jpg"
Invoke-WebRequest -Uri "https://surewinefund.com/wp-content/uploads/2021/03/rsh-100.jpg" -OutFile "images/labuan-ibfc.jpg"
Invoke-WebRequest -Uri "https://surewinefund.com/wp-content/uploads/2023/03/cropped-android-chrome-512x512-1-270x270.png" -OutFile "images/favicon.png"
Write-Host "Done. Open index.html"
