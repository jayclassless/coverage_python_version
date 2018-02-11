setup::
	@pipenv install --dev --skip-lock

lint::
	@pipenv run tidypy check

clean::
	@rm -rf dist build .cache

build:: clean
	@python setup.py sdist
	@python setup.py bdist_wheel

publish::
	@twine upload dist/*

