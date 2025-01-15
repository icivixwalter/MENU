@REM  cd.. devi posizionarti su git_desktop
CD c:\CASA\LINGUAGGI\ACCESS\PROGETTI_MDB\MSYS_OGGETTI\MENU\

dir 

@REM  fai un controllo con status, poi aggiungi con add tutto l'albero + il comimit e il push
git status

ECHO pausa di 3 secondi per il controllo
@TIMEOUT /T 3 /NOBREAK



@CLS
@ECHO CICLO FOR I E II CASO PER LA GESTIONE DELLA DATA
@ECHO ========================================================================================================================

:----------------------------CICLO FOR I CASO per la gestione della data con le sottostringhe ma aggiunge lo 0 se <10
for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate set MyDate=%%x
set today=%MyDate:~0,4%_%MyDate:~4,2%_%MyDate:~6,2%
echo %today%


					@REM SOSPENSIONE TEMPO IMPOSTATA CON T
					@REM ---->	timeout /t 2 /nobreak > NUL
					@REM ---->	
					REM @TIMEOUT /T 2 /NOBREAK
					@REM Pause

:----------------------------CICLO FOR  II CASO cicolo for per per la data AAA MM GG senza sottostringhe


ECHO.
ECHO. 
git add .
git commit -m "%today%_aggiornamento_MENU"


ECHO. 
ECHO. 
@ECHO ========================================================================================================================


@rem pausa di 20 secondi per consentire il commit

@REM 01)
@REM sospensione per 1 secondo con crononometro 
@REM ---->	timeout /t 2 /nobreak > NUL
@REM ---->
ECHO
ECHO
ECHO  pausa di 10 secondi per consentire il commit
ECHO
@TIMEOUT /T 10 /NOBREAK

git push


@rem pausa di 5 secondi per il controllo
ECHO

ECHO pausa di 5 secondi per il controllo
@TIMEOUT /T 5 /NOBREAK
