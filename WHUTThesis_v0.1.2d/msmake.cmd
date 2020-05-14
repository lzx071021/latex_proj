@rem -*- mode: conf -*-
@rem ----------------------------------------------------------------------
@rem START OF FILE
@rem ----------------------------------------------------------------------
@rem 
@rem Filename: msmake.cmd
@rem Author: Hu,Weiyi
@rem Created: 2010-03-02 21:45:00(+0800)
@rem Version: 0.0.1
@rem This tool is based on the work of Fred Qi
@rem ----------------------------------------------------------------------
@rem COMMENTARY
@rem ----------------------------------------------------------------------
@rem
@rem 使用说明：
@rem
@rem 1.配置whutthesis宏包
@rem msmake setup
@rem 　　在当前目录下生成whutthesis宏包及说明文档whutthesis.pdf
@rem
@rem 2.生成示例文档
@rem msmake [my|a3]
@rem 　　在当前目录下生成示例文档，或其中的一部分，或其他用户指定文档
@rem 如果当前目录下无whutthesis.cls，将自动根据whutthesis.ins生成。
@rem 　　- my		仅生成mythesis.pdf
@rem 　　- a3		生成a3封面，在生成封面前需要先生成mythesis.pdf
@rem
@rem 3.清理目录
@rem msmake clean [other]
@rem 　　清理当前目录下由whutthesis宏包生成的文件，具体包括
@rem 宏包及其说明文档whutthesis.{cls,cfg,dvi,ps,pdf}
@rem 示例文档 mythesis.{dvi,ps,pdf,aux,etc.}
@rem 如果用户指定其他文件名，不删除mythesis.*，而删除
@rem other.{dvi,ps,pdf,lo?,aux,bbl,blg,out* toc thm}
@rem
@rem 4.辅助图形图像文件格式转换命令：
@rem msmake epspdf [param] 
@rem	 将当前目录下所有eps文件用epstopdf转为pdf格式
@rem msmake bmpeps [param]
@rem	 将当前目录下所有bmp,jpg,png文件用bmeps转为eps格式
@rem 以上两个命令中，[param]可以由用户指定转换程序所用的参数。
@rem 
@rem ----------------------------------------------------------------------
@rem CHANGE LOG
@rem ----------------------------------------------------------------------
@rem 2010-04-05 14:52:20(+0800) [by Hu,Weiyi]
@rem     增加了编译论文的once参数，只对文档编译一次。用于快速查看更改
@rem ----------------------------------------------------------------------
@rem 2010-03-02 21:51:10(+0800) [by Hu,Weiyi]
@rem     modification for whutthesis v0.1.0
@rem ----------------------------------------------------------------------
@rem 2006-05-26 11:47:40(+0800) [by Fred Qi@lab]
@rem     Update #: 312
@rem ----------------------------------------------------------------------
@rem 2006-05-20 16:53:38(+0800)    Fred Qi@lab
@rem    msmake.cmd initial. prepaired for thuthesis 2.5
@rem 
@rem 
@rem 
@rem ----------------------------------------------------------------------
@rem ----------------------------------------------------------------------

@echo off
set whutpkg=WHUTthesis
set tmpfile=_clstemptest_
set ltxparam=-quiet -c-style-errors
if /i {%1}=={clean} goto clean
if /i {%1}=={epspdf} goto epspdf
if /i {%1}=={bmpeps} goto bmpeps
if /i {%1}=={setup} goto setup
if /i {%1}=={pkg} goto pkg
if /i {%1}=={my} goto my
if /i {%1}=={a3} goto a3cover
if /i {%1}=={man} goto man
if /i {%1}=={help} goto help
goto help

@rem =============================================
@rem 显示帮助信息
@rem =============================================
:help
echo msmake [参数]
echo	    clean	清除所有生成的文件
echo	    setup	生成宏包和帮助文档
echo	    pkg		仅生成宏包
echo	    my		生成我的论文
echo	    a3		生成a3封面
echo	    help	显示本帮助信息
goto end

@rem =============================================
@rem 清除文档生成过程中产生的临时文件
@rem =============================================
:clean
echo 删除编译临时文件
del /f /q /s *.log *.aux *.glo *.idx *.ilg *.ind *.out *.thm *.toc *.lot *.loe *.out.bak *.bbl *.blg *.synctex.gz
del /f /s *.dvi *.ps
if {%2}=={all} (goto cleanall) else (goto end)
:cleanall
echo 删除whutthesis宏包相关文件
del /f /q /s %whutpkg%.cls %whutpkg%.cfg dtx-style.sty mythesis.tex
echo 删除whutthesis宏包的说明文档
del /f /q /s %whutpkg%.dvi %whutpkg%.ps %whutpkg%.pdf
echo 删除mythesis示例文档
del /f /q /s mythesis.pdf body\a3cover.pdf
goto end

@rem =============================================
@rem 将当前目录下的eps文件转换为pdf格式
@rem 需要用到epstopdf
@rem =============================================
:epspdf
if /i {%2}=={} (
  set conv=call epstopdf %%i
) else (
  set conv=call epstopdf %2 %%i
)
@echo on
for %%i in (*.eps) do %conv%
@echo off
goto end

@rem =============================================
@rem 将当前目录下的bmp,jpg,png图形转换为eps格式
@rem 需要用到bmeps
@rem =============================================
:bmpeps
if /i {%2}=={} (set param=-c) else (set param=%2)
set conv=call bmeps %param% %%i %%~ni.eps
@echo on
for %%i in (*.bmp *.jpg *.png) do %conv%
@echo off
goto end

@rem =============================================
echo 正在测试是否需要生成whutthesis宏包...
@rem =============================================
:testcls
if not exist %whutpkg%.cls goto presetup
if not exist %whutpkg%.cfg goto presetup
goto choose

@rem -----------------------------
@rem this section of code is NOT used.
echo \documentclass{%whutpkg%}>%tmpfile%.tex
echo \begin{document}>>%tmpfile%.tex
echo \end{document}>>%tmpfile%.tex
call xelatex %ltxparam% %tmpfile%.tex>nul
IF ERRORLEVEL 1 (goto presetup) else goto choose
@rem NOT used code block end.
@rem -----------------------------

:presetup
@rem del /f /q %tmpfile%.*
echo 您没有安装或配置好whutthesis宏包，
echo 本程序试图重新生成并配置whutthesis宏包...

@rem =============================================
@rem 编译论文
@rem =============================================
:my
call xelatex mythesis
if {%2}=={once} (goto once)
call bibtex mythesis
call xelatex mythesis
call xelatex mythesis
:once
if errorlevel 1 goto myerr1
echo 成功生成论文
call mythesis.pdf
goto end

@rem =============================================
@rem 生成a3封面
@rem =============================================
:a3cover
cd ./a3cover
call xelatex spine
call xelatex a3cover
if ERRORLEVEL 1 goto a3err1
echo 正在删除临时文件
del /f /q *.log *.aux spine.pdf
echo 成功生成a3封面
cd ..
goto end

@rem =============================================
@rem 生成用户手册
@rem =============================================
:man
if not exist %whutpkg%.cls goto setup
if not exist %whutpkg%.cfg goto setup
goto manproc

@rem =============================================
@rem 仅生成whutthesis宏包
@rem =============================================
:pkg
if not exist %whutpkg%.ins goto clserr4
if exist %whutpkg%.cls del /f /q %whutpkg%.cls
if exist %whutpkg%.cfg del /f /q %whutpkg%.cfg
echo 正在生成%whutpkg%宏包...
call xelatex %whutpkg%.ins
@rem IF errorlevel 1 goto clserr3
echo 成功生成whutthesis宏包
goto end
if not exist %whutpkg%.dtx goto clserr2

@rem =============================================
@rem 生成whutthesis宏包及说明文档
@rem =============================================
:setup
if not exist %whutpkg%.ins goto clserr4
if exist %whutpkg%.cls del /f /q %whutpkg%.cls
if exist %whutpkg%.cfg del /f /q %whutpkg%.cfg
echo 正在生成%whutpkg%宏包...
call xelatex %ltxparam% %whutpkg%.ins
@rem IF errorlevel 1 goto clserr3
echo 成功生成whutthesis宏包
@rem ----------------------------------------------
:manproc
if not exist %whutpkg%.dtx goto clserr2
echo 正在生成%whutpkg%宏包的说明文档...
call xelatex %ltxparam% %whutpkg%.dtx
if errorlevel 1 goto clserr1
call makeindex -s gind.ist -o %whutpkg%.ind %whutpkg%.idx
if errorlevel 1 goto clserr1
call makeindex -s gglo.ist -o %whutpkg%.gls %whutpkg%.glo
if errorlevel 1 goto clserr1
call xelatex %ltxparam% %whutpkg%.dtx
if errorlevel 1 goto clserr1
@rem call gbk2uni %whutpkg%.out
if errorlevel 1 goto clserr1
call xelatex %ltxparam% %whutpkg%.dtx
if errorlevel 1 goto clserr1
@rem call dvips -Ppdf -G0 %whutpkg%.dvi
if errorlevel 1 goto clserr1
@rem call ps2pdf %whutpkg%.ps
if errorlevel 1 goto clserr1
echo 成功生成whutthesis说明文档whutthesis.pdf
call WHUTthesis.pdf
@rem 清理说明文档生成过程中产生的临时文件
del /f /q %whutpkg%.log
del /f /q %whutpkg%.aux
del /f /q %whutpkg%.glo
del /f /q %whutpkg%.gls
del /f /q %whutpkg%.idx
del /f /q %whutpkg%.out
del /f /q %whutpkg%.out.bak
del /f /q %whutpkg%.ind
del /f /q %whutpkg%.ilg
del /f /q %whutpkg%.toc
@rem del /f /q %whutpkg%.dvi
@rem del /f /q %whutpkg%.ps
goto end

@rem ----------------------------------------------
:clserr2
echo 没有找到whutthesis.dtx文件
:clserr1
echo 无法生成说明文档whutthesis.pdf
goto end
:clserr4
echo 没有找到whutthesis.ins文件
:clserr3
echo 无法生成whutthesis宏包
goto end
:myerr1
echo 生成论文失败
goto end
:a3err1
echo 生成a3封面失败
cd ..
goto end

:choose
if /i {%1}=={setup} goto end
set ltx=latex %ltxparam%
if /i {%1}=={my} goto my
if /i {%1}=={} (goto help) else goto help


@rem =============================================
@rem 示例文件生成过程中出错处理
@rem =============================================
:error
echo 使用%errmsg%生成%targ%.pdf的过程中出错

@rem =============================================
@rem 执行结束
@rem =============================================
:end
@rem ----------------------------------------------------------------------
@rem END OF FILE
@rem ----------------------------------------------------------------------
