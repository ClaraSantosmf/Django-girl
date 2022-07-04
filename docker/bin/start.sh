mkdir -p /staticfiles
cp -Rf /app/static/* /staticfiles/
./manage.py runserver 0.0.0.0:8000

