::======================================================
:: PYTHON BUILD & PUBLISH TO TEST PYPI
::======================================================
@ECHO OFF

SET /P confirm=Confirm build and publish (y/n): 
if %confirm%==y (
	cmd /c python -m build && twine upload -u __token__ -p %PYPI_TOKEN% --repository-url https://test.pypi.org/legacy/ --skip-existing dist/*
)
