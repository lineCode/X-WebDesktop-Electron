# ====================== 自定义宏 产品信息==============================
!define PRODUCT_NAME           		"X-WebDesktop"
!define PRODUCT_PATHNAME           	"X-WebDesktop"     #安装卸载项用到的KEY
!define INSTALL_APPEND_PATH         "X-WebDesktop"     #安装路径追加的名称
!define INSTALL_DEFALT_SETUPPATH    ""       #默认生成的安装路径
!define EXE_NAME               		"X-WebDesktop.exe"
!define PRODUCT_VERSION        		"3.0.3"
!define PRODUCT_PUBLISHER      		"OXOYO"
!define PRODUCT_LEGAL          		"OXOYO Copyright（c）2017 - 2018"
!define INSTALL_OUTPUT_NAME    		"X-WebDesktop_Setup.exe"

# ====================== 自定义宏 安装信息==============================
!define INSTALL_7Z_PATH 	   		".\app.7z"
!define INSTALL_7Z_NAME 	   		"app.7z"
!define INSTALL_RES_PATH       		"skin.zip"
!define INSTALL_LICENCE_FILENAME    "license.txt"
!define INSTALL_ICO 			    "logo.ico"


!include "ui.nsh"

# ==================== NSIS属性 ================================

# 针对Vista和win7 的UAC进行权限请求.
# RequestExecutionLevel none|user|highest|admin
RequestExecutionLevel admin

#SetCompressor zlib

; 安装包名字.
Name "${PRODUCT_NAME}"

# 安装程序文件名.

OutFile "..\..\Output\${INSTALL_OUTPUT_NAME}"

InstallDir "1"

# 安装和卸载程序图标
Icon              "${INSTALL_ICO}"
UninstallIcon     "uninst.ico"
