"""Xonsh activate script for virtualenv"""
from xonsh.tools import get_sep as _get_sep

def _deactivate(args):
    if "pydoc" in aliases:
        del aliases["pydoc"]

    if ${...}.get("_OLD_VIRTUAL_PATH", ""):
        $PATH = $_OLD_VIRTUAL_PATH
        del $_OLD_VIRTUAL_PATH

    if ${...}.get("_OLD_VIRTUAL_PYTHONHOME", ""):
        $PYTHONHOME = $_OLD_VIRTUAL_PYTHONHOME
        del $_OLD_VIRTUAL_PYTHONHOME

    if "VIRTUAL_ENV" in ${...}:
        del $VIRTUAL_ENV

    if "VIRTUAL_ENV_PROMPT" in ${...}:
        del $VIRTUAL_ENV_PROMPT

    if "nondestructive" not in args:
        # Self destruct!
        del aliases["deactivate"]


# unset irrelevant variables
_deactivate(["nondestructive"])
aliases["deactivate"] = _deactivate

$VIRTUAL_ENV = r"C:\Users\DANIEL~1\Dropbox\INGENI~1\03_SEM~1\CUC912~1\GRAFIC~1"

$_OLD_VIRTUAL_PATH = $PATH
$PATH = $PATH[:]
$PATH.add($VIRTUAL_ENV + _get_sep() + "Scripts", front=True, replace=True)

if ${...}.get("PYTHONHOME", ""):
    # unset PYTHONHOME if set
    $_OLD_VIRTUAL_PYTHONHOME = $PYTHONHOME
    del $PYTHONHOME

$VIRTUAL_ENV_PROMPT = ""
if not $VIRTUAL_ENV_PROMPT:
    del $VIRTUAL_ENV_PROMPT

aliases["pydoc"] = ["python", "-m", "pydoc"]
