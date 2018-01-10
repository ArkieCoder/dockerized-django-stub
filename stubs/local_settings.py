DATABASES = {
  'default': {
    'ENGINE': 'django.db.backends.postgresql',
    'NAME': 'postgres',
    'USER': 'postgres',
    'HOST': 'db',
    'PORT': 5432,
  }
}

ALLOWED_HOSTS = ['*']
PROJECT_ROOT = BASE_DIR
STATIC_ROOT = os.path.join(PROJECT_ROOT, 'static')

