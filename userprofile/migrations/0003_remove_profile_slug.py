# Generated by Django 4.0.1 on 2022-01-21 00:22

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('userprofile', '0002_profile_slug'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='profile',
            name='slug',
        ),
    ]
