# Generated by Django 4.0.1 on 2022-01-21 00:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('learning', '0018_guide_slug'),
    ]

    operations = [
        migrations.AddField(
            model_name='lesson',
            name='slug',
            field=models.SlugField(default='sayin2', unique=True),
            preserve_default=False,
        ),
    ]