#!/bin/sh
# Run from inside the surewinefund folder: sh download-images.sh
mkdir -p images
curl -fL "https://surewinefund.com/wp-content/uploads/2021/03/crw-1240h-620.jpg" -o "images/hero.jpg"
curl -fL "https://surewinefund.com/wp-content/uploads/2021/03/crw-1240h-620.jpg" -o "images/about-1.jpg"
curl -fL "https://surewinefund.com/wp-content/uploads/2021/03/crw-600h-300.jpg" -o "images/about-2.jpg"
curl -fL "https://surewinefund.com/wp-content/uploads/2021/03/crw-600h-300s.jpg" -o "images/about-3.jpg"
curl -fL "https://surewinefund.com/wp-content/uploads/2021/03/crw-680h-400a-cc.jpg" -o "images/share-price.jpg"
curl -fL "https://surewinefund.com/wp-content/uploads/2021/03/rsh-650cg-truem.jpg" -o "images/reports.jpg"
curl -fL "https://surewinefund.com/wp-content/uploads/2021/03/rsw-600h-300cg-true.png" -o "images/lafite.png"
curl -fL "https://surewinefund.com/wp-content/uploads/2021/03/rsw-600h-300cg-true1.png" -o "images/margaux.png"
curl -fL "https://surewinefund.com/wp-content/uploads/2021/03/rsw-600h-300cg-true2.png" -o "images/petrus.png"
curl -fL "https://surewinefund.com/wp-content/uploads/2021/03/rsw-600h-300cg-4.png" -o "images/latour.png"
curl -fL "https://surewinefund.com/wp-content/uploads/2021/03/rsw-600h-300cg-true5.png" -o "images/mouton.png"
curl -fL "https://surewinefund.com/wp-content/uploads/2021/03/rsw-600h-300cg-true51.png" -o "images/haut-brion.png"
curl -fL "https://surewinefund.com/wp-content/uploads/2021/03/rsw-600h-300cg-truem.jpg" -o "images/james-pala.jpg"
curl -fL "https://surewinefund.com/wp-content/uploads/2021/03/rsh-100.jpg" -o "images/labuan-ibfc.jpg"
curl -fL "https://surewinefund.com/wp-content/uploads/2023/03/cropped-android-chrome-512x512-1-270x270.png" -o "images/favicon.png"
echo "Done. Open index.html"
