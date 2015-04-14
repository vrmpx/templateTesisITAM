% Tesis ITAM CLASS -- version 0.1 (13 - Abr - 2015)
% Clase para las tesis del ITAM
% 
% 13 - Abr - 2015 	Victor Martinez 	victor.martinez (at) itam.mx
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{tesisITAM}[2015/04/13 v0.01 Template para tesis ITAM]

\DeclareOption*{%
	\PassOptionsToClass{\CurrentOption}{report}%
}

\ProcessOptions\relax

% Usamos como clase base el de report
\LoadClass{report}

%Requerimos el paquete de graphicx
\RequirePackage{graphicx}


%%%%%%%%%%%%%%%%%%%%%%%%%% Definiciones de carrera %%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\@degree{\ClassWarningNoLine{tesisITAM}{No Degree specified}}
\newcommand\degree[1]{\renewcommand\@degree{#1}}
\newcommand\thedegree{\@degree}

%%%%%%%%%%%%%%%%%%%%%%%%%% Definiciones de asesor  %%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\@advisor{\ClassWarningNoLine{tesisITAM}{No advisor specified}}
\newcommand\advisor[1]{\renewcommand\@advisor{#1}}
\newcommand\theadvisor{\@advisor}

%%%%%%%%%%%%%%%%%%%%%%%%%% Definiciones del año  %%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\@year{\ClassWarningNoLine{tesisITAM}{No year specified}}
\renewcommand\year[1]{\renewcommand\@year{#1}} %Report ya tiene un comando \year
\newcommand\theyear{\@year}


%%%%%%%%%%%%%%%%%%%%%%%%%% Comandos de titulo y autor %%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\thetitle{\@title}
\newcommand\theauthor{\@author}


%%%%%%%%%%%%%%%%%%%%%%%%%% Portada  %%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand\maketitle{%
	\InputIfFileExists {portada.tex} {\ClassInfo {tesisITAM} {Loaded portada.tex}} {\ClassError{tesisITAM}{No portada.tex found!}}
}