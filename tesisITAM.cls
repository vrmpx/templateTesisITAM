% Tesis ITAM CLASS -- version 0.1 (13 - Abr - 2015)
% Clase para las tesis del ITAM
% 
% 13 - Abr - 2015 	Victor Martinez 	victor.martinez (at) itam.mx
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tesisITAM}[2015/04/13 v0.01 Template para tesis ITAM]

%%%%%%%%%%%%%%%%%%%%%%%%% Options %%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{10pt}{
  \PassOptionsToClass{\CurrentOption}{report}
}
\DeclareOption{a4paper}{
  \PassOptionsToClass{\CurrentOption}{report}
}
\DeclareOption{oneside}{
  \PassOptionsToClass{\CurrentOption}{report}
}

%%%%%%%%%%%%%%%%%%%%%%%%% Tesis o Tesina %%%%%%%%%%%%%%%%%%%%%%%%%
\let\if@tesina\iffalse
\DeclareOption[tesina]{\let\if@tesina\iftrue}


%%%%%%%%%%%%%%%%%%%%%%%%% Babel options %%%%%%%%%%%%%%%%%%%%%%%%%
% Si cargan el paquete babel preferimos tabla a cuadro
\DeclareOption{es-tabla}{
  \PassOptionsToPackage{\CurrentOption}{babel}
}


%% Execute default options
\ExecuteOptions{10pt,a4paper,oneside}

% Extra opciones van a report class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}

%% Process given options
\ProcessOptions\relax

% Usamos como clase base el de report
\LoadClass{report}


% Paquetes requeridos
\RequirePackage{graphicx}

% Layout del texto
\parindent 0pt
\parskip 1ex
\renewcommand{\baselinestretch}{1.33}

%%%%%%%%%%%%%%%%%%%%%%%%% Abstract %%%%%%%%%%%%%%%%%%%%%%%%%
% Definimos un ambiente de nombre abstract que recibe un 
% parametro: el idioma del abstract. Esto permite cambiar entre
% ingles y español de una manera sencilla.
%
% Ejemplo:
%
%	En el encabezado utilizamos 
%		\usepackage[spanish, english]{babel}
%
%
% 	El resumen entonces se puede escribir como 
% 		\begin{abstract}[spanish]
%			Esto es un resumen
% 		\end{abstract}
%
% 		\begin{abstract}[english]
%			This is an abstract
% 		\end{abstract}
% 
\newenvironment{abstract}[1]{%
	 \bigskip%
	 \@ifpackagewith{babel}{#1}{\begin{otherlanguage}{#1}}{}
	 \begin{center}
	 	\bfseries\abstractname
	 \end{center}
}{%
	\@ifpackagewith{babel}{#1}{\end{otherlanguage}}{}\par\bigskip
}


%%%%%%%%%%%%%%%%%%%%%%%%% Definiciones para autor %%%%%%%%%%%%%%%%%%%%%%%%%

% Definimos el campo de \degree para la licenciatura / maestria / doctorado en algo
\newcommand\degree[1]{\renewcommand\@degree{#1}}
\newcommand\@degree{\@latex@error{No \noexpand\degree given}\@ehc}

% Definimos el campo de \advisor para el nombre del supervisor
\newcommand\advisor[1]{\renewcommand\@advisor{#1}}
\newcommand\@advisor{\@latex@error{No \noexpand\advisor given}\@ehc}

% Definimos el campo de \year para el año de publicacion
\newcommand\year[1]{\renewcommand\@year{#1}}
\newcommand\@year{\@latex@error{No \noexpand\year given}\@ehc}

% Definimos un comando para el lugar de publicación dentro del espacio de memoria protegido. Sin embargo un usuario avanzado de LaTeX podria redefinirlo, lo cual esta bien.
\newcommand\@place{MÉXICO, D.F.}

%%%%%%%%%%%%%%%%%%%%%%%%% Title page %%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{maketitle}{%
	\begin{center}
	\vspace{70pt}
		\begin{tabular}{c}
			\Large \emph{\textsc{Instituto Tecnológico Autónomo de México}}\\
			\hline
		\end{tabular}\\
		\vspace{25pt}
		\includegraphics[width=10cm,height=2.8cm]{LOGO_ITAM.jpg}\\
		\vspace{25pt}
		{\huge \@title}\\
		\vspace{5pt}
		% {\large \thesubtitle}\\
		\vspace{20 pt}
		\if@tesina{TESINA}\else{TESIS} \\
		\vspace{5pt}
		QUE PARA OBTENER EL TÍTULO DE \\
		\vspace{5pt}
		{\Large \@degree} \\
		\vspace{5pt}
		PRESENTA \\
		\vspace{5pt}
		{\Large \@author} \\
		\vfill
		ASESOR \\
		{\Large \@advisor} \\
		\vspace{5pt}
		\begin{tabular}{lcr}
			\@place & \hspace{60pt} & \@year
		\end{tabular}
	\end{center}
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%% Permisos page %%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{derechos}{%
	\chapter*{\phantom{Declaración}}
	``Con fundamento en los artículos 21 y 27 de la Ley Federal de Derecho de Autor y como titular de los derechos moral y patrimonial de la obra titulada ``\textbf{\@title}'', otorgo de manera gratuita y permanente al Instituto Tecnológico Autónomo de México y a la biblioteca Raúl Baillères Jr., autorización para que fijen la obra en cualquier medio, incluido el electrónico, y la divulguen entre sus usuarios, profesores, estudiantes o terceras personas, sin que pueda percibir por tal divulgación una prestación''
    \\
    \begin{center}
        \theauthor\\
        \vspace{4em}
        \rule[0mm]{60mm}{0.1mm}\\
        Fecha\\
        \vspace{3em}
        \rule[0mm]{60mm}{0.1mm}\\
        Firma\\
    \end{center}
}


