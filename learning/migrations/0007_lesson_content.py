# Generated by Django 4.0.1 on 2022-01-18 07:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('learning', '0006_rename_blogpost_post'),
    ]

    operations = [
        migrations.AddField(
            model_name='lesson',
            name='content',
            field=models.TextField(default='content', max_length=10000),
        ),
    ]
