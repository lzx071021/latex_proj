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
@rem ʹ��˵����
@rem
@rem 1.����whutthesis���
@rem msmake setup
@rem �����ڵ�ǰĿ¼������whutthesis�����˵���ĵ�whutthesis.pdf
@rem
@rem 2.����ʾ���ĵ�
@rem msmake [my|a3]
@rem �����ڵ�ǰĿ¼������ʾ���ĵ��������е�һ���֣��������û�ָ���ĵ�
@rem �����ǰĿ¼����whutthesis.cls�����Զ�����whutthesis.ins���ɡ�
@rem ����- my		������mythesis.pdf
@rem ����- a3		����a3���棬�����ɷ���ǰ��Ҫ������mythesis.pdf
@rem
@rem 3.����Ŀ¼
@rem msmake clean [other]
@rem ��������ǰĿ¼����whutthesis������ɵ��ļ����������
@rem �������˵���ĵ�whutthesis.{cls,cfg,dvi,ps,pdf}
@rem ʾ���ĵ� mythesis.{dvi,ps,pdf,aux,etc.}
@rem ����û�ָ�������ļ�������ɾ��mythesis.*����ɾ��
@rem other.{dvi,ps,pdf,lo?,aux,bbl,blg,out* toc thm}
@rem
@rem 4.����ͼ��ͼ���ļ���ʽת�����
@rem msmake epspdf [param] 
@rem	 ����ǰĿ¼������eps�ļ���epstopdfתΪpdf��ʽ
@rem msmake bmpeps [param]
@rem	 ����ǰĿ¼������bmp,jpg,png�ļ���bmepsתΪeps��ʽ
@rem �������������У�[param]�������û�ָ��ת���������õĲ�����
@rem 
@rem ----------------------------------------------------------------------
@rem CHANGE LOG
@rem ----------------------------------------------------------------------
@rem 2010-04-05 14:52:20(+0800) [by Hu,Weiyi]
@rem     �����˱������ĵ�once������ֻ���ĵ�����һ�Ρ����ڿ��ٲ鿴����
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
@rem ��ʾ������Ϣ
@rem =============================================
:help
echo msmake [����]
echo	    clean	����������ɵ��ļ�
echo	    setup	���ɺ���Ͱ����ĵ�
echo	    pkg		�����ɺ��
echo	    my		�����ҵ�����
echo	    a3		����a3����
echo	    help	��ʾ��������Ϣ
goto end

@rem =============================================
@rem ����ĵ����ɹ����в�������ʱ�ļ�
@rem =============================================
:clean
echo ɾ��������ʱ�ļ�
del /f /q /s *.log *.aux *.glo *.idx *.ilg *.ind *.out *.thm *.toc *.lot *.loe *.out.bak *.bbl *.blg *.synctex.gz
del /f /s *.dvi *.ps
if {%2}=={all} (goto cleanall) else (goto end)
:cleanall
echo ɾ��whutthesis�������ļ�
del /f /q /s %whutpkg%.cls %whutpkg%.cfg dtx-style.sty mythesis.tex
echo ɾ��whutthesis�����˵���ĵ�
del /f /q /s %whutpkg%.dvi %whutpkg%.ps %whutpkg%.pdf
echo ɾ��mythesisʾ���ĵ�
del /f /q /s mythesis.pdf body\a3cover.pdf
goto end

@rem =============================================
@rem ����ǰĿ¼�µ�eps�ļ�ת��Ϊpdf��ʽ
@rem ��Ҫ�õ�epstopdf
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
@rem ����ǰĿ¼�µ�bmp,jpg,pngͼ��ת��Ϊeps��ʽ
@rem ��Ҫ�õ�bmeps
@rem =============================================
:bmpeps
if /i {%2}=={} (set param=-c) else (set param=%2)
set conv=call bmeps %param% %%i %%~ni.eps
@echo on
for %%i in (*.bmp *.jpg *.png) do %conv%
@echo off
goto end

@rem =============================================
echo ���ڲ����Ƿ���Ҫ����whutthesis���...
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
echo ��û�а�װ�����ú�whutthesis�����
echo ��������ͼ�������ɲ�����whutthesis���...

@rem =============================================
@rem ��������
@rem =============================================
:my
call xelatex mythesis
if {%2}=={once} (goto once)
call bibtex mythesis
call xelatex mythesis
call xelatex mythesis
:once
if errorlevel 1 goto myerr1
echo �ɹ���������
call mythesis.pdf
goto end

@rem =============================================
@rem ����a3����
@rem =============================================
:a3cover
cd ./a3cover
call xelatex spine
call xelatex a3cover
if ERRORLEVEL 1 goto a3err1
echo ����ɾ����ʱ�ļ�
del /f /q *.log *.aux spine.pdf
echo �ɹ�����a3����
cd ..
goto end

@rem =============================================
@rem �����û��ֲ�
@rem =============================================
:man
if not exist %whutpkg%.cls goto setup
if not exist %whutpkg%.cfg goto setup
goto manproc

@rem =============================================
@rem ������whutthesis���
@rem =============================================
:pkg
if not exist %whutpkg%.ins goto clserr4
if exist %whutpkg%.cls del /f /q %whutpkg%.cls
if exist %whutpkg%.cfg del /f /q %whutpkg%.cfg
echo ��������%whutpkg%���...
call xelatex %whutpkg%.ins
@rem IF errorlevel 1 goto clserr3
echo �ɹ�����whutthesis���
goto end
if not exist %whutpkg%.dtx goto clserr2

@rem =============================================
@rem ����whutthesis�����˵���ĵ�
@rem =============================================
:setup
if not exist %whutpkg%.ins goto clserr4
if exist %whutpkg%.cls del /f /q %whutpkg%.cls
if exist %whutpkg%.cfg del /f /q %whutpkg%.cfg
echo ��������%whutpkg%���...
call xelatex %ltxparam% %whutpkg%.ins
@rem IF errorlevel 1 goto clserr3
echo �ɹ�����whutthesis���
@rem ----------------------------------------------
:manproc
if not exist %whutpkg%.dtx goto clserr2
echo ��������%whutpkg%�����˵���ĵ�...
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
echo �ɹ�����whutthesis˵���ĵ�whutthesis.pdf
call WHUTthesis.pdf
@rem ����˵���ĵ����ɹ����в�������ʱ�ļ�
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
echo û���ҵ�whutthesis.dtx�ļ�
:clserr1
echo �޷�����˵���ĵ�whutthesis.pdf
goto end
:clserr4
echo û���ҵ�whutthesis.ins�ļ�
:clserr3
echo �޷�����whutthesis���
goto end
:myerr1
echo ��������ʧ��
goto end
:a3err1
echo ����a3����ʧ��
cd ..
goto end

:choose
if /i {%1}=={setup} goto end
set ltx=latex %ltxparam%
if /i {%1}=={my} goto my
if /i {%1}=={} (goto help) else goto help


@rem =============================================
@rem ʾ���ļ����ɹ����г�����
@rem =============================================
:error
echo ʹ��%errmsg%����%targ%.pdf�Ĺ����г���

@rem =============================================
@rem ִ�н���
@rem =============================================
:end
@rem ----------------------------------------------------------------------
@rem END OF FILE
@rem ----------------------------------------------------------------------
