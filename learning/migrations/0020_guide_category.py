# Generated by Django 4.0.1 on 2022-01-22 19:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('learning', '0019_lesson_slug'),
    ]

    operations = [
        migrations.AddField(
            model_name='guide',
            name='category',
            field=models.CharField(default='pronouns', max_length=255),
            preserve_default=False,
        ),
    ]
